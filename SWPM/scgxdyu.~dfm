object frmscgxdy: Tfrmscgxdy
  Left = 341
  Top = 185
  Width = 257
  Height = 291
  BorderIcons = [biSystemMenu]
  Caption = 'OPT Specification Engineering'
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
  object Label1: TLabel
    Left = 91
    Top = 0
    Width = 3
    Height = 13
    Visible = False
  end
  object op1: TRadioButton
    Left = 24
    Top = 4
    Width = 57
    Height = 17
    Caption = #20013#25991
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object op2: TRadioButton
    Left = 144
    Top = 4
    Width = 65
    Height = 17
    Caption = 'English'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = True
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 216
    Width = 65
    Height = 25
    Caption = 'Preview'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 160
    Top = 216
    Width = 65
    Height = 25
    Caption = 'Close'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = -16
    Width = 75
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Visible = False
    Items.Strings = (
      'MM'
      'INCH')
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = -12
    Width = 41
    Height = 17
    Caption = 'PPC'
    TabOrder = 5
    Visible = False
  end
  object chk1: TRadioGroup
    Left = 24
    Top = 64
    Width = 201
    Height = 145
    Caption = 'Classified BOO'
    ItemIndex = 0
    Items.Strings = (
      'Clr/Sz Independent'
      'Medium Clr/General Sz Dependent'
      'Medium Clr/Big Sz Dependent'
      'Light Clr/General Sz Dependent'
      'Light Clr/Big Sz Dependent'
      'Medium Clr Dependent'
      'Light Clr Dependent'
      'General Sz Dependent'
      'Big Sz Dependent')
    TabOrder = 6
  end
  object xh1: TCheckBox
    Left = 24
    Top = 24
    Width = 121
    Height = 17
    Caption = 'Unclassified BOO'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = xh1Click
  end
  object xh2: TCheckBox
    Left = 24
    Top = 40
    Width = 113
    Height = 17
    Caption = 'Classified BOO'
    TabOrder = 8
    OnClick = xh2Click
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from ie_zygx a,ie_zygx1 b where a.kh=b.kh and a.kh='#39'422' +
      '80-2-0-SL'#39' order by a.kh,b.gxh'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection2
    Left = 135
    Top = 32
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from ie_zygx a,ie_zygx1 b where a.kh=b.kh and a.kh='#39'422' +
      '80-2-0-SL'#39' order by a.kh,b.gxh'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection2
    Left = 167
    Top = 32
  end
end
