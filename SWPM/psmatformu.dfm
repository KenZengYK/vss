object frmpsmat: Tfrmpsmat
  Left = 162
  Top = 108
  Width = 553
  Height = 364
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
  object BitBtn1: TBitBtn
    Left = 24
    Top = 288
    Width = 73
    Height = 25
    Caption = #20445#23384
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 288
    Width = 73
    Height = 25
    Caption = #36864#20986
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 24
    Width = 497
    Height = 249
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 11202795
        EditButtons = <>
        FieldName = 'T_ITEM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36319#36914#38917#30446
        Width = 233
      end
      item
        EditButtons = <>
        FieldName = 'T_DATE'
        Footers = <>
        Title.Caption = #23526#38555#26085#26399
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'T_MARKS'
        Footers = <>
        Title.Caption = #20633#35387
        Width = 163
      end>
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblwl1matmatch'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query1AfterPost
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
