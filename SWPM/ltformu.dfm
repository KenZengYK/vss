object frmlt: Tfrmlt
  Left = 193
  Top = 224
  Width = 553
  Height = 323
  Caption = 'QNs Linkage Time Consumption (Revised)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 101
    Height = 13
    Caption = '1. Change style/color'
  end
  object Label2: TLabel
    Left = 240
    Top = 24
    Width = 155
    Height = 13
    Caption = '2. Change color only (same style)'
  end
  object Label3: TLabel
    Left = 32
    Top = 64
    Width = 399
    Height = 13
    Caption = 
      '3. QNs Linkage mishandling, waiting for next QN and labour force' +
      's leaving workshop'
  end
  object Edit1: TDBNumberEditEh
    Left = 136
    Top = 24
    Width = 73
    Height = 21
    DataField = 'WORKERC'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
  object Edit2: TDBNumberEditEh
    Left = 400
    Top = 24
    Width = 73
    Height = 21
    DataField = 'WORKERO'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 1
    Visible = True
  end
  object Edit3: TDBNumberEditEh
    Left = 440
    Top = 64
    Width = 73
    Height = 21
    DataField = 'WORKERT'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 2
    Visible = True
  end
  object DBMemo1: TDBMemo
    Left = 32
    Top = 96
    Width = 481
    Height = 121
    DataField = 'LMEMO'
    DataSource = frmcurrcal.DataSource1
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 240
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      2222200000000002222203300007030222220330000703000222033000000303
      0222033333333303000203300000330303020307777703030302030777770303
      0302030777770003030203077777070303020000000000000302220307777707
      0302220000000000000222220307777707022222000000000002}
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 240
    Width = 73
    Height = 25
    TabOrder = 5
    Kind = bkClose
  end
end
