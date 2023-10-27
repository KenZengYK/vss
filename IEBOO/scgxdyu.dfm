object frmscgxdy: Tfrmscgxdy
  Left = 117
  Top = 158
  Width = 297
  Height = 283
  BorderIcons = [biSystemMenu]
  Caption = #35069#20316#24037#24207#33287#35215#26684#25171#21360
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
    Left = 99
    Top = 16
    Width = 3
    Height = 13
    Visible = False
  end
  object op1: TRadioButton
    Left = 32
    Top = 20
    Width = 57
    Height = 17
    Caption = #20013#25991
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = True
  end
  object op2: TRadioButton
    Left = 152
    Top = 20
    Width = 49
    Height = 17
    Caption = #33521#25991
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 200
    Width = 65
    Height = 25
    Caption = #30906#23450
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
    Left = 144
    Top = 200
    Width = 65
    Height = 25
    Caption = #21462#28040
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
  object chk2: TRadioGroup
    Left = 32
    Top = 64
    Width = 225
    Height = 121
    Caption = #24037#24207#21934#32068#21512#39006#21029
    ItemIndex = 0
    Items.Strings = (
      '(1a)'#32068#21512#39006#21029'('#33394'/'#30908#29544#31435')'
      '(2a)'#32068#21512#39006#21029'('#20013#33394#20506#38752')'
      '(2b)'#32068#21512#39006#21029'('#28154#33394#20506#38752')'
      '(3a)'#32068#21512#39006#21029'('#26222#30908#20506#38752')'
      '(3b)'#32068#21512#39006#21029'('#22823#30908#20506#38752')'
      '(3c)'#32068#21512#39006#21029'('#36229#30908#20506#38752')'
      '(4a)'#32068#21512#39006#21029'('#20013#33394#26222#30908#20506#38752')'
      '(4b)'#32068#21512#39006#21029'('#28154#33394#26222#30908#20506#38752')'
      '(4c)'#32068#21512#39006#21029'('#20013#33394#22823#30908#20506#38752')'
      '(4d)'#32068#21512#39006#21029'('#28154#33394#22823#30908#20506#38752')'
      '(4e)'#32068#21512#39006#21029'('#20013#33394#36229#30908#20506#38752')'
      '(4f)'#32068#21512#39006#21029'('#28154#33394#36229#30908#20506#38752')')
    TabOrder = 6
    Visible = False
  end
  object xh1: TCheckBox
    Left = 32
    Top = 40
    Width = 105
    Height = 17
    Caption = #24037#24207#21934#26410#20998#39006
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = xh1Click
  end
  object xh2: TCheckBox
    Left = 152
    Top = 40
    Width = 121
    Height = 17
    Caption = #24037#24207#21934#32068#21512#39006#21029
    TabOrder = 8
    OnClick = xh2Click
  end
  object chk1: TRadioGroup
    Left = 32
    Top = 64
    Width = 225
    Height = 121
    Caption = #24037#24207#21934#32068#21512#39006#21029
    ItemIndex = 0
    Items.Strings = (
      '(1)'#32068#21512#39006#21029'('#33394#30908#19981#20506#38752')'
      '(2)'#32068#21512#39006#21029'('#33394#20506#38752')'
      '(3)'#32068#21512#39006#21029'('#30908#20506#38752')'
      '(4)'#32068#21512#39006#21029'('#33394'/'#30908#20506#38752')')
    TabOrder = 9
    OnClick = chk1Click
  end
  object Query1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 200
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 228
  end
  object Query3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 256
  end
end
