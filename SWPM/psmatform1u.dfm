object frmpsmat1: Tfrmpsmat1
  Left = 114
  Top = 106
  Width = 585
  Height = 356
  Caption = #25209#33394#36319#36914#24773#27841
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
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 24
    Width = 529
    Height = 241
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DT'
        Footers = <>
        Title.Caption = #26085#26399
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'TM'
        Footers = <>
        Title.Caption = #26178#38291
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'P_NO'
        Footers = <>
        Title.Caption = #25505#36092#21934#34399
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'UNAME'
        Footers = <>
        Title.Caption = #36319#36914#20154
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'MARKS'
        Footers = <>
        Title.Caption = #20633#35387
        Width = 253
      end>
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 280
    Width = 73
    Height = 25
    Caption = #36864#20986
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblpsmat'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 32
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 96
    Top = 8
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 128
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 64
    Top = 8
  end
end
