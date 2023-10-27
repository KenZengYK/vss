object frmxgwl: Tfrmxgwl
  Left = 197
  Top = 142
  Width = 265
  Height = 188
  Caption = #20462#25913#29289#26009
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 19
    Width = 48
    Height = 13
    Caption = #24037#31243#32232#34399
  end
  object Label2: TLabel
    Left = 40
    Top = 51
    Width = 36
    Height = 13
    Caption = #21407#29289#26009
  end
  object Label3: TLabel
    Left = 40
    Top = 83
    Width = 36
    Height = 13
    Caption = #26032#29289#26009
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object ComboBox2: TComboBox
    Left = 88
    Top = 48
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    OnEnter = ComboBox2Enter
  end
  object Edit1: TEdit
    Left = 88
    Top = 80
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 120
    Width = 73
    Height = 25
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 160
    Top = 120
    Width = 73
    Height = 25
    TabOrder = 4
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcutplan'
    Left = 104
    Top = 96
  end
  object query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcutplan'
    Left = 136
    Top = 96
  end
end
