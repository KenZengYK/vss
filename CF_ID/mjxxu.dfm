object frmmjxx: Tfrmmjxx
  Left = 200
  Top = 117
  Width = 505
  Height = 220
  Caption = '嘜架建議'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 16
    Top = 48
    Width = 465
    Height = 129
    Brush.Color = clSilver
  end
  object SpeedButton1: TSpeedButton
    Left = 16
    Top = 8
    Width = 30
    Height = 30
    Hint = '退出'
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
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel
    Left = 96
    Top = 15
    Width = 26
    Height = 13
    Caption = '物料'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object bzmj: TDBCheckBox
    Left = 32
    Top = 56
    Width = 89
    Height = 17
    Caption = '標準嘜架'
    DataField = 'Bzmj'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object zbmj: TDBCheckBox
    Left = 176
    Top = 56
    Width = 105
    Height = 17
    Caption = '中邊色差嘜架'
    DataField = 'Zbmj'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object twmj: TDBCheckBox
    Left = 328
    Top = 56
    Width = 97
    Height = 17
    Caption = '頭尾色差嘜架'
    DataField = 'Twmj'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object pzx: TDBCheckBox
    Left = 32
    Top = 80
    Width = 89
    Height = 17
    Caption = '碰撞線'
    DataField = 'Pzx'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object yymj: TDBCheckBox
    Left = 176
    Top = 80
    Width = 97
    Height = 17
    Caption = '陰陽色嘜架'
    DataField = 'Yymj'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object dk: TDBCheckBox
    Left = 32
    Top = 104
    Width = 97
    Height = 17
    Caption = '單款'
    DataField = 'Dk'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object ds: TDBCheckBox
    Left = 176
    Top = 104
    Width = 73
    Height = 17
    Caption = '單色'
    DataField = 'Ds'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object dzd: TDBCheckBox
    Left = 288
    Top = 104
    Width = 65
    Height = 17
    Caption = '單制單'
    DataField = 'Dzd'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object ldz: TDBCheckBox
    Left = 408
    Top = 104
    Width = 65
    Height = 17
    Caption = '拉單張'
    DataField = 'Ldz'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object hk: TDBCheckBox
    Left = 32
    Top = 128
    Width = 97
    Height = 17
    Caption = '混款'
    DataField = 'Hk'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object hs: TDBCheckBox
    Left = 176
    Top = 128
    Width = 65
    Height = 17
    Caption = '混色'
    DataField = 'Hs'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object hzd: TDBCheckBox
    Left = 288
    Top = 128
    Width = 73
    Height = 17
    Caption = '混制單'
    DataField = 'Hzd'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object lhz: TDBCheckBox
    Left = 408
    Top = 128
    Width = 65
    Height = 17
    Caption = '拉合掌'
    DataField = 'Lhz'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object yqxg: TDBCheckBox
    Left = 32
    Top = 152
    Width = 121
    Height = 17
    Caption = '要求修改制單數'
    DataField = 'Yqxg'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object zysc: TDBCheckBox
    Left = 176
    Top = 152
    Width = 217
    Height = 17
    Caption = '注意色差(重新考慮裁床生產損耗)'
    DataField = 'Zysc'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 13
    Width = 161
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object Table1: TTable
    Active = True
    AfterPost = Table1AfterPost
    DatabaseName = 'Cutplan'
    TableName = 'fcwl1.DB'
    Left = 304
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 332
    Top = 8
  end
  object Query1: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 360
    Top = 8
  end
  object Query2: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 388
    Top = 8
  end
  object wl: TQuery
    DatabaseName = 'Cutplan'
    Left = 416
    Top = 8
  end
end
