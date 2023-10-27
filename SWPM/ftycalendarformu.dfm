object frmftycalendar: Tfrmftycalendar
  Left = 192
  Top = 107
  Caption = #24288#26085#26310
  ClientHeight = 519
  ClientWidth = 817
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 123
    Width = 817
    Height = 347
    Align = alClient
    AllowedOperations = [alopInsertEh, alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288
        Width = 38
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'DATE1'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26085#26399
        Width = 83
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'WDAY'
        Footers = <>
        PickList.Strings = (
          'WD'
          'RDF'
          'RDS'
          'H')
        Title.Caption = #20241#20551'|'#38928#35373
        Width = 41
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'WKNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36913#26399
        Width = 38
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'WKDAY'
        Footers = <>
        PickList.Strings = (
          'W1'
          'W2'
          'L'
          'H')
        ReadOnly = True
        Title.Caption = #26143#26399#24190
        Width = 40
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'SECTO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #29983#29986#31680#26178'|'#25552#20379
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'SECTT'
        Footers = <>
        Title.Caption = #29983#29986#31680#26178'|'#38928#35373'|N1'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'SECTT1'
        Footers = <>
        Title.Caption = #29983#29986#31680#26178'|'#38928#35373'|N2'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'SECTC'
        Footers = <>
        Title.Caption = #29983#29986#31680#26178'|'#38928#35373'|OT'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'OSECT'
        Footers = <>
        Title.Caption = 'Work Section Hr|Current|CsT'
        Visible = False
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'SHIFT_I'
        Footers = <>
        PickList.Strings = (
          '*'
          '+')
        Title.Caption = #35519#25563
        Width = 47
      end
      item
        Color = 11795962
        DisplayFormat = '#0;-#0'
        EditButtons = <>
        FieldName = 'TTL'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36913#23567#35336
        Width = 50
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 123
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label3: TLabel
      Left = 384
      Top = 24
      Width = 12
      Height = 13
      Caption = #24288
    end
    object SpeedButton1: TSpeedButton
      Left = 520
      Top = 24
      Width = 65
      Height = 22
      Caption = #30906#23450
      Glyph.Data = {
        52050000424D5205000000000000420000002800000024000000120000000100
        1000030000001005000000000000000000000000000000000000007C0000E003
        00001F000000E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DFF7F
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        0F000F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DEF3DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03D0F00E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DEF3DE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03D0F00E001E001E001E0010F00E03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03DEF3DFF7FE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03D0F00E001E001E001E001E001E001
        0F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03D
        E03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03D0F00E001E001E001
        E003E001E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7F
        E03DE03DEF3DFF7FE03DE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03D
        E001E001E001E003E03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03D
        E03DE03DEF3DFF7FE03DEF3DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03D
        E03DE03DE03DE03DE003E001E003E03DE03DE03DE003E001E001E0010F00E03D
        E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DE03DE03DE03DEF3DFF7FE03DE03D
        EF3DFF7FE03DE03DE03DE03DE03DE03DE03DE003E03DE03DE03DE03DE03DE003
        E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03D
        E03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001E001E0010F00E03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3D
        FF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001
        E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        EF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE003E001E0010F00E03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FE03DEF3DFF7FE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001E001
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3D
        FF7FEF3DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE003E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DEF3DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object GroupBox1: TGroupBox
      Left = 32
      Top = 8
      Width = 337
      Height = 49
      Caption = #26178#26399
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 22
        Width = 15
        Height = 13
        Caption = #24478' '
      end
      object Label2: TLabel
        Left = 184
        Top = 22
        Width = 15
        Height = 13
        Caption = #21040' '
      end
      object DateEdit1: TDateEdit
        Left = 48
        Top = 18
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object DateEdit2: TDateEdit
        Left = 200
        Top = 18
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object ComboBox1: TComboBox
      Left = 424
      Top = 24
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        'SL'
        'RX'
        'CL')
    end
    object option1: TRadioGroup
      Left = 32
      Top = 63
      Width = 593
      Height = 50
      Caption = #36913#29983#29986#26178#38291' ('#23567#26178')'
      Columns = 8
      ItemIndex = 0
      Items.Strings = (
        'Calendar1'
        'Calendar2'
        'Calendar3'
        'Calendar4'
        'Calendar5'
        'Calendar6'
        'Calendar7'
        'Calendar8')
      TabOrder = 2
      OnClick = option1Click
    end
    object option2: TRadioGroup
      Left = 32
      Top = 63
      Width = 633
      Height = 50
      Caption = #36913#24037#20316#26178#38291' ('#23567#26178')'
      Columns = 8
      ItemIndex = 0
      Items.Strings = (
        'Calendar1'
        'Calendar2'
        'Calendar3'
        'Calendar4'
        'Calendar5'
        'Calendar6'
        'Calendar7'
        'Calendar8')
      TabOrder = 3
      OnClick = option1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 470
    Width = 817
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 33
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
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 105
      Top = 8
      Width = 73
      Height = 33
      Caption = #38928#35261
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
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn3: TBitBtn
      Left = 498
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Confirm'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 2
      Visible = False
      OnClick = BitBtn3Click
    end
    object BitBtn1: TBitBtn
      Left = 570
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Approve'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 3
      Visible = False
      OnClick = BitBtn3Click
    end
    object BitBtn5: TBitBtn
      Left = 642
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Apply to'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 4
      Visible = False
      OnClick = BitBtn3Click
    end
    object BitBtn6: TBitBtn
      Left = 178
      Top = 8
      Width = 73
      Height = 33
      Caption = #20633#35387
      DoubleBuffered = True
      Glyph.Data = {
        72010000424D7201000000000000760000002800000015000000150000000100
        040000000000FC00000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888880008877777777777777777780008BFB9BFBFBFBFBFBFBF780008FBF
        9FBFBFBFBFBFBFB780008CCCCCCCCCCCCCCCCCC780008FBF9FBFBFBFBFBFBFB7
        80008BFB9BFBFBFBFBFBFBF780008FBF9FBFBFBFBFBFBFB780008CCCCCCCCCCC
        CCCCCCC780008FBF9FBFBFBFBFBFBFB780008BFB9BFBFBFBFBFBFBF780008FBF
        9FBFBFBFBFBFBFB780008CCCCCCCCCCCCCCCCCC780008FBF9FBFBFBFBFBFBFB7
        80008BFB9BFBFBFBFBFBFBF780008FBF9FBFBFBFBFBFBFB780008CCCCCCCCCCC
        CCCCCCC780008FBF9FBFBFBFBFBFBFB780008BFB9BFBFBFBFBFBFBF780008FBF
        9FBFBFBFBFBFBFB88000888888888888888888888000}
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn3Click
    end
    object BitBtn7: TBitBtn
      Left = 250
      Top = 8
      Width = 73
      Height = 33
      Caption = #36864#20986
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
      TabOrder = 6
      OnClick = BitBtn7Click
    end
  end
  object week52: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tplant_wk52 where opt_c=1 and date1>='#39'2019-04-01'#39' ' +
      'and date1<='#39'2019-05-31'#39
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DATE1'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'WKNO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SECTO'
        DataType = ftInteger
      end
      item
        Name = 'SECTT'
        DataType = ftInteger
      end
      item
        Name = 'SECTC'
        DataType = ftInteger
      end
      item
        Name = 'WDAY'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SECTT1'
        DataType = ftInteger
      end
      item
        Name = 'OSECT'
        DataType = ftInteger
      end
      item
        Name = 'OPT_C'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftFloat
      end
      item
        Name = 'WKDAY'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'WKYR'
        DataType = ftInteger
      end
      item
        Name = 'YRWK'
        DataType = ftInteger
      end
      item
        Name = 'SHIFT_I'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'RMK'
        DataType = ftWideString
        Size = 550
      end
      item
        Name = 'M1'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;date1'
        Options = [ixUnique]
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = week52AfterOpen
    AfterPost = week52AfterPost
    Left = 176
    Top = 65520
  end
  object DataSource1: TDataSource
    DataSet = week52
    Left = 208
    Top = 65520
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 240
    Top = 65520
  end
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 65520
    object SetStandardCalendar1: TMenuItem
      Caption = 'Set Standard Calendar'
      ShortCut = 121
      Visible = False
    end
    object SetStandarCalendar1: TMenuItem
      Caption = 'Set Standard Calendar'
      ShortCut = 122
      Visible = False
    end
    object ModifyCalendar1: TMenuItem
      Caption = 'Modify Calendar'
      ShortCut = 123
      Visible = False
      OnClick = ModifyCalendar1Click
    end
    object ChangeCalendardescription1: TMenuItem
      Caption = 'Change Calendar description'
      ShortCut = 49237
      Visible = False
      OnClick = ChangeCalendardescription1Click
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 272
    Top = 65520
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tplant_wk52 where tplant='#39'SL'#39' and date1>='#39'2006/04/' +
      '01'#39' and date1<='#39'2006/12/31'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 304
    Top = 65520
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DataSource1
    UserName = 'BDEPipeline1'
    Left = 80
    Top = 65520
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
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 112
    Top = 65520
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TBS'#25289#29983#29986#25928#29575#22577#34920'(2002'#24180#24230')'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 53181
        mmTop = 1588
        mmWidth = 91017
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 6350
        mmLeft = 4498
        mmTop = 12700
        mmWidth = 190500
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26376#20221
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 5821
        mmTop = 14288
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 18785
        mmTop = 14288
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21608
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 44979
        mmTop = 14288
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #30446#27161#31680#25976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 63500
        mmTop = 14288
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29694#27841#31680#25976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 86254
        mmTop = 14288
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #30446#27161'(MTMU)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 114036
        mmTop = 14288
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29694#27841'(MTMU)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 146579
        mmTop = 14288
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29983#29986#25928#29575'%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 177007
        mmTop = 14288
        mmWidth = 15081
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'mth'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3429
        mmLeft = 5821
        mmTop = 529
        mmWidth = 5038
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
        DataField = 'dt'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3429
        mmLeft = 18785
        mmTop = 529
        mmWidth = 3429
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
        DataField = 'wk'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3429
        mmLeft = 44979
        mmTop = 529
        mmWidth = 3429
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
        DataField = 'mb1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3429
        mmLeft = 71956
        mmTop = 529
        mmWidth = 5038
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
        DataField = 'xk1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3429
        mmLeft = 94710
        mmTop = 529
        mmWidth = 5038
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
        DataField = 'mb2'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3429
        mmLeft = 125931
        mmTop = 529
        mmWidth = 5038
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
        DataField = 'xk2'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3429
        mmLeft = 158475
        mmTop = 529
        mmWidth = 5038
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
        DataField = 'diff'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3429
        mmLeft = 184701
        mmTop = 529
        mmWidth = 6858
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21512#35336':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 5821
        mmTop = 1588
        mmWidth = 8467
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
        DataField = 'mb1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3217
        mmLeft = 63447
        mmTop = 1588
        mmWidth = 13547
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
        DataField = 'xk1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3217
        mmLeft = 86995
        mmTop = 1588
        mmWidth = 13547
        BandType = 7
      end
      object xk: TppDBCalc
        UserName = 'xk'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'xk2'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3217
        mmLeft = 149966
        mmTop = 1588
        mmWidth = 13547
        BandType = 7
      end
      object percent1: TppLabel
        UserName = 'percent1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'percent1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 178065
        mmTop = 1588
        mmWidth = 13494
        BandType = 7
      end
      object mb: TppLabel
        UserName = 'mb'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'mb'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 127529
        mmTop = 1588
        mmWidth = 3440
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet3
    Left = 48
    Top = 65520
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 336
    Top = 65520
  end
  object ppReport2: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '6350'
      '105039')
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
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 368
    Top = 65520
    Version = '11.07'
    mmColumnWidth = 98689
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24606
      mmPrintPosition = 0
      object titile01: TppLabel
        UserName = 'titile01'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24288#24037#20316#26085#26310
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 5292
        mmTop = 5292
        mmWidth = 180975
        BandType = 0
      end
      object title02: TppLabel
        UserName = 'title02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK Office'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3175
        mmTop = 18521
        mmWidth = 12192
        BandType = 0
      end
      object line01: TppLabel
        UserName = 'line01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 15875
        mmTop = 18521
        mmWidth = 3471
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 43921
        mmTop = 18521
        mmWidth = 13420
        BandType = 0
      end
      object date01: TppLabel
        UserName = 'date01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2006/04/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 59796
        mmTop = 18521
        mmWidth = 14139
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 79111
        mmTop = 18521
        mmWidth = 3302
        BandType = 0
      end
      object date02: TppLabel
        UserName = 'date02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2006/12/31'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 83873
        mmTop = 18521
        mmWidth = 14139
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 162984
        mmTop = 11906
        mmWidth = 12912
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
        mmLeft = 177536
        mmTop = 11906
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 162984
        mmTop = 15875
        mmWidth = 6604
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
        mmLeft = 177536
        mmTop = 15875
        mmWidth = 7112
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Version: 2.6.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 162984
        mmTop = 19759
        mmWidth = 17526
        BandType = 0
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 12700
        mmLeft = 265
        mmTop = 265
        mmWidth = 97102
        BandType = 2
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 12965
        mmTop = 5027
        mmWidth = 5165
        BandType = 2
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 45244
        mmTop = 2646
        mmWidth = 6435
        BandType = 2
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Work Section Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 63236
        mmTop = 1058
        mmWidth = 17992
        BandType = 2
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 52652
        mmTop = 5027
        mmWidth = 7747
        BandType = 2
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 72496
        mmTop = 5027
        mmWidth = 8128
        BandType = 2
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 63236
        mmTop = 8996
        mmWidth = 3175
        BandType = 2
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 77258
        mmTop = 8996
        mmWidth = 4763
        BandType = 2
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 39952
        mmTop = 265
        mmWidth = 1852
        BandType = 2
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 52123
        mmTop = 265
        mmWidth = 1852
        BandType = 2
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 30956
        mmTop = 265
        mmWidth = 1852
        BandType = 2
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 31750
        mmTop = 5027
        mmWidth = 7144
        BandType = 2
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 8731
        mmTop = 265
        mmWidth = 1852
        BandType = 2
      end
      object titile03: TppLabel
        UserName = 'titile03'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK Office'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 1058
        mmTop = 5292
        mmWidth = 7144
        BandType = 2
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 70908
        mmTop = 8996
        mmWidth = 3175
        BandType = 2
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 91281
        mmTop = 8996
        mmWidth = 4403
        BandType = 2
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 23283
        mmTop = 265
        mmWidth = 1852
        BandType = 2
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 23813
        mmTop = 2646
        mmWidth = 7070
        BandType = 2
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Day '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 24871
        mmTop = 6615
        mmWidth = 4953
        BandType = 2
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  #  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 46038
        mmTop = 6615
        mmWidth = 4064
        BandType = 2
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 44450
        mmTop = 265
        mmWidth = 1852
        BandType = 2
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Angle = 90
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shifted '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 8467
        mmLeft = 40746
        mmTop = 2381
        mmWidth = 3175
        BandType = 2
        RotatedOriginLeft = 0
        RotatedOriginTop = 8467
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 52123
        mmTop = 4498
        mmWidth = 44979
        BandType = 2
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 61119
        mmTop = 4498
        mmWidth = 1588
        BandType = 2
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 61119
        mmTop = 8202
        mmWidth = 35983
        BandType = 2
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 68263
        mmTop = 8202
        mmWidth = 794
        BandType = 2
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 75671
        mmTop = 8202
        mmWidth = 794
        BandType = 2
      end
      object ppLine12: TppLine
        UserName = 'Line102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 89429
        mmTop = 8202
        mmWidth = 794
        BandType = 2
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 83873
        mmTop = 8996
        mmWidth = 4784
        BandType = 2
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 83079
        mmTop = 8202
        mmWidth = 794
        BandType = 2
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DATE1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 9260
        mmTop = 529
        mmWidth = 12192
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
        DataField = 'WKNO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 46831
        mmTop = 529
        mmWidth = 2709
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
        DataField = 'SECTO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 56356
        mmTop = 529
        mmWidth = 2709
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
        DataField = 'SECTT'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 65088
        mmTop = 529
        mmWidth = 1355
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
        DataField = 'SECTC'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 80698
        mmTop = 529
        mmWidth = 1355
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
        DataField = 'tplant'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 2381
        mmTop = 529
        mmWidth = 3133
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
        DataField = 'SECTT1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 72761
        mmTop = 529
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WDAY'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 31750
        mmTop = 529
        mmWidth = 7144
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
        DataField = 'SECTO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 93335
        mmTop = 529
        mmWidth = 2709
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WKDAY'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 23813
        mmTop = 529
        mmWidth = 4699
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHIFT_I'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2910
        mmLeft = 40746
        mmTop = 529
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OSECT'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2879
        mmLeft = 85990
        mmTop = 529
        mmWidth = 1355
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'M1'
      DataPipeline = ppBDEPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentColumn = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 59531
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 21167
          mmLeft = 265
          mmTop = 9260
          mmWidth = 97102
          BandType = 5
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl working days (WD): '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 1323
          mmTop = 13758
          mmWidth = 25485
          BandType = 5
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(ii) Ttl weekly rest days (RD): '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 50536
          mmTop = 20108
          mmWidth = 31877
          BandType = 5
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(i) Ttl legal holidays (H): '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 5292
          mmTop = 20108
          mmWidth = 26374
          BandType = 5
          GroupNo = 0
        end
        object S01: TppLabel
          UserName = 'S01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 86519
          mmTop = 20108
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object S02: TppLabel
          UserName = 'S02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '              '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 35190
          mmTop = 20108
          mmWidth = 9483
          BandType = 5
          GroupNo = 0
        end
        object s03: TppLabel
          UserName = 's03'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 28310
          mmTop = 13758
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '/ Weighted Average of working hrs/working day =   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 32544
          mmTop = 26723
          mmWidth = 55033
          BandType = 5
          GroupNo = 0
        end
        object s04: TppLabel
          UserName = 's04'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '            '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 87048
          mmTop = 26723
          mmWidth = 8128
          BandType = 5
          GroupNo = 0
        end
        object d001: TppLabel
          UserName = 'd001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 53711
          mmTop = 1323
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object n1001: TppLabel
          UserName = 'n1001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 61119
          mmTop = 1323
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object n2001: TppLabel
          UserName = 'n2001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 68792
          mmTop = 1323
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object o1001: TppLabel
          UserName = 'o1001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 76729
          mmTop = 1323
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object o2001: TppLabel
          UserName = 'o2001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 89165
          mmTop = 1323
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object ppLabel35: TppLabel
          UserName = 'Label35'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl days of this month: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 1323
          mmTop = 10319
          mmWidth = 24553
          BandType = 5
          GroupNo = 0
        end
        object s05: TppLabel
          UserName = 's05'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '           '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 27781
          mmTop = 10319
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label41'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl non-working days (H + RD): '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 1323
          mmTop = 16933
          mmWidth = 34248
          BandType = 5
          GroupNo = 0
        end
        object s06: TppLabel
          UserName = 's06'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '              '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 42069
          mmTop = 16933
          mmWidth = 9483
          BandType = 5
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl working hrs =   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 1058
          mmTop = 26723
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object s07: TppLabel
          UserName = 's07'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '            '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 21696
          mmTop = 26723
          mmWidth = 8202
          BandType = 5
          GroupNo = 0
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl Work Section Hr  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 1058
          mmTop = 1323
          mmWidth = 22733
          BandType = 5
          GroupNo = 0
        end
        object ppLabel38: TppLabel
          UserName = 'Label38'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Summary :- '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 1058
          mmTop = 5027
          mmWidth = 17357
          BandType = 5
          GroupNo = 0
        end
        object ppLabel39: TppLabel
          UserName = 'Label39'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Capacity loss due to official holiday [H/(WD+H) %]: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 7938
          mmTop = 23283
          mmWidth = 55626
          BandType = 5
          GroupNo = 0
        end
        object s08: TppLabel
          UserName = 's08'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '          '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 69850
          mmTop = 23283
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object o3001: TppLabel
          UserName = 'o3001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '      '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2879
          mmLeft = 83249
          mmTop = 1323
          mmWidth = 4064
          BandType = 5
          GroupNo = 0
        end
        object rm01: TppMemo
          UserName = 'rm01'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '            '
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 28310
          mmLeft = 1058
          mmTop = 30956
          mmWidth = 96044
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'WKNO'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentColumn = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLabel32: TppLabel
          UserName = 'Label32'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sub-total (week: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 1852
          mmTop = 1058
          mmWidth = 18330
          BandType = 5
          GroupNo = 1
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'WKNO'
          DataPipeline = ppBDEPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2879
          mmLeft = 20108
          mmTop = 1058
          mmWidth = 2709
          BandType = 5
          GroupNo = 1
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = ')  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 23548
          mmTop = 1058
          mmWidth = 2117
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTT1'
          DataPipeline = ppBDEPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2879
          mmLeft = 57944
          mmTop = 1058
          mmWidth = 16171
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTC'
          DataPipeline = ppBDEPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2879
          mmLeft = 66940
          mmTop = 1058
          mmWidth = 15071
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTT'
          DataPipeline = ppBDEPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2879
          mmLeft = 51594
          mmTop = 1058
          mmWidth = 14817
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTO'
          DataPipeline = ppBDEPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2879
          mmLeft = 43921
          mmTop = 1058
          mmWidth = 15155
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTO'
          DataPipeline = ppBDEPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2879
          mmLeft = 80889
          mmTop = 794
          mmWidth = 15155
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'OSECT'
          DataPipeline = ppBDEPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2879
          mmLeft = 72114
          mmTop = 1058
          mmWidth = 15198
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object siLang1: TsiLang
    Version = '6.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    LangDelim = 1
    LangNames.Strings = (
      'Traditional Chinese'
      'English'
      'Bengali')
    Language = 'Traditional Chinese'
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
    Left = 600
    Top = 16
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00660074007900630061006C0065006E00
      6400610072000100E05EE565C66601004600740079002000430061006C006500
      6E00640061007200010001000D000A005300650074005300740061006E006400
      610072006400430061006C0065006E0064006100720031000100530065007400
      20005300740061006E0064006100720064002000430061006C0065006E006400
      610072000100010001000D000A005300650074005300740061006E0064006100
      7200430061006C0065006E006400610072003100010053006500740020005300
      740061006E0064006100720064002000430061006C0065006E00640061007200
      0100010001000D000A004D006F006400690066007900430061006C0065006E00
      640061007200310001004D006F0064006900660079002000430061006C006500
      6E006400610072000100010001000D000A004300680061006E00670065004300
      61006C0065006E00640061007200640065007300630072006900700074006900
      6F006E00310001004300680061006E00670065002000430061006C0065006E00
      64006100720020006400650073006300720069007000740069006F006E000100
      010001000D000A00700070004C006100620065006C0031000100540042005300
      C9621F752275486587733158688828003200300030003200745EA65E29000100
      010001000D000A00700070004C006100620065006C00320001000867FD4E0100
      010001000D000A00700070004C006100620065006C0033000100E5651F670100
      010001000D000A00700070004C006100620065006C0034000100685401000100
      01000D000A00700070004C006100620065006C0035000100EE76196AC07B7865
      0100010001000D000A00700070004C006100620065006C0036000100FE73C16C
      C07B78650100010001000D000A00700070004C006100620065006C0037000100
      EE76196A28004D0054004D00550029000100010001000D000A00700070004C00
      6100620065006C0038000100FE73C16C28004D0054004D005500290001000100
      01000D000A00700070004C006100620065006C00390001001F75227548658773
      25000100010001000D000A00700070004C006100620065006C00310030000100
      0854088A3A000100010001000D000A00700065007200630065006E0074003100
      0100700065007200630065006E00740031000100010001000D000A006D006200
      01006D0062000100010001000D000A0074006900740069006C00650030003100
      0100E05EE55D5C4FE565C6660100010001000D000A007400690074006C006500
      30003200010048004B0020004F00660066006900630065000100010001000D00
      0A006C0069006E00650030003100010053004C000100010001000D000A007000
      70004C006100620065006C003100340001004400610074006500200046007200
      6F006D000100010001000D000A00640061007400650030003100010032003000
      300036002F00300034002F00300031000100010001000D000A00700070004C00
      6100620065006C0031003600010054006F000100010001000D000A0064006100
      7400650030003200010032003000300036002F00310032002F00330031000100
      010001000D000A00700070004C006100620065006C0031003800010050007200
      69006E0074006500640020006F006E000100010001000D000A00700070004C00
      6100620065006C0031003900010050006100670065000100010001000D000A00
      700070004C006100620065006C00320030000100560065007200730069006F00
      6E003A00200032002E0036002E0030000100010001000D000A00700070004C00
      6100620065006C0031003500010044006100740065000100010001000D000A00
      700070004C006100620065006C003100370001005700650065006B0001000100
      01000D000A00700070004C006100620065006C0032003100010057006F007200
      6B002000530065006300740069006F006E002000480072000100010001000D00
      0A00700070004C006100620065006C0032003300010044006500660061007500
      6C0074000100010001000D000A00700070004C006100620065006C0032003400
      0100430075007200720065006E0074000100010001000D000A00700070004C00
      6100620065006C003200370001004E0031000100010001000D000A0070007000
      4C006100620065006C003200380001004F00540031000100010001000D000A00
      700070004C006100620065006C00320035000100530074006100740075007300
      0100010001000D000A0074006900740069006C00650030003300010048004B00
      20004F00660066006900630065000100010001000D000A00700070004C006100
      620065006C003300330001004E0032000100010001000D000A00700070004C00
      6100620065006C00320036000100540054004C000100010001000D000A007000
      70004C006100620065006C003200390001005700650065006B00200001000100
      01000D000A00700070004C006100620065006C00330030000100440061007900
      20000100010001000D000A00700070004C006100620065006C00330031000100
      200020002300200020000100010001000D000A00700070004C00610062006500
      6C00310031000100540074006C00200077006F0072006B0069006E0067002000
      6400610079007300200028005700440029003A0020000100010001000D000A00
      700070004C006100620065006C00310032000100280069006900290020005400
      74006C0020007700650065006B006C0079002000720065007300740020006400
      61007900730020002800520029003A0020000100010001000D000A0070007000
      4C006100620065006C003100330001002800690029002000540074006C002000
      6F006600660069006300690061006C00200068006F006C006900640061007900
      730020002800480029003A0020000100010001000D000A00700070004C006100
      620065006C003200320001002F00200057006500690067006800740065006400
      2000410076006500720061006700650020006F006600200077006F0072006B00
      69006E00670020006800720073002F0077006F0072006B0069006E0067002000
      64006100790020003D002000200020000100010001000D000A00700070004C00
      6100620065006C00330035000100540074006C00200064006100790073002000
      6F0066002000740068006900730020006D006F006E00740068003A0020000100
      010001000D000A00730030003500010020002000200020002000200020002000
      2000200020000100010001000D000A00700070004C006100620065006C003300
      320001005300750062002D0074006F00740061006C0020002800770065006500
      6B003A0020000100010001000D000A00700070004C006100620065006C003300
      340001002900200020000100010001000D000A00470072006F00750070004200
      6F0078003100010042661F67010050006500720069006F006400200052006100
      6E0067006500010001000D000A004C006100620065006C00310001009E5F2000
      0100460072006F006D00010001000D000A004C006100620065006C0032000100
      30522000010054006F00010001000D000A004C006100620065006C0033000100
      E05E0100460074007900010001000D000A006F007000740069006F006E003100
      010031901F75227542669395200028000F5C42662900010057006F0072006B00
      69006E00670020004800720073002F007700650065006B002000280048007200
      73002900010001000D000A006F007000740069006F006E00320001003190E55D
      5C4F42669395200028000F5C42662900010057006F0072006B0069006E006700
      20004800720073002F007700650065006B002000280048007200730029000100
      01000D000A005300700065006500640042007500740074006F006E0031000100
      BA789A5B01004F004B00010001000D000A00420069007400420074006E003200
      0100DD4F585B01005300610076006500010001000D000A004200690074004200
      74006E00340001001098BD890100500072006500760069006500770001000100
      0D000A00420069007400420074006E003300010043006F006E00660069007200
      6D000100010001000D000A00420069007400420074006E003100010041007000
      700072006F00760065000100010001000D000A00420069007400420074006E00
      350001004100700070006C007900200074006F000100010001000D000A004200
      69007400420074006E003600010099503B8A0100450078006900740001000100
      0D000A00700070004C006100620065006C003400300001005300680069006600
      74006500640020000100010001000D000A00700070004C006100620065006C00
      340031000100540074006C0020006E006F006E002D0077006F0072006B006900
      6E0067002000640061007900730020002800480020002B002000520029003A00
      20000100010001000D000A00420069007400420074006E00370001000090FA51
      0100010001000D000A00700070004C006100620065006C003400320001004F00
      540032000100010001000D000A00530030003200010020002000200020002000
      2000200020002000200020002000200020000100010001000D000A0073003000
      3400010020002000200020002000200020002000200020002000200001000100
      01000D000A007300300036000100200020002000200020002000200020002000
      200020002000200020000100010001000D000A00700070004C00610062006500
      6C00330036000100540074006C00200077006F0072006B0069006E0067002000
      68007200730020003D002000200020000100010001000D000A00730030003700
      0100200020002000200020002000200020002000200020002000010001000100
      0D000A00700070004C006100620065006C00330037000100540074006C002000
      57006F0072006B002000530065006300740069006F006E002000480072002000
      20000100010001000D000A00700070004C006100620065006C00330038000100
      530075006D006D0061007200790020003A002D0020000100010001000D000A00
      700070004C006100620065006C00330039000100430061007000610063006900
      7400790020006C006F00730073002000640075006500200074006F0020006F00
      6600660069006300690061006C00200068006F006C0069006400610079002000
      5B0048002F002800570044002B0048002900200025005D003A00200001000100
      01000D000A007300300038000100200020002000200020002000200020002000
      20000100010001000D000A006F00330030003000310001002000200020002000
      200020000100010001000D000A0072006D003000310001002000200020002000
      200020002000200020002000200020000100010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A005400660072006D006600740079006300
      61006C0065006E0064006100720001004D0053002000530061006E0073002000
      5300650072006900660001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C003100010043006F0075007200690065007200
      20004E006500770001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003200010043006F00750072006900650072002000
      4E006500770001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C003300010043006F007500720069006500720020004E00
      6500770001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003400010043006F007500720069006500720020004E006500
      770001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C003500010043006F007500720069006500720020004E0065007700
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C003600010043006F007500720069006500720020004E00650077000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C003700010043006F007500720069006500720020004E006500770001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3800010043006F007500720069006500720020004E0065007700010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003900
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003200
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003300
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003400
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003500
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003600
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003700
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003800
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003000
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A007000700044004200430061006C0063003100
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A007000700044004200430061006C0063003200
      010043006F007500720069006500720020004E00650077000100540061006800
      6F006D006100010001000D000A0078006B00010043006F007500720069006500
      720020004E006500770001005400610068006F006D006100010001000D000A00
      700065007200630065006E0074003100010043006F0075007200690065007200
      20004E006500770001005400610068006F006D006100010001000D000A006D00
      6200010043006F007500720069006500720020004E0065007700010054006100
      68006F006D006100010001000D000A0074006900740069006C00650030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007400690074006C00650030003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A006C0069006E006500300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0031003400010041007200690061006C000100
      5400610068006F006D006100010001000D000A00640061007400650030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003600010041007200690061006C00
      01005400610068006F006D006100010001000D000A0064006100740065003000
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100380001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700053007900
      7300740065006D005600610072006900610062006C0065003100010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C0031003900010041007200690061006C00010054006100
      68006F006D006100010001000D000A0070007000530079007300740065006D00
      5600610072006900610062006C0065003200010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0032003000010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003500010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C0031003700010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003200
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003200330001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0032003400010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00320037000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0032003800010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0032003500010041007200690061006C0001005400610068006F006D006100
      010001000D000A0074006900740069006C006500300033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0033003300010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003600
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003900010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0033003000010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200540065007800740031003000010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      7800740031003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400310032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200540065007800740031003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      65007800740031003600010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740031003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003100350001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      54006500780074003900010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740031003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003100380001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0031003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0031003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A00530030003100010041007200
      690061006C0001005400610068006F006D006100010001000D000A0053003000
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00730030003300010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00320032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      730030003400010041007200690061006C0001005400610068006F006D006100
      010001000D000A006400300030003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A006E00310030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A006E00
      3200300030003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A006F003100300030003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A006F003200300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0033003500010041007200690061006C00
      01005400610068006F006D006100010001000D000A0073003000350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0033003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200540065007800
      740031003900010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0033003400010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200430061006C0063003800010041007200690061006C00010054006100
      68006F006D006100010001000D000A007000700044004200430061006C006300
      3900010041007200690061006C0001005400610068006F006D00610001000100
      0D000A007000700044004200430061006C006300310030000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C00630031003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A007000700044004200430061006C006300
      31003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00340030000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200540065007800740032003000010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003400
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00730030003600010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00340032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200540065007800740032003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0033003600010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00730030003700010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      33003700010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330038000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0033003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A00730030003800010041007200690061006C00
      01005400610068006F006D006100010001000D000A006F003300300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A0072006D0030003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200430061006C00630033000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A00700070005200650070006F007200740032002E00
      43006F006C0075006D006E0050006F0073006900740069006F006E0073000100
      30002E00320035002C0034002E0031003300350034000100010001000D000A00
      43006F006D0062006F0042006F00780031002E004900740065006D0073000100
      53004C002C00470047002C00520058002C0043004C000100010001000D000A00
      6F007000740069006F006E0031002E004900740065006D007300010043006100
      6C0065006E0064006100720031002C00430061006C0065006E00640061007200
      32002C00430061006C0065006E0064006100720033002C00430061006C006500
      6E0064006100720034002C00430061006C0065006E0064006100720035002C00
      430061006C0065006E0064006100720036002C00430061006C0065006E006400
      6100720037002C00430061006C0065006E006400610072003800010001000100
      0D000A006F007000740069006F006E0032002E004900740065006D0073000100
      430061006C0065006E0064006100720031002C00430061006C0065006E006400
      6100720032002C00430061006C0065006E0064006100720033002C0043006100
      6C0065006E0064006100720034002C00430061006C0065006E00640061007200
      35002C00430061006C0065006E0064006100720036002C00430061006C006500
      6E0064006100720037002C00430061006C0065006E0064006100720038000100
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
      640065000D000A007700650065006B00350032002E0043006F006D006D006100
      6E00640054006500780074000100730065006C0065006300740020002A002000
      660072006F006D002000740070006C0061006E0074005F0077006B0035003200
      20007700680065007200650020006F00700074005F0063003D00310020006100
      6E0064002000640061007400650031003E003D00270032003000310039002D00
      300034002D00300031002700200061006E006400200064006100740065003100
      3C003D00270032003000310039002D00300035002D0033003100270001000100
      01000D000A007700650065006B00350032002E00500072006F00760069006400
      650072004E0061006D0065000100640073007000730063006800650064007500
      6C0065000100010001000D000A005100750065007200790031002E0050007200
      6F00760069006400650072004E0061006D006500010064007300700073006300
      68006500640075006C0065000100010001000D000A0051007500650072007900
      32002E00500072006F00760069006400650072004E0061006D00650001006400
      730070007300630068006500640075006C0065000100010001000D000A004300
      6C00690065006E007400440061007400610053006500740033002E0043006F00
      6D006D0061006E00640054006500780074000100730065006C00650063007400
      20002A002000660072006F006D002000740070006C0061006E0074005F007700
      6B00350032002000770068006500720065002000740070006C0061006E007400
      3D00270053004C002700200061006E0064002000640061007400650031003E00
      3D00270032003000300036002F00300034002F00300031002700200061006E00
      64002000640061007400650031003C003D00270032003000300036002F003100
      32002F003300310027000100010001000D000A0043006C00690065006E007400
      440061007400610053006500740033002E00500072006F007600690064006500
      72004E0061006D00650001006400730070007300630068006500640075006C00
      65000100010001000D000A007000700042004400450050006900700065006C00
      69006E00650031002E0055007300650072004E0061006D006500010042004400
      450050006900700065006C0069006E00650031000100010001000D000A007000
      70005200650070006F007200740031002E004400650076006900630065005400
      7900700065000100530063007200650065006E000100010001000D000A007000
      70004C006100620065006C0031002E0055007300650072004E0061006D006500
      01004C006100620065006C0031000100010001000D000A007000700053006800
      61007000650031002E0055007300650072004E0061006D006500010053006800
      61007000650031000100010001000D000A00700070004C006100620065006C00
      32002E0055007300650072004E0061006D00650001004C006100620065006C00
      32000100010001000D000A00700070004C006100620065006C0033002E005500
      7300650072004E0061006D00650001004C006100620065006C00330001000100
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
      0A007000700044004200540065007800740031002E0044006100740061004600
      690065006C00640001006D00740068000100010001000D000A00700070004400
      4200540065007800740031002E0055007300650072004E0061006D0065000100
      44004200540065007800740031000100010001000D000A007000700044004200
      540065007800740032002E0044006100740061004600690065006C0064000100
      640074000100010001000D000A00700070004400420054006500780074003200
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      32000100010001000D000A007000700044004200540065007800740033002E00
      44006100740061004600690065006C006400010077006B000100010001000D00
      0A007000700044004200540065007800740033002E0055007300650072004E00
      61006D006500010044004200540065007800740033000100010001000D000A00
      7000700044004200540065007800740034002E00440061007400610046006900
      65006C00640001006D00620031000100010001000D000A007000700044004200
      540065007800740034002E0055007300650072004E0061006D00650001004400
      4200540065007800740034000100010001000D000A0070007000440042005400
      65007800740035002E0044006100740061004600690065006C00640001007800
      6B0031000100010001000D000A00700070004400420054006500780074003500
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      35000100010001000D000A007000700044004200540065007800740036002E00
      44006100740061004600690065006C00640001006D0062003200010001000100
      0D000A007000700044004200540065007800740036002E005500730065007200
      4E0061006D006500010044004200540065007800740036000100010001000D00
      0A007000700044004200540065007800740037002E0044006100740061004600
      690065006C006400010078006B0032000100010001000D000A00700070004400
      4200540065007800740037002E0055007300650072004E0061006D0065000100
      44004200540065007800740037000100010001000D000A007000700044004200
      540065007800740038002E0044006100740061004600690065006C0064000100
      64006900660066000100010001000D000A007000700044004200540065007800
      740038002E0055007300650072004E0061006D00650001004400420054006500
      7800740038000100010001000D000A00700070004C006100620065006C003100
      30002E0055007300650072004E0061006D00650001004C006100620065006C00
      310030000100010001000D000A007000700044004200430061006C0063003100
      2E0044006100740061004600690065006C00640001006D006200310001000100
      01000D000A007000700044004200430061006C00630031002E00550073006500
      72004E0061006D006500010044004200430061006C0063003100010001000100
      0D000A007000700044004200430061006C00630032002E004400610074006100
      4600690065006C006400010078006B0031000100010001000D000A0070007000
      44004200430061006C00630032002E0055007300650072004E0061006D006500
      010044004200430061006C00630032000100010001000D000A0078006B002E00
      44006100740061004600690065006C006400010078006B003200010001000100
      0D000A0078006B002E0055007300650072004E0061006D006500010078006B00
      0100010001000D000A00700065007200630065006E00740031002E0055007300
      650072004E0061006D0065000100700065007200630065006E00740031000100
      010001000D000A006D0062002E0055007300650072004E0061006D0065000100
      6D0062000100010001000D000A00700070004400420050006900700065006C00
      69006E00650031002E0055007300650072004E0061006D006500010044004200
      50006900700065006C0069006E00650031000100010001000D000A0070007000
      5200650070006F007200740032002E0044006500760069006300650054007900
      700065000100530063007200650065006E000100010001000D000A0074006900
      740069006C006500300031002E0055007300650072004E0061006D0065000100
      74006900740069006C006500300031000100010001000D000A00740069007400
      6C006500300032002E0055007300650072004E0061006D006500010074006900
      74006C006500300032000100010001000D000A006C0069006E00650030003100
      2E0055007300650072004E0061006D00650001006C0069006E00650030003100
      0100010001000D000A00700070004C006100620065006C00310034002E005500
      7300650072004E0061006D00650001004C006100620065006C00310034000100
      010001000D000A006400610074006500300031002E0055007300650072004E00
      61006D00650001006400610074006500300031000100010001000D000A007000
      70004C006100620065006C00310036002E0055007300650072004E0061006D00
      650001004C006100620065006C00310036000100010001000D000A0064006100
      74006500300032002E0055007300650072004E0061006D006500010064006100
      74006500300032000100010001000D000A00700070004C006100620065006C00
      310038002E0055007300650072004E0061006D00650001004C00610062006500
      6C00310038000100010001000D000A0070007000530079007300740065006D00
      5600610072006900610062006C00650031002E0055007300650072004E006100
      6D0065000100530079007300740065006D005600610072006900610062006C00
      650031000100010001000D000A00700070004C006100620065006C0031003900
      2E0055007300650072004E0061006D00650001004C006100620065006C003100
      39000100010001000D000A0070007000530079007300740065006D0056006100
      72006900610062006C00650032002E0055007300650072004E0061006D006500
      0100530079007300740065006D005600610072006900610062006C0065003200
      0100010001000D000A00700070004C006100620065006C00320030002E005500
      7300650072004E0061006D00650001004C006100620065006C00320030000100
      010001000D000A00700070005300680061007000650032002E00550073006500
      72004E0061006D00650001005300680061007000650032000100010001000D00
      0A00700070004C006100620065006C00310035002E0055007300650072004E00
      61006D00650001004C006100620065006C00310035000100010001000D000A00
      700070004C006100620065006C00310037002E0055007300650072004E006100
      6D00650001004C006100620065006C00310037000100010001000D000A007000
      70004C006100620065006C00320031002E0055007300650072004E0061006D00
      650001004C006100620065006C00320031000100010001000D000A0070007000
      4C006100620065006C00320033002E0055007300650072004E0061006D006500
      01004C006100620065006C00320033000100010001000D000A00700070004C00
      6100620065006C00320034002E0055007300650072004E0061006D0065000100
      4C006100620065006C00320034000100010001000D000A00700070004C006100
      620065006C00320037002E0055007300650072004E0061006D00650001004C00
      6100620065006C00320037000100010001000D000A00700070004C0061006200
      65006C00320038002E0055007300650072004E0061006D00650001004C006100
      620065006C00320038000100010001000D000A00700070004C0069006E006500
      32002E0055007300650072004E0061006D00650001004C0069006E0065003200
      0100010001000D000A00700070004C0069006E00650033002E00550073006500
      72004E0061006D00650001004C0069006E00650033000100010001000D000A00
      700070004C0069006E00650034002E0055007300650072004E0061006D006500
      01004C0069006E00650034000100010001000D000A00700070004C0061006200
      65006C00320035002E0055007300650072004E0061006D00650001004C006100
      620065006C00320035000100010001000D000A00700070004C0069006E006500
      35002E0055007300650072004E0061006D00650001004C0069006E0065003500
      0100010001000D000A0074006900740069006C006500300033002E0055007300
      650072004E0061006D006500010074006900740069006C006500300033000100
      010001000D000A00700070004C006100620065006C00330033002E0055007300
      650072004E0061006D00650001004C006100620065006C003300330001000100
      01000D000A00700070004C006100620065006C00320036002E00550073006500
      72004E0061006D00650001004C006100620065006C0032003600010001000100
      0D000A00700070004C0069006E00650031002E0055007300650072004E006100
      6D00650001004C0069006E00650031000100010001000D000A00700070004C00
      6100620065006C00320039002E0055007300650072004E0061006D0065000100
      4C006100620065006C00320039000100010001000D000A00700070004C006100
      620065006C00330030002E0055007300650072004E0061006D00650001004C00
      6100620065006C00330030000100010001000D000A00700070004C0061006200
      65006C00330031002E0055007300650072004E0061006D00650001004C006100
      620065006C00330031000100010001000D000A00700070004400420054006500
      78007400310030002E0044006100740061004600690065006C00640001004400
      41005400450031000100010001000D000A007000700044004200540065007800
      7400310030002E0055007300650072004E0061006D0065000100440042005400
      650078007400310030000100010001000D000A00700070004400420054006500
      78007400310031002E0044006100740061004600690065006C00640001005700
      4B004E004F000100010001000D000A0070007000440042005400650078007400
      310031002E0055007300650072004E0061006D00650001004400420054006500
      78007400310031000100010001000D000A007000700044004200540065007800
      7400310032002E0044006100740061004600690065006C006400010053004500
      430054004F000100010001000D000A0070007000440042005400650078007400
      310032002E0055007300650072004E0061006D00650001004400420054006500
      78007400310032000100010001000D000A007000700044004200540065007800
      7400310033002E0044006100740061004600690065006C006400010053004500
      4300540054000100010001000D000A0070007000440042005400650078007400
      310033002E0055007300650072004E0061006D00650001004400420054006500
      78007400310033000100010001000D000A007000700044004200540065007800
      7400310036002E0044006100740061004600690065006C006400010053004500
      4300540043000100010001000D000A0070007000440042005400650078007400
      310036002E0055007300650072004E0061006D00650001004400420054006500
      78007400310036000100010001000D000A007000700044004200540065007800
      7400310034002E0044006100740061004600690065006C006400010074007000
      6C0061006E0074000100010001000D000A007000700044004200540065007800
      7400310034002E0055007300650072004E0061006D0065000100440042005400
      650078007400310034000100010001000D000A00700070004400420054006500
      78007400310035002E0044006100740061004600690065006C00640001005300
      450043005400540031000100010001000D000A00700070004400420054006500
      78007400310035002E0055007300650072004E0061006D006500010044004200
      5400650078007400310035000100010001000D000A0070007000440042005400
      65007800740039002E0044006100740061004600690065006C00640001005700
      4400410059000100010001000D000A0070007000440042005400650078007400
      39002E0055007300650072004E0061006D006500010044004200540065007800
      740039000100010001000D000A00700070004400420054006500780074003100
      37002E0044006100740061004600690065006C00640001005300450043005400
      4F000100010001000D000A007000700044004200540065007800740031003700
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      310037000100010001000D000A00700070004400420054006500780074003100
      38002E0044006100740061004600690065006C006400010057004B0044004100
      59000100010001000D000A007000700044004200540065007800740031003800
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      3100300031000100010001000D000A0070007000470072006F00750070003100
      2E0042007200650061006B004E0061006D00650001004D003100010001000100
      0D000A0070007000470072006F007500700031002E0055007300650072004E00
      61006D0065000100470072006F007500700031000100010001000D000A007000
      70005300680061007000650033002E0055007300650072004E0061006D006500
      01005300680061007000650033000100010001000D000A00700070004C006100
      620065006C00310031002E0055007300650072004E0061006D00650001004C00
      6100620065006C00310031000100010001000D000A00700070004C0061006200
      65006C00310032002E0055007300650072004E0061006D00650001004C006100
      620065006C00310032000100010001000D000A00700070004C00610062006500
      6C00310033002E0055007300650072004E0061006D00650001004C0061006200
      65006C00310033000100010001000D000A005300300031002E00550073006500
      72004E0061006D00650001005300300031000100010001000D000A0053003000
      32002E0055007300650072004E0061006D006500010053003000320001000100
      01000D000A007300300033002E0055007300650072004E0061006D0065000100
      7300300033000100010001000D000A00700070004C006100620065006C003200
      32002E0055007300650072004E0061006D00650001004C006100620065006C00
      320032000100010001000D000A007300300034002E0055007300650072004E00
      61006D00650001007300300034000100010001000D000A006400300030003100
      2E0055007300650072004E0061006D0065000100640030003000310001000100
      01000D000A006E0031003000300031002E0055007300650072004E0061006D00
      650001006E0031003000300031000100010001000D000A006E00320030003000
      31002E0055007300650072004E0061006D00650001006E003200300030003100
      0100010001000D000A006F0031003000300031002E0055007300650072004E00
      61006D00650001006F0031003000300031000100010001000D000A006F003200
      3000300031002E0055007300650072004E0061006D00650001006F0032003000
      300031000100010001000D000A00700070004C006100620065006C0033003500
      2E0055007300650072004E0061006D00650001004C006100620065006C003300
      35000100010001000D000A007300300035002E0055007300650072004E006100
      6D00650001007300300035000100010001000D000A0070007000470072006F00
      7500700032002E0042007200650061006B004E0061006D006500010057004B00
      4E004F000100010001000D000A0070007000470072006F007500700032002E00
      55007300650072004E0061006D0065000100470072006F007500700032000100
      010001000D000A00700070004C006100620065006C00330032002E0055007300
      650072004E0061006D00650001004C006100620065006C003300320001000100
      01000D000A0070007000440042005400650078007400310039002E0044006100
      740061004600690065006C006400010057004B004E004F000100010001000D00
      0A0070007000440042005400650078007400310039002E005500730065007200
      4E0061006D006500010044004200540065007800740031003900010001000100
      0D000A00700070004C006100620065006C00330034002E005500730065007200
      4E0061006D00650001004C006100620065006C00330034000100010001000D00
      0A007000700044004200430061006C00630038002E0044006100740061004600
      690065006C00640001005300450043005400540031000100010001000D000A00
      7000700044004200430061006C00630038002E0055007300650072004E006100
      6D006500010044004200430061006C00630038000100010001000D000A007000
      700044004200430061006C00630039002E004400610074006100460069006500
      6C0064000100530045004300540043000100010001000D000A00700070004400
      4200430061006C00630039002E0055007300650072004E0061006D0065000100
      44004200430061006C00630039000100010001000D000A007000700044004200
      430061006C006300310030002E0044006100740061004600690065006C006400
      0100530045004300540054000100010001000D000A0070007000440042004300
      61006C006300310030002E0055007300650072004E0061006D00650001004400
      4200430061006C006300310030000100010001000D000A007000700044004200
      430061006C006300310031002E0044006100740061004600690065006C006400
      010053004500430054004F000100010001000D000A0070007000440042004300
      61006C006300310031002E0055007300650072004E0061006D00650001004400
      4200430061006C006300310031000100010001000D000A007000700044004200
      430061006C006300310032002E0044006100740061004600690065006C006400
      010053004500430054004F000100010001000D000A0070007000440042004300
      61006C006300310032002E0055007300650072004E0061006D00650001004400
      4200430061006C006300310032000100010001000D000A004400610074006500
      450064006900740031002E004400690061006C006F0067005400690074006C00
      65000100530065006C0065006300740020006100200044006100740065000100
      010001000D000A004400610074006500450064006900740031002E0054006500
      78007400010020002000200020002F00200020002F0020002000010001000100
      0D000A004400610074006500450064006900740032002E004400690061006C00
      6F0067005400690074006C0065000100530065006C0065006300740020006100
      200044006100740065000100010001000D000A00440061007400650045006400
      6900740032002E005400650078007400010020002000200020002F0020002000
      2F00200020000100010001000D000A00700070004C0069006E00650036002E00
      55007300650072004E0061006D00650001004C0069006E006500360001000100
      01000D000A00700070004C006100620065006C00340030002E00550073006500
      72004E0061006D00650001004C006100620065006C0034003000010001000100
      0D000A0070007000440042005400650078007400320030002E00440061007400
      61004600690065006C0064000100530048004900460054005F00490001000100
      01000D000A0070007000440042005400650078007400320030002E0055007300
      650072004E0061006D0065000100440042005400650078007400320030000100
      010001000D000A00700070004C006100620065006C00340031002E0055007300
      650072004E0061006D00650001004C006100620065006C003400310001000100
      01000D000A007300300036002E0055007300650072004E0061006D0065000100
      7300300036000100010001000D000A00700070004C0069006E00650037002E00
      55007300650072004E0061006D00650001004C0069006E006500370001000100
      01000D000A00700070004C0069006E00650038002E0055007300650072004E00
      61006D00650001004C0069006E00650038000100010001000D000A0070007000
      4C0069006E00650039002E0055007300650072004E0061006D00650001004C00
      69006E00650039000100010001000D000A00700070004C0069006E0065003100
      30002E0055007300650072004E0061006D00650001004C0069006E0065003100
      30000100010001000D000A00700070004C0069006E006500310031002E005500
      7300650072004E0061006D00650001004C0069006E0065003100300031000100
      010001000D000A00700070004C0069006E006500310032002E00550073006500
      72004E0061006D00650001004C0069006E006500310030003200010001000100
      0D000A00700070004C006100620065006C00340032002E005500730065007200
      4E0061006D00650001004C006100620065006C00340032000100010001000D00
      0A00700070004C0069006E006500310033002E0055007300650072004E006100
      6D00650001004C0069006E006500310033000100010001000D000A0070007000
      440042005400650078007400320031002E004400610074006100460069006500
      6C00640001004F0053004500430054000100010001000D000A00700070004400
      42005400650078007400320031002E0055007300650072004E0061006D006500
      0100440042005400650078007400320031000100010001000D000A0070007000
      4C006100620065006C00330036002E0055007300650072004E0061006D006500
      01004C006100620065006C00330036000100010001000D000A00730030003700
      2E0055007300650072004E0061006D0065000100730030003700010001000100
      0D000A00700070004C006100620065006C00330037002E005500730065007200
      4E0061006D00650001004C006100620065006C00330037000100010001000D00
      0A00700070004C006100620065006C00330038002E0055007300650072004E00
      61006D00650001004C006100620065006C00330038000100010001000D000A00
      700070004C006100620065006C00330039002E0055007300650072004E006100
      6D00650001004C006100620065006C00330039000100010001000D000A007300
      300038002E0055007300650072004E0061006D00650001007300300038000100
      010001000D000A006F0033003000300031002E0055007300650072004E006100
      6D00650001006F0033003000300031000100010001000D000A0072006D003000
      31002E0055007300650072004E0061006D006500010072006D00300031000100
      010001000D000A007000700044004200430061006C00630033002E0044006100
      740061004600690065006C00640001004F005300450043005400010001000100
      0D000A007000700044004200430061006C00630033002E005500730065007200
      4E0061006D006500010044004200430061006C00630033000100010001000D00
      0A00730074004C006F00630061006C00650073005F0055006E00690063006F00
      640065000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B0030005D002E00
      5400690074006C0065002E00430061007000740069006F006E000100E05E0100
      460074007900010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0031005D002E005400690074006C00
      65002E00430061007000740069006F006E000100E5651F670100440061007400
      6500010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0032005D002E005400690074006C0065002E00
      430061007000740069006F006E000100114F47507C0010982D8A010048006F00
      6C0069006400610079007C00440065006600010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003300
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      31901F6701005700650065006B00010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B0034005D002E00
      5400690074006C0065002E00430061007000740069006F006E0001001F661F67
      7E5E010044006100790020006F00660020007400680065002000570065006500
      6B00010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0035005D002E005400690074006C0065002E00
      430061007000740069006F006E0001001F752275C07B42667C00D0639B4F0100
      500072006F00640075006300740069006F006E00200053006500630074007C00
      500072006F0076006900640065006400010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0036005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001001F75
      2275C07B42667C0010982D8A7C004E0031000100500072006F00640075006300
      740069006F006E00200053006500630074007C004400650066007C004E003100
      010001000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B0037005D002E005400690074006C0065002E004300
      61007000740069006F006E0001001F752275C07B42667C0010982D8A7C004E00
      32000100500072006F00640075006300740069006F006E002000530065006300
      74007C004400650066007C004E003200010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0038005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001001F75
      2275C07B42667C0010982D8A7C004F0054000100500072006F00640075006300
      740069006F006E00200053006500630074007C004400650066007C004F005400
      010001000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B0039005D002E005400690074006C0065002E004300
      61007000740069006F006E00010057006F0072006B0020005300650063007400
      69006F006E002000480072007C00430075007200720065006E0074007C004300
      730054000100010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B00310030005D002E00540069007400
      6C0065002E00430061007000740069006F006E000100BF8ADB63010053006800
      69006600740065006400010001000D000A007700650065006B00350032002E00
      49006E0064006500780044006500660073005B0030005D002E00460069006500
      6C00640073000100740070006C0061006E0074003B0064006100740065003100
      0100010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B00310031005D002E005400690074006C006500
      2E00430061007000740069006F006E00010031900F5C088A0100530075006200
      2D00740074006C00200028005700650065006B002900010001000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A005400660072006D00660074007900630061006C0065006E006400
      610072000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003100010041004E00
      530049005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003200010041004E00530049005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003300010041004E00
      530049005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003400010041004E00530049005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003500010041004E00
      530049005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003600010041004E00530049005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003700010041004E00
      530049005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003800010041004E00530049005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003900010041004E00
      530049005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      420054006500780074003100010041004E00530049005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740032000100
      41004E00530049005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004400420054006500780074003300010041004E00530049005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      3400010041004E00530049005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004400420054006500780074003500010041004E00530049005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420054006500
      780074003600010041004E00530049005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004400420054006500780074003700010041004E005300
      49005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      54006500780074003800010041004E00530049005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003100300001004100
      4E00530049005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      44004200430061006C0063003100010041004E00530049005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A007000700044004200430061006C0063003200
      010041004E00530049005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      78006B00010041004E00530049005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700065007200630065006E0074003100010041004E00530049005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A006D006200010041004E005300
      49005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007400690074006900
      6C006500300031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A007400690074006C0065003000320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A006C0069006E006500300031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00310034000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A006400610074006500300031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00310036000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0064006100740065003000
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031003800010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      70007000530079007300740065006D005600610072006900610062006C006500
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031003900010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      70007000530079007300740065006D005600610072006900610062006C006500
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0032003000010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00310035000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00310037000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003200
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0032003300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00320034000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00320037000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003200
      38000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0032003500010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      74006900740069006C006500300033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00330033000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0032003600
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00320039000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00330030000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00330031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003100
      30000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004400420054006500780074003100310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004400420054006500780074003100320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400310033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070007000440042005400
      650078007400310036000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      310034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0070007000440042005400650078007400310035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400390001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400310037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070007000440042005400
      650078007400310038000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003100
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00310033000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A005300300031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A005300300032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0073003000330001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00320032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00730030003400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      64003000300031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A006E0031003000300031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006E00
      32003000300031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A006F0031003000300031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006F00
      32003000300031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0033003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007300300035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      330032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0070007000440042005400650078007400310039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003300340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      44004200430061006C00630038000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420043006100
      6C00630039000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200430061006C00630031003000
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200430061006C00630031003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7000700044004200430061006C00630031003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C00340030000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007000700044004200540065007800
      7400320030000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00340031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A007300300036000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003400
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004400420054006500780074003200310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0033003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00730030003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00330037000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00330038000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00330039000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00730030003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A006F0033003000
      300031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0072006D00300031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      430061006C00630033000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00}
  end
end
