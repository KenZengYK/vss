object frmnewcap_sales: Tfrmnewcap_sales
  Left = 192
  Top = 114
  Caption = 'Sales Projection & Orders Fill up (based on del. dd)'
  ClientHeight = 251
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 16
    Top = 232
    Width = 3
    Height = 16
  end
  object Label2: TLabel
    Left = 184
    Top = 232
    Width = 3
    Height = 16
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 31
    Width = 337
    Height = 25
    Caption = 'Sales Proj. - Setting | Adjustment'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = -16
    Width = 217
    Height = 25
    Caption = 'Confirmed Booking by Customer'
    TabOrder = 6
    Visible = False
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 48
    Top = -16
    Width = 217
    Height = 25
    Caption = 'Internal Booking'
    TabOrder = 7
    Visible = False
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 24
    Top = 191
    Width = 337
    Height = 25
    Caption = 'Exit'
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 80
    Top = -16
    Width = 217
    Height = 25
    Caption = 'Salels Projection Report'
    TabOrder = 8
    Visible = False
  end
  object BitBtn6: TBitBtn
    Left = 24
    Top = 111
    Width = 337
    Height = 25
    Caption = 'Sales Proj Vs Order fill-up, Level off && Prdn bal'
    TabOrder = 4
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 40
    Top = -16
    Width = 217
    Height = 25
    Caption = 'Default Sales Projection'
    TabOrder = 1
    Visible = False
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 24
    Top = 150
    Width = 337
    Height = 25
    Caption = 'Final Step - Production Balancing (HALT)'
    TabOrder = 5
    OnClick = BitBtn8Click
  end
  object BitBtn9: TBitBtn
    Left = 24
    Top = 0
    Width = 297
    Height = 25
    Caption = 'Sales Projection - Budget'
    TabOrder = 0
    Visible = False
    OnClick = BitBtn9Click
  end
  object BitBtn10: TBitBtn
    Left = 24
    Top = 71
    Width = 337
    Height = 25
    Caption = 'CWO - Synchoronized from WOPC | Fill-up'
    TabOrder = 3
    OnClick = BitBtn10Click
  end
  object BitBtn11: TBitBtn
    Left = 96
    Top = 0
    Width = 297
    Height = 25
    Caption = 'Sales Projection - Budget Revision'
    TabOrder = 10
    Visible = False
    OnClick = BitBtn11Click
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 56
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 24
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
  end
end
