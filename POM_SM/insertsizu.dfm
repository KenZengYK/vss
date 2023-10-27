object frminsertsiz: Tfrminsertsiz
  Left = 199
  Top = 156
  Caption = #21152'/'#28187#23610#30908
  ClientHeight = 206
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 136
    Width = 116
    Height = 16
    Caption = #27492#23610#30908#23559#25554#20837#21040':'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 160
    Top = 136
    Width = 46
    Height = 16
    Caption = '999DD'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 216
    Top = 136
    Width = 47
    Height = 16
    Caption = #20043#21069'!!!'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 56
    Top = 96
    Width = 36
    Height = 16
    Caption = #23610#30908':'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 136
    Top = 184
    Width = 3
    Height = 13
    Visible = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 92
    Width = 81
    Height = 24
    Enabled = False
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 176
    Width = 73
    Height = 25
    Caption = #30906#23450
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 176
    Width = 73
    Height = 25
    Caption = #21462#28040
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object opt1: TRadioGroup
    Left = 16
    Top = 16
    Width = 257
    Height = 49
    Caption = #36984#25799
    Columns = 2
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #22686#21152
      #21034#38500)
    ParentFont = False
    TabOrder = 3
    OnClick = opt1Click
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select stylno from sz_sampsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 4
    Top = 88
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select stylno from sz_sampsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 4
    Top = 56
  end
  object Query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select stylno from sz_sampsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 44
    Top = 56
  end
end
