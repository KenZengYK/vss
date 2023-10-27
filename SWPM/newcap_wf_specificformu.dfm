object frmnewcap_wf_specific: Tfrmnewcap_wf_specific
  Left = 192
  Top = 114
  Width = 465
  Height = 243
  Caption = 'HDL - Control and Maintain - Specific WF (by Workshop)'
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
    Top = 32
    Width = 19
    Height = 13
    Caption = '3A: '
  end
  object Label2: TLabel
    Left = 176
    Top = 32
    Width = 19
    Height = 13
    Caption = '3B: '
  end
  object Label3: TLabel
    Left = 320
    Top = 32
    Width = 20
    Height = 13
    Caption = '3D: '
  end
  object Label4: TLabel
    Left = 32
    Top = 72
    Width = 19
    Height = 13
    Caption = '4A: '
  end
  object Label5: TLabel
    Left = 176
    Top = 72
    Width = 19
    Height = 13
    Caption = '4B: '
  end
  object Label6: TLabel
    Left = 320
    Top = 72
    Width = 19
    Height = 13
    Caption = '4C: '
  end
  object Label7: TLabel
    Left = 32
    Top = 104
    Width = 20
    Height = 13
    Caption = '4D: '
  end
  object DBNumberEditEh1: TDBNumberEditEh
    Left = 56
    Top = 32
    Width = 81
    Height = 21
    DataField = 'D01'
    DataSource = frmnewcap_wf.DataSource1
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
  object DBNumberEditEh2: TDBNumberEditEh
    Left = 200
    Top = 32
    Width = 81
    Height = 21
    DataField = 'D02'
    DataSource = frmnewcap_wf.DataSource1
    EditButtons = <>
    TabOrder = 1
    Visible = True
  end
  object DBNumberEditEh3: TDBNumberEditEh
    Left = 344
    Top = 32
    Width = 81
    Height = 21
    DataField = 'D03'
    DataSource = frmnewcap_wf.DataSource1
    EditButtons = <>
    TabOrder = 2
    Visible = True
  end
  object DBNumberEditEh4: TDBNumberEditEh
    Left = 56
    Top = 72
    Width = 81
    Height = 21
    DataField = 'H01'
    DataSource = frmnewcap_wf.DataSource1
    EditButtons = <>
    TabOrder = 3
    Visible = True
  end
  object DBNumberEditEh5: TDBNumberEditEh
    Left = 200
    Top = 72
    Width = 81
    Height = 21
    DataField = 'H02'
    DataSource = frmnewcap_wf.DataSource1
    EditButtons = <>
    TabOrder = 4
    Visible = True
  end
  object DBNumberEditEh6: TDBNumberEditEh
    Left = 344
    Top = 72
    Width = 81
    Height = 21
    DataField = 'H03'
    DataSource = frmnewcap_wf.DataSource1
    EditButtons = <>
    TabOrder = 5
    Visible = True
  end
  object DBNumberEditEh7: TDBNumberEditEh
    Left = 56
    Top = 104
    Width = 81
    Height = 21
    DataField = 'HT01'
    DataSource = frmnewcap_wf.DataSource1
    EditButtons = <>
    TabOrder = 6
    Visible = True
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 152
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 7
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
    Top = 152
    Width = 73
    Height = 25
    Caption = 'Exit'
    TabOrder = 8
    Kind = bkClose
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 32
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 64
  end
end
