object frmpbitem: Tfrmpbitem
  Left = 192
  Top = 107
  Width = 417
  Height = 348
  Caption = #25209#36774#38656#36319#36914#38917#30446
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
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 24
    Height = 13
    Caption = #23458#25142
  end
  object DBGridEh1: TDBGridEh
    Left = 32
    Top = 56
    Width = 345
    Height = 193
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
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
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 264
    Width = 73
    Height = 25
    Caption = #21034#38500
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 176
    Top = 264
    Width = 73
    Height = 25
    Caption = #20445#23384
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 248
    Top = 264
    Width = 73
    Height = 25
    Caption = #36864#20986
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 24
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 0
    OnChange = ComboBox1Change
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
    Top = 288
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 96
    Top = 288
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 128
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 64
    Top = 288
  end
end
