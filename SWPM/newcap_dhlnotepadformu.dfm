object frmnewcap_dhlnotepad: Tfrmnewcap_dhlnotepad
  Left = 192
  Top = 114
  Width = 505
  Height = 323
  Caption = 'Notepad for HDL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object DBText1: TDBText
    Left = 72
    Top = 32
    Width = 65
    Height = 17
    DataField = 'TPLANT'
    DataSource = frmnewcap_wf.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 32
    Width = 26
    Height = 13
    Caption = 'Date '
  end
  object DBText2: TDBText
    Left = 208
    Top = 32
    Width = 97
    Height = 17
    DataField = 'DT'
    DataSource = frmnewcap_wf.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 64
    Width = 47
    Height = 13
    Caption = 'Notepad: '
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 80
    Width = 449
    Height = 137
    DataField = 'remarks'
    DataSource = frmnewcap_wf.DataSource1
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 232
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 1
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
    Left = 96
    Top = 232
    Width = 73
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
    Kind = bkClose
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 248
    Top = 65528
  end
end
