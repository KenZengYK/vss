object frmgcfz: Tfrmgcfz
  Left = 78
  Top = 117
  Width = 457
  Height = 210
  Caption = #20998#24202#35336#21123'----'#24489#21046#21046#21934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 20
    Top = 81
    Width = 42
    Height = 13
    Caption = ' '#21046#21934#34399
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 252
    Top = 81
    Width = 26
    Height = 13
    Caption = #27454#34399
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 35
    Top = 113
    Width = 26
    Height = 13
    Caption = #33394#34399
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 23
    Top = 47
    Width = 39
    Height = 13
    Caption = #24037#31243#34399
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 228
    Top = 47
    Width = 52
    Height = 13
    Caption = #20986#24288#26085#26399
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 31
    Top = 14
    Width = 26
    Height = 13
    Caption = #20358#28304
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 240
    Top = 112
    Width = 3
    Height = 13
    Visible = False
  end
  object Label5: TLabel
    Left = 280
    Top = 112
    Width = 3
    Height = 13
    Visible = False
  end
  object Label7: TLabel
    Left = 320
    Top = 112
    Width = 3
    Height = 13
    Visible = False
  end
  object Label8: TLabel
    Left = 360
    Top = 112
    Width = 3
    Height = 13
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 256
    Top = 144
    Width = 57
    Height = 25
    Caption = #30906#23450
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 368
    Top = 144
    Width = 59
    Height = 25
    Caption = #21462#28040
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 11
    Width = 137
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object Edit1: TEdit
    Left = 64
    Top = 45
    Width = 137
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 64
    Top = 77
    Width = 137
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 280
    Top = 77
    Width = 145
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 64
    Top = 109
    Width = 137
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DateEdit1: TDateEdit
    Left = 280
    Top = 45
    Width = 105
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
  end
  object Query1: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 232
    Top = 8
  end
  object Query2: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 260
    Top = 8
  end
  object Query3: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 288
    Top = 8
  end
  object zd: TQuery
    DatabaseName = 'Cutplan'
    SQL.Strings = (
      'select distinct zdh from fczd2')
    Left = 316
    Top = 8
  end
end
