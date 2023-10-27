object frmcap: Tfrmcap
  Left = 192
  Top = 137
  Caption = 'Capacity Planning and Utilization'
  ClientHeight = 271
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn6: TBitBtn
    Left = 32
    Top = 24
    Width = 225
    Height = 25
    Caption = 'Factory Capacity'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn6Click
  end
  object BitBtn9: TBitBtn
    Left = 32
    Top = 49
    Width = 225
    Height = 25
    Caption = 'Capacity Planning (sim factory)'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn9Click
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 99
    Width = 225
    Height = 25
    Caption = 'Customer Order Enquiry'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 32
    Top = 149
    Width = 225
    Height = 25
    Caption = 'Capacity Planning and Utilization(customer)'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 32
    Top = 174
    Width = 225
    Height = 25
    Caption = 'Overall Capacity Planning and Utilization'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 32
    Top = 199
    Width = 225
    Height = 25
    Caption = 'Capacity Performance'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 32
    Top = 224
    Width = 225
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = BitBtn5Click
  end
  object BitBtn7: TBitBtn
    Left = 32
    Top = 124
    Width = 225
    Height = 25
    Caption = 'Requisition'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 32
    Top = 74
    Width = 225
    Height = 25
    Caption = 'Line Capacity'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 8
    OnClick = BitBtn8Click
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 64
  end
  object DataSet2: TADOQuery
    Connection = frmmain.ADOConnection1
    Parameters = <>
    Left = 96
  end
end
