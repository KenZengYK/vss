object frmwl1item: Tfrmwl1item
  Left = 192
  Top = 107
  Width = 417
  Height = 348
  Caption = #26085#27193#20379#25033#29289#26009#38656#36319#36914#38917#30446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 32
    Top = 32
    Width = 345
    Height = 217
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
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'T_ITEM'
        Footers = <>
        Title.Caption = #36319#36914#38917#30446
      end>
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 264
    Width = 73
    Height = 25
    Caption = #26032#22686
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 264
    Width = 73
    Height = 25
    Caption = #21034#38500
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 176
    Top = 264
    Width = 73
    Height = 25
    Caption = #20445#23384
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 248
    Top = 264
    Width = 73
    Height = 25
    Caption = #36864#20986
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblwl1item'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
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
