object frmnewcap_notepad: Tfrmnewcap_notepad
  Left = 193
  Top = 206
  Caption = 'Capacity Planning - Action log'
  ClientHeight = 607
  ClientWidth = 1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1072
    Height = 201
    Align = alTop
    Color = 10024081
    TabOrder = 0
    object Label11: TLabel
      Left = 16
      Top = 72
      Width = 48
      Height = 16
      Caption = 'Subject '
    end
    object Label12: TLabel
      Left = 16
      Top = 8
      Width = 325
      Height = 16
      Caption = 'Entrance Key  for action log create and review: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 560
      Top = 72
      Width = 47
      Height = 16
      Caption = 'Sender '
    end
    object GroupBox1: TGroupBox
      Left = 312
      Top = 24
      Width = 681
      Height = 41
      TabOrder = 1
      object xh1: TRadioButton
        Left = 136
        Top = 16
        Width = 89
        Height = 17
        Caption = 'Broadcast'
        TabOrder = 0
        OnClick = xh1Click
      end
      object xh2: TRadioButton
        Left = 232
        Top = 16
        Width = 137
        Height = 17
        Caption = 'Division dependent'
        TabOrder = 1
        OnClick = xh2Click
      end
      object ComboBox1: TComboBox
        Left = 366
        Top = 13
        Width = 57
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 2
        Items.Strings = (
          'A'
          'B'
          'C'
          'E')
      end
      object chk1: TCheckBox
        Left = 0
        Top = 0
        Width = 105
        Height = 17
        Caption = 'Classification'
        TabOrder = 3
        OnClick = chk1Click
      end
      object xh3: TRadioButton
        Left = 8
        Top = 16
        Width = 49
        Height = 17
        Caption = 'Help'
        TabOrder = 4
        OnClick = xh3Click
      end
      object chk2: TCheckBox
        Left = 440
        Top = 16
        Width = 153
        Height = 17
        Caption = 'Customer Dependent'
        TabOrder = 5
        OnClick = chk2Click
      end
      object ComboBox2: TComboBox
        Left = 592
        Top = 13
        Width = 81
        Height = 24
        TabOrder = 6
        OnEnter = ComboBox2Enter
      end
      object xh4: TRadioButton
        Left = 72
        Top = 16
        Width = 57
        Height = 17
        Caption = 'Other'
        TabOrder = 7
        OnClick = xh4Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 96
      Width = 489
      Height = 49
      TabOrder = 4
      object chk4: TCheckBox
        Left = 0
        Top = 0
        Width = 57
        Height = 17
        Caption = 'Style #'
        TabOrder = 0
        OnClick = chk4Click
      end
      object Edit1: TEdit
        Left = 8
        Top = 16
        Width = 89
        Height = 24
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 104
        Top = 16
        Width = 89
        Height = 24
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 200
        Top = 16
        Width = 89
        Height = 24
        TabOrder = 3
      end
      object Edit4: TEdit
        Left = 296
        Top = 16
        Width = 89
        Height = 24
        TabOrder = 4
      end
      object Edit5: TEdit
        Left = 392
        Top = 16
        Width = 89
        Height = 24
        TabOrder = 5
      end
    end
    object Edit6: TEdit
      Left = 608
      Top = 112
      Width = 113
      Height = 24
      TabOrder = 6
    end
    object chk3: TCheckBox
      Left = 512
      Top = 112
      Width = 97
      Height = 17
      Caption = 'Style Range'
      TabOrder = 5
      OnClick = chk3Click
    end
    object BitBtn5: TBitBtn
      Left = 848
      Top = 155
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
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BitBtn5Click
    end
    object GroupBox3: TGroupBox
      Left = 16
      Top = 24
      Width = 289
      Height = 41
      Caption = 'Date Range'
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 34
        Height = 16
        Caption = 'From '
      end
      object Label9: TLabel
        Left = 152
        Top = 16
        Width = 20
        Height = 16
        Caption = 'To '
      end
      object DateEdit1: TDateEdit
        Left = 40
        Top = 16
        Width = 105
        Height = 24
        NumGlyphs = 2
        TabOrder = 0
      end
      object DateEdit2: TDateEdit
        Left = 176
        Top = 16
        Width = 105
        Height = 24
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object Edit7: TEdit
      Left = 64
      Top = 72
      Width = 441
      Height = 24
      TabOrder = 2
    end
    object Edit8: TEdit
      Left = 608
      Top = 72
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object GroupBox4: TGroupBox
      Left = 16
      Top = 144
      Width = 305
      Height = 49
      TabOrder = 8
      object chk5: TCheckBox
        Left = 0
        Top = 0
        Width = 145
        Height = 17
        Caption = 'Happening event on'
        TabOrder = 0
        OnClick = chk5Click
      end
      object ComboBox3: TComboBox
        Left = 16
        Top = 16
        Width = 81
        Height = 24
        TabOrder = 1
        Items.Strings = (
          'Jan'
          'Feb'
          'Mar'
          'Apr'
          'May'
          'Jun'
          'Jul'
          'Aug'
          'Sep'
          'Oct'
          'Nov'
          'Dec')
      end
      object ComboBox4: TComboBox
        Left = 112
        Top = 16
        Width = 81
        Height = 24
        TabOrder = 2
        Items.Strings = (
          'Jan'
          'Feb'
          'Mar'
          'Apr'
          'May'
          'Jun'
          'Jul'
          'Aug'
          'Sep'
          'Oct'
          'Nov'
          'Dec')
      end
      object ComboBox5: TComboBox
        Left = 208
        Top = 16
        Width = 81
        Height = 24
        TabOrder = 3
        Items.Strings = (
          'Jan'
          'Feb'
          'Mar'
          'Apr'
          'May'
          'Jun'
          'Jul'
          'Aug'
          'Sep'
          'Oct'
          'Nov'
          'Dec')
      end
    end
    object st01: TRadioGroup
      Left = 336
      Top = 144
      Width = 505
      Height = 49
      Caption = 'Sort by'
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Date'
        'Subject'
        'Sender'
        'Happening event')
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 566
    Width = 1072
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label15: TLabel
      Left = 560
      Top = 8
      Width = 3
      Height = 16
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Review'
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
        330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
        830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
        F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 97
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Create'
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
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 416
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
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
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 416
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Delete'
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn6: TBitBtn
      Left = 416
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      Left = 489
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 170
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Edit'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 243
      Top = 8
      Width = 101
      Height = 25
      Caption = 'Send Email'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 344
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Preview'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 8
      OnClick = BitBtn10Click
    end
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 201
    Width = 1072
    Height = 365
    Align = alClient
    DataSource = DataSource1
    PanelHeight = 182
    PanelWidth = 1055
    TabOrder = 2
    RowCount = 2
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 35
      Height = 16
      Caption = 'Date: '
    end
    object Label3: TLabel
      Left = 17
      Top = 61
      Width = 50
      Height = 16
      Caption = 'Sender: '
    end
    object Label5: TLabel
      Left = 441
      Top = 61
      Width = 63
      Height = 16
      Caption = 'Customer: '
    end
    object Label6: TLabel
      Left = 600
      Top = 88
      Width = 80
      Height = 16
      Caption = 'Style Range: '
    end
    object Label7: TLabel
      Left = 16
      Top = 88
      Width = 87
      Height = 16
      Caption = 'Related Style: '
    end
    object Label8: TLabel
      Left = 16
      Top = 115
      Width = 59
      Height = 16
      Caption = 'Notepad: '
    end
    object Label10: TLabel
      Left = 176
      Top = 8
      Width = 51
      Height = 16
      Caption = 'Subject: '
    end
    object Label4: TLabel
      Left = 177
      Top = 61
      Width = 85
      Height = 16
      Caption = 'Classification: '
    end
    object Label14: TLabel
      Left = 808
      Top = 88
      Width = 82
      Height = 16
      Caption = 'Amendment #'
    end
    object Label16: TLabel
      Left = 16
      Top = 34
      Width = 23
      Height = 16
      Caption = 'To: '
    end
    object Label17: TLabel
      Left = 307
      Top = 34
      Width = 24
      Height = 16
      Caption = 'CC: '
    end
    object DBMemo1: TDBMemo
      Left = 80
      Top = 115
      Width = 865
      Height = 61
      DataField = 'NOTEPAD'
      DataSource = DataSource1
      ScrollBars = ssVertical
      TabOrder = 11
    end
    object DBEdit1: TDBEdit
      Left = 224
      Top = 8
      Width = 769
      Height = 24
      DataField = 'STITLE'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBDateEdit1: TDBDateTimeEditEh
      Left = 64
      Top = 8
      Width = 97
      Height = 24
      DataField = 'DT'
      DataSource = DataSource1
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 1
      Visible = True
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 61
      Width = 97
      Height = 24
      DataField = 'USR'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 265
      Top = 61
      Width = 121
      Height = 24
      DataField = 'TEAM'
      DataSource = DataSource1
      Items.Strings = (
        'Help'
        'Broadcast'
        'A'
        'B'
        'C'
        'E'
        'Other')
      TabOrder = 3
    end
    object DBComboBox2: TDBComboBox
      Left = 505
      Top = 61
      Width = 97
      Height = 24
      DataField = 'CUSTOMER'
      DataSource = DataSource1
      Items.Strings = (
        'Broadcast'
        'A'
        'B'
        'C'
        'E')
      TabOrder = 4
      OnEnter = DBComboBox2Enter
    end
    object DBEdit3: TDBEdit
      Left = 104
      Top = 88
      Width = 97
      Height = 24
      DataField = 'STYLE1'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 200
      Top = 88
      Width = 97
      Height = 24
      DataField = 'STYLE2'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 296
      Top = 88
      Width = 97
      Height = 24
      DataField = 'STYLE3'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 392
      Top = 88
      Width = 97
      Height = 24
      DataField = 'STYLE4'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 488
      Top = 88
      Width = 97
      Height = 24
      DataField = 'STYLE5'
      DataSource = DataSource1
      TabOrder = 9
    end
    object DBEdit8: TDBEdit
      Left = 680
      Top = 88
      Width = 113
      Height = 24
      DataField = 'RANGE'
      DataSource = DataSource1
      TabOrder = 10
    end
    object GroupBox5: TGroupBox
      Left = 768
      Top = 34
      Width = 225
      Height = 48
      Caption = 'Happening event  on'
      TabOrder = 12
      object DBComboBox3: TDBComboBox
        Left = 8
        Top = 19
        Width = 65
        Height = 24
        DataField = 'EVENT1'
        DataSource = DataSource1
        Items.Strings = (
          'Jan'
          'Feb'
          'Mar'
          'Apr'
          'May'
          'Jun'
          'Jul'
          'Aug'
          'Sep'
          'Oct'
          'Nov'
          'Dec')
        TabOrder = 0
      end
      object DBComboBox4: TDBComboBox
        Left = 80
        Top = 19
        Width = 65
        Height = 24
        DataField = 'EVENT2'
        DataSource = DataSource1
        Items.Strings = (
          'Jan'
          'Feb'
          'Mar'
          'Apr'
          'May'
          'Jun'
          'Jul'
          'Aug'
          'Sep'
          'Oct'
          'Nov'
          'Dec')
        TabOrder = 1
      end
      object DBComboBox5: TDBComboBox
        Left = 152
        Top = 19
        Width = 65
        Height = 24
        DataField = 'EVENT3'
        DataSource = DataSource1
        Items.Strings = (
          'Jan'
          'Feb'
          'Mar'
          'Apr'
          'May'
          'Jun'
          'Jul'
          'Aug'
          'Sep'
          'Oct'
          'Nov'
          'Dec')
        TabOrder = 2
      end
    end
    object DBEdit9: TDBEdit
      Left = 896
      Top = 88
      Width = 49
      Height = 24
      DataField = 'AMD'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit10: TDBEdit
      Left = 64
      Top = 34
      Width = 217
      Height = 24
      DataField = 'TO1'
      DataSource = DataSource1
      TabOrder = 14
    end
    object DBEdit11: TDBEdit
      Left = 336
      Top = 34
      Width = 426
      Height = 24
      DataField = 'CC1'
      DataSource = DataSource1
      TabOrder = 15
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_notepad'
    FieldDefs = <
      item
        Name = 'USR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'TEAM'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CUSTOMER'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'STYLE1'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'STYLE2'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'STYLE3'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'STYLE4'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'STYLE5'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'NOTEPAD'
        DataType = ftWideString
        Size = 3000
      end
      item
        Name = 'RANGE'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'AFFDT'
        DataType = ftDate
      end
      item
        Name = 'AFFYR'
        DataType = ftInteger
      end
      item
        Name = 'AFFMN'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'STITLE'
        DataType = ftWideString
        Size = 120
      end
      item
        Name = 'EVENT1'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'EVENT2'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'EVENT3'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'AMD'
        DataType = ftInteger
      end
      item
        Name = 'TO1'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'CC1'
        DataType = ftWideString
        Size = 200
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    BeforePost = Query1BeforePost
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 384
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 416
    Top = 65528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 448
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 480
    Top = 65528
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 520
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
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
    Left = 552
    Top = 8
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 15081
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Planning - Notepad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 36248
        mmTop = 2646
        mmWidth = 119856
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 129382
        mmTop = 10319
        mmWidth = 15155
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
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 145257
        mmTop = 10319
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 166159
        mmTop = 10319
        mmWidth = 8213
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
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 175155
        mmTop = 10319
        mmWidth = 7112
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 42333
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 39688
        mmLeft = 1323
        mmTop = 1588
        mmWidth = 192882
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 16140
        mmLeft = 17463
        mmTop = 24077
        mmWidth = 174361
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 7144
        mmLeft = 147373
        mmTop = 11642
        mmWidth = 44450
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 2381
        mmTop = 2910
        mmWidth = 6519
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 10319
        mmTop = 2910
        mmWidth = 10668
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Subject: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 30956
        mmTop = 2910
        mmWidth = 9525
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
        DataField = 'STITLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 42598
        mmTop = 2910
        mmWidth = 32173
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sender: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 160073
        mmTop = 7408
        mmWidth = 9260
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
        DataField = 'USR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 171186
        mmTop = 7408
        mmWidth = 5027
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Classification: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 2381
        mmTop = 14023
        mmWidth = 15875
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
        DataField = 'TEAM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 23283
        mmTop = 14023
        mmWidth = 11113
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 53975
        mmTop = 14023
        mmWidth = 11906
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
        DataField = 'CUSTOMER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 68263
        mmTop = 14023
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Related Style: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 2381
        mmTop = 20108
        mmWidth = 15875
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
        DataField = 'STYLE1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 21167
        mmTop = 20108
        mmWidth = 5292
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Style Range: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 122502
        mmTop = 20108
        mmWidth = 14552
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
        DataField = 'RANGE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 141288
        mmTop = 20108
        mmWidth = 794
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Amendment #: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 169863
        mmTop = 20108
        mmWidth = 16669
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
        DataField = 'AMD'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 188384
        mmTop = 20108
        mmWidth = 1323
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
        DataField = 'STYLE2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 35719
        mmTop = 20108
        mmWidth = 5292
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
        DataField = 'STYLE3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 50271
        mmTop = 20108
        mmWidth = 5292
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
        DataField = 'STYLE4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 64823
        mmTop = 20108
        mmWidth = 529
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
        DataField = 'STYLE5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 82286
        mmTop = 20108
        mmWidth = 529
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad:-  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 2381
        mmTop = 24606
        mmWidth = 12171
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'NOTEPAD'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 15610
        mmLeft = 17463
        mmTop = 24606
        mmWidth = 173832
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Happening event on '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        mmHeight = 2910
        mmLeft = 148432
        mmTop = 10848
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EVENT1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 150019
        mmTop = 15346
        mmWidth = 794
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
        DataField = 'EVENT2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 165100
        mmTop = 14552
        mmWidth = 794
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
        DataField = 'EVENT3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 179917
        mmTop = 14552
        mmWidth = 794
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 10319
        mmTop = 5556
        mmWidth = 13758
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 42598
        mmTop = 5556
        mmWidth = 149225
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 171186
        mmTop = 10054
        mmWidth = 13758
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 23283
        mmTop = 16669
        mmWidth = 23283
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 68263
        mmTop = 16669
        mmWidth = 17198
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 21167
        mmTop = 22754
        mmWidth = 12435
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 35719
        mmTop = 22754
        mmWidth = 12435
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 50271
        mmTop = 22754
        mmWidth = 12435
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 64823
        mmTop = 22754
        mmWidth = 12435
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 82286
        mmTop = 22754
        mmWidth = 12435
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 141288
        mmTop = 22754
        mmWidth = 24606
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 187325
        mmTop = 22754
        mmWidth = 4498
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
        DataField = 'TO1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 10319
        mmTop = 7408
        mmWidth = 550
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 2381
        mmTop = 7408
        mmWidth = 3979
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 10319
        mmTop = 9790
        mmWidth = 45244
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
        DataField = 'CC1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 64823
        mmTop = 7408
        mmWidth = 550
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CC: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 58738
        mmTop = 7408
        mmWidth = 4911
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 64823
        mmTop = 10054
        mmWidth = 92869
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2381
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
end
