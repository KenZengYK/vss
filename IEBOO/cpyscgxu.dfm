object frmcpyscgx: Tfrmcpyscgx
  Left = 296
  Top = 90
  Width = 273
  Height = 180
  Caption = '復制工序'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 20
    Width = 52
    Height = 13
    Caption = '復制工序'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 60
    Width = 39
    Height = 13
    Caption = '新工序'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 120
    Top = 0
    Width = 3
    Height = 13
    Visible = False
  end
  object Edit1: TEdit
    Left = 72
    Top = 16
    Width = 169
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 56
    Width = 169
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 104
    Width = 65
    Height = 25
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 104
    Width = 65
    Height = 25
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    Left = 96
    Top = 104
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    Left = 128
    Top = 104
  end
end
