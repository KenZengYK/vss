object frmCarte_Chaseitems: TfrmCarte_Chaseitems
  Left = 0
  Top = 0
  Caption = #29289#26009#34892#21205'('#36861#26009'/'#35036#26009')'
  ClientHeight = 641
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 72
    Width = 1006
    Height = 1
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 114
    ExplicitWidth = 801
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 335
    Width = 1006
    Height = 1
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 164
    ExplicitWidth = 801
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 72
    Align = alTop
    TabOrder = 0
    object RzBackground3: TRzBackground
      Left = 1
      Top = 1
      Width = 1004
      Height = 70
      Active = True
      Align = alClient
      GradientColorStart = 14216405
      GradientColorStop = 16776176
      GradientDirection = gdVerticalEnd
      ImageStyle = isCenter
      ShowGradient = True
      ShowImage = False
      ShowTexture = False
      ExplicitHeight = 67
    end
    object Label1: TLabel
      Left = 16
      Top = 15
      Width = 51
      Height = 13
      Caption = #29289#26009#31278#39006' '
    end
    object Label2: TLabel
      Left = 157
      Top = 15
      Width = 51
      Height = 13
      Caption = #29289#26009#32232#34399' '
    end
    object Label3: TLabel
      Left = 338
      Top = 15
      Width = 63
      Height = 13
      Caption = #25505#36092#21934#21934#34399' '
    end
    object Label4: TLabel
      Left = 490
      Top = 15
      Width = 63
      Height = 13
      Caption = #20379#25033#21830#32232#34399' '
    end
    object Label5: TLabel
      Left = 16
      Top = 42
      Width = 51
      Height = 13
      Caption = #25104#21697#38991#33394' '
    end
    object Label6: TLabel
      Left = 130
      Top = 42
      Width = 51
      Height = 13
      Caption = #29289#26009#38991#33394' '
    end
    object Label7: TLabel
      Left = 247
      Top = 42
      Width = 51
      Height = 13
      Caption = #25152#38656#32317#25976' '
    end
    object Label8: TLabel
      Left = 420
      Top = 42
      Width = 51
      Height = 13
      Caption = #24050#25910#32317#25976' '
    end
    object Label9: TLabel
      Left = 534
      Top = 42
      Width = 27
      Height = 13
      Caption = #39192#25976' '
    end
    object Label10: TLabel
      Left = 713
      Top = 45
      Width = 94
      Height = 13
      Caption = #36861#26009'(C) /  '#35036#26009'(R) '
    end
    object Label13: TLabel
      Left = 837
      Top = 17
      Width = 39
      Height = 13
      Caption = #24037#31243#34399' '
    end
    object DBText1: TDBText
      Left = 880
      Top = 15
      Width = 89
      Height = 17
      DataField = 'projectno'
      DataSource = frmCarte_Ordprocessing.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 623
      Top = 42
      Width = 27
      Height = 13
      Caption = #21934#20301' '
    end
    object Label15: TLabel
      Left = 644
      Top = 15
      Width = 75
      Height = 13
      Caption = #29289#26009#25152#38656#26178#38480' '
    end
    object Label16: TLabel
      Left = 347
      Top = 42
      Width = 19
      Height = 13
      Caption = '+/- '
    end
    object DBEdit1: TDBEdit
      Left = 68
      Top = 15
      Width = 60
      Height = 21
      DataField = 'item_des'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 213
      Top = 15
      Width = 97
      Height = 21
      DataField = 'item_code'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 402
      Top = 15
      Width = 61
      Height = 21
      DataField = 'item_po'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 554
      Top = 15
      Width = 65
      Height = 21
      DataField = 'item_vndr'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 68
      Top = 42
      Width = 41
      Height = 21
      DataField = 'item_scolor'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 183
      Top = 42
      Width = 41
      Height = 21
      DataField = 'item_icolor'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 298
      Top = 42
      Width = 41
      Height = 21
      DataField = 'item_tqty'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 472
      Top = 42
      Width = 41
      Height = 21
      DataField = 'item_rqty'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 562
      Top = 42
      Width = 41
      Height = 21
      DataField = 'item_bqty'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 8
    end
    object DBComboBox1: TDBComboBox
      Left = 809
      Top = 42
      Width = 49
      Height = 21
      DataField = 'item_cr'
      DataSource = DataSource1
      Items.Strings = (
        'C'
        'R')
      TabOrder = 9
    end
    object DBEdit12: TDBEdit
      Left = 651
      Top = 42
      Width = 41
      Height = 21
      DataField = 'item_unit'
      DataSource = DataSource1
      TabOrder = 10
    end
    object DBDateEdit1: TDBDateEdit
      Left = 719
      Top = 13
      Width = 83
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'item_dt'
      DataSource = DataSource1
      NumGlyphs = 2
      TabOrder = 11
    end
    object DBEdit13: TDBEdit
      Left = 367
      Top = 42
      Width = 35
      Height = 21
      DataField = 'item_tqty_a'
      DataSource = DataSource1
      TabOrder = 12
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1006
    Height = 262
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 236
    object RzBackground1: TRzBackground
      Left = 1
      Top = 1
      Width = 1004
      Height = 260
      Active = True
      Align = alClient
      GradientColorStart = 14216405
      GradientColorStop = 16776176
      GradientDirection = gdVerticalEnd
      ImageStyle = isCenter
      ShowGradient = True
      ShowImage = False
      ShowTexture = False
      ExplicitLeft = 40
      ExplicitTop = 8
      ExplicitWidth = 200
      ExplicitHeight = 100
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 146
      Height = 51
      Caption = #29289#26009#25910#26009#27425#25976
      TabOrder = 0
      object Label11: TLabel
        Left = 8
        Top = 23
        Width = 27
        Height = 13
        Caption = #21407#23450' '
      end
      object Label12: TLabel
        Left = 79
        Top = 23
        Width = 33
        Height = 13
        Caption = #20462#23450'* '
      end
      object DBEdit10: TDBEdit
        Left = 35
        Top = 23
        Width = 26
        Height = 21
        DataField = 'item_rcnt_o'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit11: TDBEdit
        Left = 113
        Top = 23
        Width = 26
        Height = 21
        DataField = 'item_rcnt_a'
        DataSource = DataSource1
        TabOrder = 1
      end
    end
    object GroupBox4: TGroupBox
      Left = 176
      Top = 6
      Width = 332
      Height = 248
      Caption = #35336#21123#25910#36008
      TabOrder = 2
      object jc01: TLabel
        Left = 11
        Top = 21
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object jr01: TLabel
        Left = 73
        Top = 21
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object js01: TLabel
        Left = 185
        Top = 21
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object jc02: TLabel
        Left = 11
        Top = 46
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object jr02: TLabel
        Left = 73
        Top = 46
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object js02: TLabel
        Left = 185
        Top = 46
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object jc03: TLabel
        Left = 11
        Top = 71
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object jr03: TLabel
        Left = 73
        Top = 71
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object js03: TLabel
        Left = 185
        Top = 71
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object jc04: TLabel
        Left = 11
        Top = 96
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object jr04: TLabel
        Left = 73
        Top = 96
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object js04: TLabel
        Left = 185
        Top = 96
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object jc05: TLabel
        Left = 11
        Top = 121
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object jr05: TLabel
        Left = 73
        Top = 121
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object js05: TLabel
        Left = 185
        Top = 121
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object jc06: TLabel
        Left = 11
        Top = 146
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object jr06: TLabel
        Left = 73
        Top = 146
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object js06: TLabel
        Left = 185
        Top = 146
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object jc07: TLabel
        Left = 11
        Top = 171
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object jr07: TLabel
        Left = 73
        Top = 171
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object js07: TLabel
        Left = 185
        Top = 171
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object jc08: TLabel
        Left = 11
        Top = 196
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object jr08: TLabel
        Left = 73
        Top = 196
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object js08: TLabel
        Left = 185
        Top = 196
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object jc09: TLabel
        Left = 11
        Top = 221
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object jr09: TLabel
        Left = 73
        Top = 221
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object js09: TLabel
        Left = 185
        Top = 221
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object jsa01: TLabel
        Left = 257
        Top = 21
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object jsa02: TLabel
        Left = 257
        Top = 46
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object jsa03: TLabel
        Left = 257
        Top = 71
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object jsa04: TLabel
        Left = 257
        Top = 96
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object jsa05: TLabel
        Left = 257
        Top = 121
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object jsa06: TLabel
        Left = 257
        Top = 146
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object jsa07: TLabel
        Left = 257
        Top = 171
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object jsa08: TLabel
        Left = 257
        Top = 196
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object jsa09: TLabel
        Left = 257
        Top = 221
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object jce01: TDBEdit
        Left = 36
        Top = 21
        Width = 25
        Height = 21
        DataField = 'item_r1_jh'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 0
      end
      object jre01: TDBDateEdit
        Left = 98
        Top = 21
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r1dt_jh'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 1
      end
      object jse01: TDBEdit
        Left = 210
        Top = 21
        Width = 41
        Height = 21
        DataField = 'item_r1qty_jh'
        DataSource = DataSource1
        TabOrder = 2
      end
      object jce02: TDBEdit
        Left = 36
        Top = 46
        Width = 25
        Height = 21
        DataField = 'item_r2_jh'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 3
      end
      object jre02: TDBDateEdit
        Left = 98
        Top = 46
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r2dt_jh'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 4
      end
      object jse02: TDBEdit
        Left = 210
        Top = 46
        Width = 41
        Height = 21
        DataField = 'item_r2qty_jh'
        DataSource = DataSource1
        TabOrder = 5
      end
      object jce03: TDBEdit
        Left = 36
        Top = 71
        Width = 25
        Height = 21
        DataField = 'item_r3_jh'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 6
      end
      object jre03: TDBDateEdit
        Left = 98
        Top = 71
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r3dt_jh'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 7
      end
      object jse03: TDBEdit
        Left = 210
        Top = 71
        Width = 41
        Height = 21
        DataField = 'item_r3qty_jh'
        DataSource = DataSource1
        TabOrder = 8
      end
      object jce04: TDBEdit
        Left = 36
        Top = 96
        Width = 25
        Height = 21
        DataField = 'item_r4_jh'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 9
      end
      object jre04: TDBDateEdit
        Left = 98
        Top = 96
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r4dt_jh'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 10
      end
      object jse04: TDBEdit
        Left = 210
        Top = 96
        Width = 41
        Height = 21
        DataField = 'item_r4qty_jh'
        DataSource = DataSource1
        TabOrder = 11
      end
      object jce05: TDBEdit
        Left = 36
        Top = 121
        Width = 25
        Height = 21
        DataField = 'item_r5_jh'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 12
      end
      object jre05: TDBDateEdit
        Left = 98
        Top = 121
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r5dt_jh'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 13
      end
      object jse05: TDBEdit
        Left = 210
        Top = 121
        Width = 41
        Height = 21
        DataField = 'item_r5qty_jh'
        DataSource = DataSource1
        TabOrder = 14
      end
      object jce06: TDBEdit
        Left = 36
        Top = 146
        Width = 25
        Height = 21
        DataField = 'item_r6_jh'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 15
      end
      object jre06: TDBDateEdit
        Left = 98
        Top = 146
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r6dt_jh'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 16
      end
      object jse06: TDBEdit
        Left = 210
        Top = 146
        Width = 41
        Height = 21
        DataField = 'item_r6qty_jh'
        DataSource = DataSource1
        TabOrder = 17
      end
      object jce07: TDBEdit
        Left = 36
        Top = 171
        Width = 25
        Height = 21
        DataField = 'item_r7_jh'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 18
      end
      object jre07: TDBDateEdit
        Left = 98
        Top = 171
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r7dt_jh'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 19
      end
      object jse07: TDBEdit
        Left = 210
        Top = 171
        Width = 41
        Height = 21
        DataField = 'item_r7qty_jh'
        DataSource = DataSource1
        TabOrder = 20
      end
      object jce08: TDBEdit
        Left = 36
        Top = 196
        Width = 25
        Height = 21
        DataField = 'item_r8_jh'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 21
      end
      object jre08: TDBDateEdit
        Left = 98
        Top = 196
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r8dt_jh'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 22
      end
      object jse08: TDBEdit
        Left = 210
        Top = 196
        Width = 41
        Height = 21
        DataField = 'item_r8qty_jh'
        DataSource = DataSource1
        TabOrder = 23
      end
      object jce09: TDBEdit
        Left = 36
        Top = 221
        Width = 25
        Height = 21
        DataField = 'item_r9_jh'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 24
      end
      object jre09: TDBDateEdit
        Left = 98
        Top = 221
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r9dt_jh'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 25
      end
      object jse09: TDBEdit
        Left = 210
        Top = 221
        Width = 41
        Height = 21
        DataField = 'item_r9qty_jh'
        DataSource = DataSource1
        TabOrder = 26
      end
      object jsae01: TDBEdit
        Left = 277
        Top = 21
        Width = 41
        Height = 21
        DataField = 'item_r1qty_jh_a'
        DataSource = DataSource1
        TabOrder = 27
      end
      object jsae02: TDBEdit
        Left = 277
        Top = 46
        Width = 41
        Height = 21
        DataField = 'item_r2qty_jh_a'
        DataSource = DataSource1
        TabOrder = 28
      end
      object jsae03: TDBEdit
        Left = 277
        Top = 71
        Width = 41
        Height = 21
        DataField = 'item_r3qty_jh_a'
        DataSource = DataSource1
        TabOrder = 29
      end
      object jsae04: TDBEdit
        Left = 277
        Top = 96
        Width = 41
        Height = 21
        DataField = 'item_r4qty_jh_a'
        DataSource = DataSource1
        TabOrder = 30
      end
      object jsae05: TDBEdit
        Left = 277
        Top = 121
        Width = 41
        Height = 21
        DataField = 'item_r5qty_jh_a'
        DataSource = DataSource1
        TabOrder = 31
      end
      object jsae06: TDBEdit
        Left = 277
        Top = 146
        Width = 41
        Height = 21
        DataField = 'item_r6qty_jh_a'
        DataSource = DataSource1
        TabOrder = 32
      end
      object jsae07: TDBEdit
        Left = 277
        Top = 171
        Width = 41
        Height = 21
        DataField = 'item_r7qty_jh_a'
        DataSource = DataSource1
        TabOrder = 33
      end
      object jsae08: TDBEdit
        Left = 277
        Top = 196
        Width = 41
        Height = 21
        DataField = 'item_r8qty_jh_a'
        DataSource = DataSource1
        TabOrder = 34
      end
      object jsae09: TDBEdit
        Left = 277
        Top = 221
        Width = 41
        Height = 21
        DataField = 'item_r9qty_jh_a'
        DataSource = DataSource1
        TabOrder = 35
      end
    end
    object GroupBox3: TGroupBox
      Left = 514
      Top = 7
      Width = 332
      Height = 248
      Caption = #23526#38555#25910#36008
      TabOrder = 1
      object c01: TLabel
        Left = 11
        Top = 21
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object r01: TLabel
        Left = 73
        Top = 21
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object s01: TLabel
        Left = 185
        Top = 21
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object c02: TLabel
        Left = 11
        Top = 46
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object r02: TLabel
        Left = 73
        Top = 46
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object s02: TLabel
        Left = 185
        Top = 46
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object c03: TLabel
        Left = 11
        Top = 71
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object r03: TLabel
        Left = 73
        Top = 71
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object s03: TLabel
        Left = 185
        Top = 71
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object c04: TLabel
        Left = 11
        Top = 96
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object r04: TLabel
        Left = 73
        Top = 96
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object s04: TLabel
        Left = 185
        Top = 96
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object c05: TLabel
        Left = 11
        Top = 121
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object r05: TLabel
        Left = 73
        Top = 121
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object s05: TLabel
        Left = 185
        Top = 121
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object c06: TLabel
        Left = 11
        Top = 146
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object r06: TLabel
        Left = 73
        Top = 146
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object s06: TLabel
        Left = 185
        Top = 146
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object c07: TLabel
        Left = 11
        Top = 171
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object r07: TLabel
        Left = 73
        Top = 171
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object s07: TLabel
        Left = 185
        Top = 171
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object c08: TLabel
        Left = 11
        Top = 196
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object r08: TLabel
        Left = 73
        Top = 196
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object s08: TLabel
        Left = 185
        Top = 196
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object c09: TLabel
        Left = 11
        Top = 221
        Width = 27
        Height = 13
        Caption = #24207#21015' '
      end
      object r09: TLabel
        Left = 73
        Top = 221
        Width = 27
        Height = 13
        Caption = #26085#26399' '
      end
      object s09: TLabel
        Left = 185
        Top = 221
        Width = 27
        Height = 13
        Caption = #25976#37327' '
      end
      object sa01: TLabel
        Left = 257
        Top = 21
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object sa02: TLabel
        Left = 257
        Top = 46
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object sa03: TLabel
        Left = 257
        Top = 71
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object sa04: TLabel
        Left = 257
        Top = 96
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object sa05: TLabel
        Left = 257
        Top = 121
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object sa06: TLabel
        Left = 257
        Top = 146
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object sa07: TLabel
        Left = 257
        Top = 171
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object sa08: TLabel
        Left = 257
        Top = 196
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object sa09: TLabel
        Left = 257
        Top = 221
        Width = 19
        Height = 13
        Caption = '+/- '
      end
      object ce01: TDBEdit
        Left = 36
        Top = 21
        Width = 25
        Height = 21
        DataField = 'item_r1'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 0
      end
      object re01: TDBDateEdit
        Left = 98
        Top = 21
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r1dt'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 1
      end
      object se01: TDBEdit
        Left = 210
        Top = 21
        Width = 41
        Height = 21
        DataField = 'item_r1qty'
        DataSource = DataSource1
        TabOrder = 2
      end
      object ce02: TDBEdit
        Left = 36
        Top = 46
        Width = 25
        Height = 21
        DataField = 'item_r2'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 3
      end
      object re02: TDBDateEdit
        Left = 98
        Top = 46
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r2dt'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 4
      end
      object se02: TDBEdit
        Left = 210
        Top = 46
        Width = 41
        Height = 21
        DataField = 'item_r2qty'
        DataSource = DataSource1
        TabOrder = 5
      end
      object ce03: TDBEdit
        Left = 36
        Top = 71
        Width = 25
        Height = 21
        DataField = 'item_r3'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 6
      end
      object re03: TDBDateEdit
        Left = 98
        Top = 71
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r3dt'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 7
      end
      object se03: TDBEdit
        Left = 210
        Top = 71
        Width = 41
        Height = 21
        DataField = 'item_r3qty'
        DataSource = DataSource1
        TabOrder = 8
      end
      object ce04: TDBEdit
        Left = 36
        Top = 96
        Width = 25
        Height = 21
        DataField = 'item_r4'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 9
      end
      object re04: TDBDateEdit
        Left = 98
        Top = 96
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r4dt'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 10
      end
      object se04: TDBEdit
        Left = 210
        Top = 96
        Width = 41
        Height = 21
        DataField = 'item_r4qty'
        DataSource = DataSource1
        TabOrder = 11
      end
      object ce05: TDBEdit
        Left = 36
        Top = 121
        Width = 25
        Height = 21
        DataField = 'item_r5'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 12
      end
      object re05: TDBDateEdit
        Left = 98
        Top = 121
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r5dt'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 13
      end
      object se05: TDBEdit
        Left = 210
        Top = 121
        Width = 41
        Height = 21
        DataField = 'item_r5qty'
        DataSource = DataSource1
        TabOrder = 14
      end
      object ce06: TDBEdit
        Left = 36
        Top = 146
        Width = 25
        Height = 21
        DataField = 'item_r6'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 15
      end
      object re06: TDBDateEdit
        Left = 98
        Top = 146
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r6dt'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 16
      end
      object se06: TDBEdit
        Left = 210
        Top = 146
        Width = 41
        Height = 21
        DataField = 'item_r6qty'
        DataSource = DataSource1
        TabOrder = 17
      end
      object ce07: TDBEdit
        Left = 36
        Top = 171
        Width = 25
        Height = 21
        DataField = 'item_r7'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 18
      end
      object re07: TDBDateEdit
        Left = 98
        Top = 171
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r7dt'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 19
      end
      object se07: TDBEdit
        Left = 210
        Top = 171
        Width = 41
        Height = 21
        DataField = 'item_r7qty'
        DataSource = DataSource1
        TabOrder = 20
      end
      object ce08: TDBEdit
        Left = 36
        Top = 196
        Width = 25
        Height = 21
        DataField = 'item_r8'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 21
      end
      object re08: TDBDateEdit
        Left = 98
        Top = 196
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r8dt'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 22
      end
      object se08: TDBEdit
        Left = 210
        Top = 196
        Width = 41
        Height = 21
        DataField = 'item_r8qty'
        DataSource = DataSource1
        TabOrder = 23
      end
      object ce09: TDBEdit
        Left = 36
        Top = 221
        Width = 25
        Height = 21
        DataField = 'item_r9'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 24
      end
      object re09: TDBDateEdit
        Left = 98
        Top = 221
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'item_r9dt'
        DataSource = DataSource1
        NumGlyphs = 2
        TabOrder = 25
      end
      object se09: TDBEdit
        Left = 210
        Top = 221
        Width = 41
        Height = 21
        DataField = 'item_r9qty'
        DataSource = DataSource1
        TabOrder = 26
      end
      object sae01: TDBEdit
        Left = 277
        Top = 21
        Width = 41
        Height = 21
        DataField = 'item_r1qty_a'
        DataSource = DataSource1
        TabOrder = 27
      end
      object sae02: TDBEdit
        Left = 277
        Top = 46
        Width = 41
        Height = 21
        DataField = 'item_r2qty_a'
        DataSource = DataSource1
        TabOrder = 28
      end
      object sae03: TDBEdit
        Left = 277
        Top = 71
        Width = 41
        Height = 21
        DataField = 'item_r3qty_a'
        DataSource = DataSource1
        TabOrder = 29
      end
      object sae04: TDBEdit
        Left = 277
        Top = 96
        Width = 41
        Height = 21
        DataField = 'item_r4qty_a'
        DataSource = DataSource1
        TabOrder = 30
      end
      object sae05: TDBEdit
        Left = 277
        Top = 121
        Width = 41
        Height = 21
        DataField = 'item_r5qty_a'
        DataSource = DataSource1
        TabOrder = 31
      end
      object sae06: TDBEdit
        Left = 277
        Top = 146
        Width = 41
        Height = 21
        DataField = 'item_r6qty_a'
        DataSource = DataSource1
        TabOrder = 32
      end
      object sae07: TDBEdit
        Left = 277
        Top = 171
        Width = 41
        Height = 21
        DataField = 'item_r7qty_a'
        DataSource = DataSource1
        TabOrder = 33
      end
      object sae08: TDBEdit
        Left = 277
        Top = 196
        Width = 41
        Height = 21
        DataField = 'item_r8qty_a'
        DataSource = DataSource1
        TabOrder = 34
      end
      object sae09: TDBEdit
        Left = 277
        Top = 221
        Width = 41
        Height = 21
        DataField = 'item_r9qty_a'
        DataSource = DataSource1
        TabOrder = 35
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 336
    Width = 1006
    Height = 305
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 310
    object RzBackground2: TRzBackground
      Left = 1
      Top = 1
      Width = 1004
      Height = 262
      Active = True
      Align = alClient
      GradientColorStart = 14216405
      GradientColorStop = 16776176
      GradientDirection = gdVerticalEnd
      ImageStyle = isCenter
      ShowGradient = True
      ShowImage = False
      ShowTexture = False
      ExplicitLeft = 40
      ExplicitTop = 8
      ExplicitWidth = 200
      ExplicitHeight = 100
    end
    object xl01: TLabel
      Left = 207
      Top = 13
      Width = 27
      Height = 13
      Caption = #24207#21015' '
    end
    object zh01: TLabel
      Left = 273
      Top = 13
      Width = 27
      Height = 13
      Caption = #35468#34399' '
    end
    object ly01: TLabel
      Left = 362
      Top = 13
      Width = 69
      Height = 13
      Caption = #38626#24288#26399'  '#21407#23450' '
    end
    object lx01: TLabel
      Left = 524
      Top = 13
      Width = 33
      Height = 13
      Caption = #20462#23450'* '
    end
    object ap01: TLabel
      Left = 651
      Top = 13
      Width = 55
      Height = 13
      Caption = #23433#25490'(PDN) '
    end
    object zs01: TLabel
      Left = 801
      Top = 13
      Width = 75
      Height = 13
      Caption = #27492#35468#25152#38656#25976#37327' '
    end
    object xl02: TLabel
      Left = 207
      Top = 38
      Width = 27
      Height = 13
      Caption = #24207#21015' '
    end
    object zh02: TLabel
      Left = 273
      Top = 38
      Width = 27
      Height = 13
      Caption = #35468#34399' '
    end
    object ly02: TLabel
      Left = 362
      Top = 38
      Width = 69
      Height = 13
      Caption = #38626#24288#26399'  '#21407#23450' '
    end
    object lx02: TLabel
      Left = 524
      Top = 38
      Width = 33
      Height = 13
      Caption = #20462#23450'* '
    end
    object ap02: TLabel
      Left = 651
      Top = 38
      Width = 55
      Height = 13
      Caption = #23433#25490'(PDN) '
    end
    object zs02: TLabel
      Left = 801
      Top = 38
      Width = 75
      Height = 13
      Caption = #27492#35468#25152#38656#25976#37327' '
    end
    object xl03: TLabel
      Left = 207
      Top = 63
      Width = 27
      Height = 13
      Caption = #24207#21015' '
    end
    object zh03: TLabel
      Left = 273
      Top = 63
      Width = 27
      Height = 13
      Caption = #35468#34399' '
    end
    object ly03: TLabel
      Left = 362
      Top = 63
      Width = 69
      Height = 13
      Caption = #38626#24288#26399'  '#21407#23450' '
    end
    object lx03: TLabel
      Left = 524
      Top = 63
      Width = 33
      Height = 13
      Caption = #20462#23450'* '
    end
    object ap03: TLabel
      Left = 651
      Top = 63
      Width = 55
      Height = 13
      Caption = #23433#25490'(PDN) '
    end
    object zs03: TLabel
      Left = 801
      Top = 63
      Width = 75
      Height = 13
      Caption = #27492#35468#25152#38656#25976#37327' '
    end
    object xl04: TLabel
      Left = 207
      Top = 88
      Width = 27
      Height = 13
      Caption = #24207#21015' '
    end
    object zh04: TLabel
      Left = 273
      Top = 88
      Width = 27
      Height = 13
      Caption = #35468#34399' '
    end
    object ly04: TLabel
      Left = 362
      Top = 88
      Width = 69
      Height = 13
      Caption = #38626#24288#26399'  '#21407#23450' '
    end
    object lx04: TLabel
      Left = 524
      Top = 88
      Width = 33
      Height = 13
      Caption = #20462#23450'* '
    end
    object ap04: TLabel
      Left = 651
      Top = 88
      Width = 55
      Height = 13
      Caption = #23433#25490'(PDN) '
    end
    object zs04: TLabel
      Left = 801
      Top = 88
      Width = 75
      Height = 13
      Caption = #27492#35468#25152#38656#25976#37327' '
    end
    object xl05: TLabel
      Left = 207
      Top = 113
      Width = 27
      Height = 13
      Caption = #24207#21015' '
    end
    object zh05: TLabel
      Left = 273
      Top = 113
      Width = 27
      Height = 13
      Caption = #35468#34399' '
    end
    object ly05: TLabel
      Left = 362
      Top = 113
      Width = 69
      Height = 13
      Caption = #38626#24288#26399'  '#21407#23450' '
    end
    object lx05: TLabel
      Left = 524
      Top = 113
      Width = 33
      Height = 13
      Caption = #20462#23450'* '
    end
    object ap05: TLabel
      Left = 651
      Top = 113
      Width = 55
      Height = 13
      Caption = #23433#25490'(PDN) '
    end
    object zs05: TLabel
      Left = 801
      Top = 113
      Width = 75
      Height = 13
      Caption = #27492#35468#25152#38656#25976#37327' '
    end
    object xl06: TLabel
      Left = 207
      Top = 138
      Width = 27
      Height = 13
      Caption = #24207#21015' '
    end
    object zh06: TLabel
      Left = 273
      Top = 138
      Width = 27
      Height = 13
      Caption = #35468#34399' '
    end
    object ly06: TLabel
      Left = 362
      Top = 138
      Width = 69
      Height = 13
      Caption = #38626#24288#26399'  '#21407#23450' '
    end
    object lx06: TLabel
      Left = 524
      Top = 138
      Width = 33
      Height = 13
      Caption = #20462#23450'* '
    end
    object ap06: TLabel
      Left = 651
      Top = 138
      Width = 55
      Height = 13
      Caption = #23433#25490'(PDN) '
    end
    object zs06: TLabel
      Left = 801
      Top = 138
      Width = 75
      Height = 13
      Caption = #27492#35468#25152#38656#25976#37327' '
    end
    object xl07: TLabel
      Left = 207
      Top = 163
      Width = 27
      Height = 13
      Caption = #24207#21015' '
    end
    object zh07: TLabel
      Left = 273
      Top = 163
      Width = 27
      Height = 13
      Caption = #35468#34399' '
    end
    object ly07: TLabel
      Left = 362
      Top = 163
      Width = 69
      Height = 13
      Caption = #38626#24288#26399'  '#21407#23450' '
    end
    object lx07: TLabel
      Left = 524
      Top = 163
      Width = 33
      Height = 13
      Caption = #20462#23450'* '
    end
    object ap07: TLabel
      Left = 651
      Top = 163
      Width = 55
      Height = 13
      Caption = #23433#25490'(PDN) '
    end
    object zs07: TLabel
      Left = 801
      Top = 163
      Width = 75
      Height = 13
      Caption = #27492#35468#25152#38656#25976#37327' '
    end
    object xl08: TLabel
      Left = 207
      Top = 188
      Width = 27
      Height = 13
      Caption = #24207#21015' '
    end
    object zh08: TLabel
      Left = 273
      Top = 188
      Width = 27
      Height = 13
      Caption = #35468#34399' '
    end
    object ly08: TLabel
      Left = 362
      Top = 188
      Width = 69
      Height = 13
      Caption = #38626#24288#26399'  '#21407#23450' '
    end
    object lx08: TLabel
      Left = 524
      Top = 188
      Width = 33
      Height = 13
      Caption = #20462#23450'* '
    end
    object ap08: TLabel
      Left = 651
      Top = 188
      Width = 55
      Height = 13
      Caption = #23433#25490'(PDN) '
    end
    object zs08: TLabel
      Left = 801
      Top = 188
      Width = 75
      Height = 13
      Caption = #27492#35468#25152#38656#25976#37327' '
    end
    object xl09: TLabel
      Left = 207
      Top = 213
      Width = 27
      Height = 13
      Caption = #24207#21015' '
    end
    object zh09: TLabel
      Left = 273
      Top = 213
      Width = 27
      Height = 13
      Caption = #35468#34399' '
    end
    object ly09: TLabel
      Left = 362
      Top = 213
      Width = 69
      Height = 13
      Caption = #38626#24288#26399'  '#21407#23450' '
    end
    object lx09: TLabel
      Left = 524
      Top = 213
      Width = 33
      Height = 13
      Caption = #20462#23450'* '
    end
    object ap09: TLabel
      Left = 651
      Top = 213
      Width = 55
      Height = 13
      Caption = #23433#25490'(PDN) '
    end
    object zs09: TLabel
      Left = 801
      Top = 213
      Width = 75
      Height = 13
      Caption = #27492#35468#25152#38656#25976#37327' '
    end
    object xl10: TLabel
      Left = 207
      Top = 238
      Width = 27
      Height = 13
      Caption = #24207#21015' '
    end
    object zh10: TLabel
      Left = 273
      Top = 238
      Width = 27
      Height = 13
      Caption = #35468#34399' '
    end
    object ly10: TLabel
      Left = 362
      Top = 238
      Width = 69
      Height = 13
      Caption = #38626#24288#26399'  '#21407#23450' '
    end
    object lx10: TLabel
      Left = 524
      Top = 238
      Width = 33
      Height = 13
      Caption = #20462#23450'* '
    end
    object ap10: TLabel
      Left = 651
      Top = 238
      Width = 55
      Height = 13
      Caption = #23433#25490'(PDN) '
    end
    object zs10: TLabel
      Left = 801
      Top = 238
      Width = 75
      Height = 13
      Caption = #27492#35468#25152#38656#25976#37327' '
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 8
      Width = 176
      Height = 51
      Caption = #21463#24433#38911#20043#35468#34399#25976
      TabOrder = 0
      object Label40: TLabel
        Left = 8
        Top = 23
        Width = 27
        Height = 13
        Caption = #21407#23450' '
      end
      object Label41: TLabel
        Left = 79
        Top = 23
        Width = 33
        Height = 13
        Caption = #20462#23450'* '
      end
      object SpeedButton1: TSpeedButton
        Left = 147
        Top = 22
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
        OnClick = SpeedButton1Click
      end
      object DBEdit30: TDBEdit
        Left = 35
        Top = 23
        Width = 26
        Height = 21
        DataField = 'kc_cnt_o'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit31: TDBEdit
        Left = 113
        Top = 23
        Width = 26
        Height = 21
        DataField = 'kc_cnt_a'
        DataSource = DataSource1
        TabOrder = 1
      end
    end
    object xle01: TDBEdit
      Left = 232
      Top = 13
      Width = 25
      Height = 21
      DataField = 'kc_r1'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object zhe01: TDBEdit
      Left = 298
      Top = 13
      Width = 47
      Height = 21
      DataField = 'kc_r1_keycode'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object lye01: TDBDateEdit
      Left = 431
      Top = 13
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r1_ex_o'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 3
    end
    object lxe01: TDBDateEdit
      Left = 557
      Top = 11
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r1_ex_r'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 4
    end
    object ape01: TDBDateEdit
      Left = 709
      Top = 11
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r1_act_cmpdt'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 5
    end
    object zse01: TDBEdit
      Left = 876
      Top = 13
      Width = 47
      Height = 21
      DataField = 'kc_r1_qty'
      DataSource = DataSource1
      TabOrder = 6
    end
    object wc01: TDBCheckBox
      Left = 938
      Top = 13
      Width = 49
      Height = 17
      Caption = #23436#25104' ?'
      DataField = 'kc_r1_cmp'
      DataSource = DataSource1
      TabOrder = 7
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xle02: TDBEdit
      Left = 232
      Top = 38
      Width = 25
      Height = 21
      DataField = 'kc_r2'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 8
    end
    object zhe02: TDBEdit
      Left = 298
      Top = 38
      Width = 47
      Height = 21
      DataField = 'kc_r2_keycode'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 9
    end
    object lye02: TDBDateEdit
      Left = 431
      Top = 38
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r2_ex_o'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 10
    end
    object lxe02: TDBDateEdit
      Left = 557
      Top = 36
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r2_ex_r'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 11
    end
    object ape02: TDBDateEdit
      Left = 709
      Top = 36
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r2_act_cmpdt'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 12
    end
    object zse02: TDBEdit
      Left = 876
      Top = 38
      Width = 47
      Height = 21
      DataField = 'kc_r2_qty'
      DataSource = DataSource1
      TabOrder = 13
    end
    object wc02: TDBCheckBox
      Left = 938
      Top = 38
      Width = 49
      Height = 17
      Caption = #23436#25104' ?'
      DataField = 'kc_r2_cmp'
      DataSource = DataSource1
      TabOrder = 14
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xle03: TDBEdit
      Left = 232
      Top = 63
      Width = 25
      Height = 21
      DataField = 'kc_r3'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 15
    end
    object zhe03: TDBEdit
      Left = 298
      Top = 63
      Width = 47
      Height = 21
      DataField = 'kc_r3_keycode'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 16
    end
    object lye03: TDBDateEdit
      Left = 431
      Top = 63
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r3_ex_o'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 17
    end
    object lxe03: TDBDateEdit
      Left = 557
      Top = 61
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r3_ex_r'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 18
    end
    object ape03: TDBDateEdit
      Left = 709
      Top = 61
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r3_act_cmpdt'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 19
    end
    object zse03: TDBEdit
      Left = 876
      Top = 63
      Width = 47
      Height = 21
      DataField = 'kc_r3_qty'
      DataSource = DataSource1
      TabOrder = 20
    end
    object wc03: TDBCheckBox
      Left = 938
      Top = 63
      Width = 49
      Height = 17
      Caption = #23436#25104' ?'
      DataField = 'kc_r3_cmp'
      DataSource = DataSource1
      TabOrder = 21
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xle04: TDBEdit
      Left = 232
      Top = 88
      Width = 25
      Height = 21
      DataField = 'kc_r4'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 22
    end
    object zhe04: TDBEdit
      Left = 298
      Top = 88
      Width = 47
      Height = 21
      DataField = 'kc_r4_keycode'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 23
    end
    object lye04: TDBDateEdit
      Left = 431
      Top = 88
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r4_ex_o'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 24
    end
    object lxe04: TDBDateEdit
      Left = 557
      Top = 86
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r4_ex_r'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 25
    end
    object ape04: TDBDateEdit
      Left = 709
      Top = 86
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r4_act_cmpdt'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 26
    end
    object zse04: TDBEdit
      Left = 876
      Top = 88
      Width = 47
      Height = 21
      DataField = 'kc_r4_qty'
      DataSource = DataSource1
      TabOrder = 27
    end
    object wc04: TDBCheckBox
      Left = 938
      Top = 88
      Width = 49
      Height = 17
      Caption = #23436#25104' ?'
      DataField = 'kc_r4_cmp'
      DataSource = DataSource1
      TabOrder = 28
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xle05: TDBEdit
      Left = 232
      Top = 113
      Width = 25
      Height = 21
      DataField = 'kc_r5'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 29
    end
    object zhe05: TDBEdit
      Left = 298
      Top = 113
      Width = 47
      Height = 21
      DataField = 'kc_r5_keycode'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 30
    end
    object lye05: TDBDateEdit
      Left = 431
      Top = 113
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r5_ex_o'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 31
    end
    object lxe05: TDBDateEdit
      Left = 557
      Top = 111
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r5_ex_r'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 32
    end
    object ape05: TDBDateEdit
      Left = 709
      Top = 111
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r5_act_cmpdt'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 33
    end
    object zse05: TDBEdit
      Left = 876
      Top = 113
      Width = 47
      Height = 21
      DataField = 'kc_r5_qty'
      DataSource = DataSource1
      TabOrder = 34
    end
    object wc05: TDBCheckBox
      Left = 938
      Top = 113
      Width = 49
      Height = 17
      Caption = #23436#25104' ?'
      DataField = 'kc_r5_cmp'
      DataSource = DataSource1
      TabOrder = 35
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xle06: TDBEdit
      Left = 232
      Top = 138
      Width = 25
      Height = 21
      DataField = 'kc_r6'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 36
    end
    object zhe06: TDBEdit
      Left = 298
      Top = 138
      Width = 47
      Height = 21
      DataField = 'kc_r6_keycode'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 37
    end
    object lye06: TDBDateEdit
      Left = 431
      Top = 138
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r6_ex_o'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 38
    end
    object lxe06: TDBDateEdit
      Left = 557
      Top = 136
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r6_ex_r'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 39
    end
    object ape06: TDBDateEdit
      Left = 709
      Top = 136
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r6_act_cmpdt'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 40
    end
    object zse06: TDBEdit
      Left = 876
      Top = 138
      Width = 47
      Height = 21
      DataField = 'kc_r6_qty'
      DataSource = DataSource1
      TabOrder = 41
    end
    object wc06: TDBCheckBox
      Left = 938
      Top = 138
      Width = 49
      Height = 17
      Caption = #23436#25104' ?'
      DataField = 'kc_r6_cmp'
      DataSource = DataSource1
      TabOrder = 42
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xle07: TDBEdit
      Left = 232
      Top = 163
      Width = 25
      Height = 21
      DataField = 'kc_r7'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 43
    end
    object zhe07: TDBEdit
      Left = 298
      Top = 163
      Width = 47
      Height = 21
      DataField = 'kc_r7_keycode'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 44
    end
    object lye07: TDBDateEdit
      Left = 431
      Top = 163
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r7_ex_o'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 45
    end
    object lxe07: TDBDateEdit
      Left = 557
      Top = 161
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r7_ex_r'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 46
    end
    object ape07: TDBDateEdit
      Left = 709
      Top = 161
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r7_act_cmpdt'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 47
    end
    object zse07: TDBEdit
      Left = 876
      Top = 163
      Width = 47
      Height = 21
      DataField = 'kc_r7_qty'
      DataSource = DataSource1
      TabOrder = 48
    end
    object wc07: TDBCheckBox
      Left = 938
      Top = 163
      Width = 49
      Height = 17
      Caption = #23436#25104' ?'
      DataField = 'kc_r7_cmp'
      DataSource = DataSource1
      TabOrder = 49
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xle08: TDBEdit
      Left = 232
      Top = 188
      Width = 25
      Height = 21
      DataField = 'kc_r8'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 50
    end
    object zhe08: TDBEdit
      Left = 298
      Top = 188
      Width = 47
      Height = 21
      DataField = 'kc_r8_keycode'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 51
    end
    object lye08: TDBDateEdit
      Left = 431
      Top = 188
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r8_ex_o'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 52
    end
    object lxe08: TDBDateEdit
      Left = 557
      Top = 186
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r8_ex_r'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 53
    end
    object ape08: TDBDateEdit
      Left = 709
      Top = 186
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r8_act_cmpdt'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 54
    end
    object zse08: TDBEdit
      Left = 876
      Top = 188
      Width = 47
      Height = 21
      DataField = 'kc_r8_qty'
      DataSource = DataSource1
      TabOrder = 55
    end
    object wc08: TDBCheckBox
      Left = 938
      Top = 188
      Width = 49
      Height = 17
      Caption = #23436#25104' ?'
      DataField = 'kc_r8_cmp'
      DataSource = DataSource1
      TabOrder = 56
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xle09: TDBEdit
      Left = 232
      Top = 213
      Width = 25
      Height = 21
      DataField = 'kc_r9'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 57
    end
    object zhe09: TDBEdit
      Left = 298
      Top = 213
      Width = 47
      Height = 21
      DataField = 'kc_r9_keycode'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 58
    end
    object lye09: TDBDateEdit
      Left = 431
      Top = 213
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r9_ex_o'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 59
    end
    object lxe09: TDBDateEdit
      Left = 557
      Top = 211
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r9_ex_r'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 60
    end
    object ape09: TDBDateEdit
      Left = 709
      Top = 211
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r9_act_cmpdt'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 61
    end
    object zse09: TDBEdit
      Left = 876
      Top = 213
      Width = 47
      Height = 21
      DataField = 'kc_r9_qty'
      DataSource = DataSource1
      TabOrder = 62
    end
    object wc09: TDBCheckBox
      Left = 938
      Top = 213
      Width = 49
      Height = 17
      Caption = #23436#25104' ?'
      DataField = 'kc_r9_cmp'
      DataSource = DataSource1
      TabOrder = 63
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xle10: TDBEdit
      Left = 232
      Top = 238
      Width = 25
      Height = 21
      DataField = 'kc_r10'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 64
    end
    object zhe10: TDBEdit
      Left = 298
      Top = 238
      Width = 47
      Height = 21
      DataField = 'kc_r10_keycode'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 65
    end
    object lye10: TDBDateEdit
      Left = 431
      Top = 238
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r10_ex_o'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 66
    end
    object lxe10: TDBDateEdit
      Left = 557
      Top = 236
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r10_ex_r'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 67
    end
    object ape10: TDBDateEdit
      Left = 709
      Top = 236
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'kc_r10_act_cmpdt'
      DataSource = DataSource1
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 68
    end
    object zse10: TDBEdit
      Left = 876
      Top = 238
      Width = 47
      Height = 21
      DataField = 'kc_r10_qty'
      DataSource = DataSource1
      TabOrder = 69
    end
    object wc10: TDBCheckBox
      Left = 938
      Top = 238
      Width = 49
      Height = 17
      Caption = #23436#25104' ?'
      DataField = 'kc_r10_cmp'
      DataSource = DataSource1
      TabOrder = 70
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object Panel4: TPanel
      Left = 1
      Top = 263
      Width = 1004
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 71
      object RzBackground4: TRzBackground
        Left = 0
        Top = 0
        Width = 1004
        Height = 41
        Active = True
        Align = alClient
        GradientColorStart = 14216405
        GradientColorStop = 16776176
        GradientDirection = gdVerticalEnd
        ImageStyle = isCenter
        ShowGradient = True
        ShowImage = False
        ShowTexture = False
        ExplicitLeft = 40
        ExplicitTop = 8
        ExplicitWidth = 200
        ExplicitHeight = 100
      end
      object BitBtn1: TBitBtn
        Left = 23
        Top = 6
        Width = 81
        Height = 25
        Caption = #20445#23384
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
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 103
        Top = 6
        Width = 81
        Height = 25
        Caption = #36864#20986
        DoubleBuffered = True
        Kind = bkClose
        ParentDoubleBuffered = False
        TabOrder = 1
      end
    end
  end
  object ADODataSet1: TADODataSet
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    AfterOpen = ADODataSet1AfterOpen
    CommandText = 'select * from tbl_carte_sopc301'
    CommandTimeout = 300
    Parameters = <>
    Left = 880
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 920
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 960
    Top = 24
  end
end
