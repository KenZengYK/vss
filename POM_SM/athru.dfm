object frmathr: Tfrmathr
  Left = 200
  Top = 125
  Width = 377
  Height = 284
  BorderIcons = [biSystemMenu]
  Caption = '權限管理'
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
  object Bevel1: TBevel
    Left = 16
    Top = 64
    Width = 337
    Height = 177
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 16
    Width = 30
    Height = 30
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
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
    Left = 192
    Top = 16
    Width = 129
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    Sorted = True
    TabOrder = 1
    OnChange = ComboBox1Change
  end
  object DBCheckBox1: TDBCheckBox
    Left = 48
    Top = 80
    Width = 81
    Height = 17
    Caption = '基本資料'
    DataField = 'R1'
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
  object DBCheckBox2: TDBCheckBox
    Left = 216
    Top = 80
    Width = 81
    Height = 17
    Caption = '辦尺寸表'
    DataField = 'R2'
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
  object DBCheckBox3: TDBCheckBox
    Left = 48
    Top = 112
    Width = 73
    Height = 17
    Caption = '尺寸表'
    DataField = 'R3'
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
  object DBCheckBox4: TDBCheckBox
    Left = 216
    Top = 112
    Width = 81
    Height = 17
    Caption = '用戶管理'
    DataField = 'R4'
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
  object DBCheckBox5: TDBCheckBox
    Left = 48
    Top = 144
    Width = 97
    Height = 17
    Caption = '權限管理'
    DataField = 'R5'
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
  object DBCheckBox6: TDBCheckBox
    Left = 216
    Top = 144
    Width = 97
    Height = 17
    Caption = '修改容差'
    DataField = 'R6'
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
  object DBCheckBox7: TDBCheckBox
    Left = 48
    Top = 176
    Width = 97
    Height = 17
    Caption = '生產尺寸表'
    DataField = 'R7'
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
  object DBCheckBox8: TDBCheckBox
    Left = 216
    Top = 176
    Width = 113
    Height = 17
    Caption = '修改基本資料'
    DataField = 'R8'
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
  object DBCheckBox9: TDBCheckBox
    Left = 48
    Top = 208
    Width = 97
    Height = 17
    Caption = '修改尺寸表'
    DataField = 'R9'
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
  object DBCheckBox10: TDBCheckBox
    Left = 216
    Top = 208
    Width = 97
    Height = 17
    Caption = '修改辦尺寸表'
    DataField = 'R10'
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
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 100
    Top = 16
  end
  object Table1: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select * from sz_athtbl'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    AfterPost = Table1AfterPost
    Left = 68
    Top = 16
  end
  object Query2: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select stylno from sz_sampsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 168
    Top = 16
  end
  object Query1: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select * from sz_usrtbl'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 136
    Top = 16
  end
end
