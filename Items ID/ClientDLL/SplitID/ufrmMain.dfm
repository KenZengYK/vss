inherited frmMain: TfrmMain
  Left = 36
  Top = 183
  Width = 836
  Caption = 'frmMain'
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_Title: TPanel
    Width = 828
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 33
    Width = 828
    Height = 99
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnGetSplitID: TcxButton
      Left = 490
      Top = 28
      Width = 81
      Height = 37
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnGetSplitIDClick
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
    object cxGroupBox5: TcxGroupBox
      Left = 63
      Top = 7
      Caption = ' Company '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      TabOrder = 1
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
    object cxGroupBox1: TcxGroupBox
      Left = 160
      Top = 2
      Alignment = alCenterCenter
      TabOrder = 2
      Height = 65
      Width = 313
      object Label4: TLabel
        Left = 18
        Top = 13
        Width = 74
        Height = 13
        Caption = 'Start DateTime:'
      end
      object Label5: TLabel
        Left = 18
        Top = 39
        Width = 71
        Height = 13
        Caption = 'End DateTime:'
      end
      object editDT_Start: TcxDateEdit
        Left = 98
        Top = 8
        Properties.DateButtons = [btnNow, btnToday]
        Properties.ShowTime = False
        TabOrder = 0
        Width = 106
      end
      object editDT_End: TcxDateEdit
        Left = 98
        Top = 36
        Properties.DateButtons = [btnNow, btnToday]
        Properties.ShowTime = False
        TabOrder = 1
        Width = 106
      end
      object editTime_Start: TcxTimeEdit
        Left = 218
        Top = 8
        EditValue = 0.000000000000000000
        TabOrder = 2
        Width = 75
      end
      object editTime_End: TcxTimeEdit
        Left = 218
        Top = 36
        EditValue = 0.000000000000000000
        TabOrder = 3
        Width = 75
      end
    end
    object btnClearAll: TcxButton
      Left = 613
      Top = 28
      Width = 103
      Height = 37
      Caption = 'Clear All'
      TabOrder = 3
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
    object cxGroupBox8: TcxGroupBox
      Left = 160
      Top = 68
      Alignment = alCenterCenter
      TabOrder = 4
      Height = 27
      Width = 313
      object Label21: TLabel
        Left = 116
        Top = 7
        Width = 23
        Height = 13
        Caption = 'From'
      end
      object Label22: TLabel
        Left = 210
        Top = 7
        Width = 13
        Height = 13
        Caption = 'To'
      end
      object editST_From: TcxTextEdit
        Left = 148
        Top = 3
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 2
        TabOrder = 0
        Text = 'RM'
        Width = 50
      end
      object editST_To: TcxTextEdit
        Left = 228
        Top = 3
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 2
        TabOrder = 1
        Width = 50
      end
      object cxLabel1: TcxLabel
        Left = 17
        Top = 3
        Caption = 'Stock Room'
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
  object Panel4: TPanel [2]
    Left = 0
    Top = 448
    Width = 828
    Height = 88
    Align = alBottom
    TabOrder = 2
    object btnSelectAll: TcxButton
      Left = 8
      Top = 9
      Width = 98
      Height = 25
      Caption = 'Select All'
      Enabled = False
      TabOrder = 0
      OnClick = btnSelectAllClick
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
    end
    object btnSelectNone: TcxButton
      Left = 111
      Top = 9
      Width = 98
      Height = 25
      Caption = 'Select None'
      Enabled = False
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
    object btnPrintLabel: TcxButton
      Left = 504
      Top = 9
      Width = 101
      Height = 27
      Caption = 'Print Label'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object btnDefaultSelect: TcxButton
      Left = 226
      Top = 9
      Width = 148
      Height = 25
      Caption = 'Select have not Printed'
      Enabled = False
      TabOrder = 3
      OnClick = btnDefaultSelectClick
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
        0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
        120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
        12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
        1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
        181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
        E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
        E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
        E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
        E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8
        E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object cxLabel3: TcxLabel
      Left = 620
      Top = 10
      AutoSize = False
      Caption = '   '
      Style.BorderStyle = ebsSingle
      Height = 17
      Width = 16
    end
    object cxLabel4: TcxLabel
      Left = 638
      Top = 10
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
      Height = 17
      Width = 107
    end
    object btnSelectPrinted: TcxButton
      Left = 378
      Top = 9
      Width = 99
      Height = 25
      Caption = 'Select Printed'
      Enabled = False
      TabOrder = 6
      OnClick = btnSelectPrintedClick
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
        0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
        120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
        12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
        1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
        181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
        E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
        E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
        E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
        E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8
        E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object cxGrid4: TcxGrid [3]
    Left = 0
    Top = 132
    Width = 828
    Height = 316
    Align = alClient
    TabOrder = 3
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
      DataController.DataSource = DataSource3
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      object cxGrid1DBTableView1IsCheck: TcxGridDBColumn
        Caption = 'Select'
        DataBinding.FieldName = 'IsCheck'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Properties.OnEditValueChanged = cxGrid1DBTableView1IsCheckPropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 41
      end
      object cxGrid1DBTableView1ItemCode: TcxGridDBColumn
        Caption = 'ItemCode'
        DataBinding.FieldName = 'PNUM'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 118
      end
      object cxGrid1DBTableView1LOTID: TcxGridDBColumn
        Caption = 'LOT ID'
        DataBinding.FieldName = 'LOCN'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 109
      end
      object cxGridDBTableView1ParentID: TcxGridDBColumn
        Caption = 'Parent ID'
        DataBinding.FieldName = 'ParentID'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 95
      end
      object cxGridDBTableView1Project: TcxGridDBColumn
        DataBinding.FieldName = 'Project'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 82
      end
      object cxGridDBTableView1PO: TcxGridDBColumn
        DataBinding.FieldName = 'PO'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 73
      end
      object cxGrid1DBTableView1Stock_Room: TcxGridDBColumn
        Caption = 'Stock Room'
        DataBinding.FieldName = 'STRC'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 52
      end
      object cxGrid1DBTableView1CurrentQTY: TcxGridDBColumn
        Caption = 'Current QTY'
        DataBinding.FieldName = 'SPHY'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 91
      end
      object cxGrid1DBTableView1AllocateQTY: TcxGridDBColumn
        Caption = 'Allocate QTY'
        DataBinding.FieldName = 'SALC'
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
      object cxGrid1DBTableView1DTLC: TcxGridDBColumn
        Caption = 'Date Last Changed'
        DataBinding.FieldName = 'DTLC'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '####/##/##'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 88
      end
      object cxGrid1DBTableView1SDAT: TcxGridDBColumn
        Caption = 'Stock Date'
        DataBinding.FieldName = 'SDAT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '####/##/##'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 75
      end
      object cxGrid1DBTableView1STIM: TcxGridDBColumn
        Caption = 'Stock Time'
        DataBinding.FieldName = 'STIM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '##:##:##'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 67
      end
      object cxGridDBTableView1UOM: TcxGridDBColumn
        DataBinding.FieldName = 'UOM'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 44
      end
      object cxGridDBTableView1Location: TcxGridDBColumn
        DataBinding.FieldName = 'Location'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object cxGridDBTableView1HDO_NO: TcxGridDBColumn
        Caption = 'HDO NO'
        DataBinding.FieldName = 'HDO_NO'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 71
      end
      object cxGridDBTableView1PHISM: TcxGridDBColumn
        Caption = 'PHIS Material'
        DataBinding.FieldName = 'PHISM'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 82
      end
      object cxGridDBTableView1ColorShade: TcxGridDBColumn
        Caption = 'Color Shade'
        DataBinding.FieldName = 'ColorShade'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
      end
      object cxGridDBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Has Printed'
        DataBinding.FieldName = 'IsPrint'
        Visible = False
      end
      object cxGridDBTableView1POLine: TcxGridDBColumn
        Caption = 'PO Line'
        DataBinding.FieldName = 'POLine'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 57
      end
      object cxGridDBTableView1ORG_QTY: TcxGridDBColumn
        Caption = 'ORG QTY'
        DataBinding.FieldName = 'ORG_QTY'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Filtering = False
      end
      object cxGridDBTableView1PrintDate: TcxGridDBColumn
        Caption = 'Print Date'
        DataBinding.FieldName = 'PrintDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.InputKind = ikMask
        Properties.Kind = ckDateTime
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 93
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  inherited ClientDataSet1: TClientDataSet
    Left = 8
    Top = 0
  end
  inherited ClientDataSet2: TClientDataSet
    Left = 96
    Top = 0
  end
  inherited DataSource1: TDataSource
    Left = 40
    Top = 0
  end
  inherited DataSource2: TDataSource
    Left = 128
    Top = 0
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 320
    Top = 3
  end
  inherited ClientDataSet_Temp: TClientDataSet
    StoreDefs = True
    Left = 172
    Top = 1
  end
  inherited DataSource_Temp: TDataSource
    Left = 204
    Top = 1
  end
  inherited DataSet_Language: TClientDataSet
    Left = 248
    Top = 0
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Left = 352
    Top = 2
  end
  object ADOQuery3: TADOQuery
    CacheSize = 1000
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = ADOQuery3AfterOpen
    AfterClose = ADOQuery3AfterClose
    CommandTimeout = 0
    Parameters = <>
    Left = 168
    Top = 295
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet_Data
    Left = 232
    Top = 343
  end
  object ClientDataSet_Temp1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPHG'
    Left = 196
    Top = 161
  end
  object ADOQuery2: TADOQuery
    CacheSize = 1000
    CommandTimeout = 0
    Parameters = <>
    Left = 168
    Top = 263
  end
  object ClientDataSet_Data: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPHG_temp'
    AfterOpen = ClientDataSet_DataAfterOpen
    AfterClose = ClientDataSet_DataAfterClose
    Left = 196
    Top = 345
  end
  object ClientDataSet_Print: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'ClientDataSet_PrintIndex1'
        Fields = 'LOT_ID'
      end>
    IndexName = 'ClientDataSet_PrintIndex1'
    Params = <>
    ProviderName = 'dspPHG_temp'
    StoreDefs = True
    Left = 276
    Top = 249
  end
end