object frmgrouping: Tfrmgrouping
  Left = 192
  Top = 114
  Caption = 'Grouping'
  ClientHeight = 205
  ClientWidth = 329
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
    Left = 40
    Top = 40
    Width = 25
    Height = 13
    Caption = 'Code'
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 81
    Height = 13
    Caption = 'Description (Eng)'
  end
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 81
    Height = 13
    Caption = 'Description (Chn)'
  end
  object Label4: TLabel
    Left = 24
    Top = 8
    Width = 3
    Height = 13
    Visible = False
  end
  object Label5: TLabel
    Left = 24
    Top = 24
    Width = 3
    Height = 13
    Visible = False
  end
  object Label6: TLabel
    Left = 155
    Top = 8
    Width = 3
    Height = 13
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 144
    Width = 73
    Height = 25
    Caption = 'Save'
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
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 144
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 80
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 72
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 128
    Top = 104
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 240
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 272
  end
end
