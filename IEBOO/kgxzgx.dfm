object frmkgxzgx: Tfrmkgxzgx
  Left = 58
  Top = 30
  Width = 681
  Height = 499
  BorderIcons = [biSystemMenu]
  Caption = #20379#36984#25799#24037#24207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 304
    Top = 13
    Width = 26
    Height = 13
    Caption = #23450#20301
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 221
    Top = 16
    Width = 3
    Height = 13
    Visible = False
  end
  object Label3: TLabel
    Left = 233
    Top = 16
    Width = 3
    Height = 13
    Visible = False
  end
  object Label4: TLabel
    Left = 237
    Top = 16
    Width = 3
    Height = 13
    Visible = False
  end
  object Label5: TLabel
    Left = 265
    Top = 16
    Width = 3
    Height = 13
    Visible = False
  end
  object Label6: TLabel
    Left = 277
    Top = 16
    Width = 3
    Height = 13
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 48
    Width = 625
    Height = 393
    Color = 11927551
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Cz'
        Title.Alignment = taCenter
        Title.Caption = #36554#31278
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dh'
        Title.Alignment = taCenter
        Title.Caption = #20195#34399
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mc'
        Title.Alignment = taCenter
        Title.Caption = #24037#24207#21517#31281
        Width = 277
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sj'
        Title.Alignment = taCenter
        Title.Caption = #27161#28310' SAH'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Ndxs'
        Title.Alignment = taCenter
        Title.Caption = #38627#24230#31995#25976
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cdxs'
        Title.Alignment = taCenter
        Title.Caption = #25209#37327#31995#25976
        Visible = False
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Sj2'
        Title.Alignment = taCenter
        Title.Caption = 'GSD SAH'
        Width = 93
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 54
    Top = 8
    Width = 30
    Height = 30
    Hint = #30906#23450
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BitBtn1Click
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
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = 8
    Width = 30
    Height = 30
    Hint = #21462#28040
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitBtn2Click
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
  end
  object ComboBox1: TComboBox
    Left = 336
    Top = 11
    Width = 121
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 456
    Top = 11
    Width = 193
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 4
    OnChange = ComboBox2Change
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 124
    Top = 8
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    Left = 192
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    Left = 160
    Top = 8
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_bzgx'
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'cz;mc'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    Left = 96
    Top = 8
  end
end
