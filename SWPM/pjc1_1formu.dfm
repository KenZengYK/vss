object frmpjc1_1: Tfrmpjc1_1
  Left = 192
  Top = 114
  Width = 481
  Height = 315
  Caption = 'Start Date & Dead Date'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Customer '
    end
    object Label2: TLabel
      Left = 192
      Top = 8
      Width = 67
      Height = 13
      Caption = 'Season Code '
    end
    object ComboBox1: TComboBox
      Left = 72
      Top = 8
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'CALD'
        'CANA'
        'CMYR'
        'DAXO'
        'ESSE'
        'ETAA'
        'ETAM'
        'GAPA'
        'LARD'
        'MAST'
        'MEXX'
        'MONO'
        'NEXT'
        'PLUK'
        'SALL'
        'SARA'
        'TAIL'
        'TAMA'
        'TORD'
        'WARN'
        '')
    end
    object ComboBox2: TComboBox
      Left = 264
      Top = 8
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        '81'
        '83'
        '84'
        '91'
        '92'
        '93'
        '94')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 473
    Height = 207
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
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
    Columns = <
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Customer'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'SEASON'
        Footers = <>
        Title.Caption = 'Season Code'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'PJC1'
        Footers = <>
        Title.Caption = 'Code'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'SDT'
        Footers = <>
        Title.Caption = 'Time Period|Start Date'
        Width = 123
      end
      item
        EditButtons = <>
        FieldName = 'EDT'
        Footers = <>
        Title.Caption = 'Time Period|Dead Date'
        Width = 130
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 240
    Width = 473
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn3: TBitBtn
      Left = 16
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = BitBtn3Click
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
    object BitBtn4: TBitBtn
      Left = 88
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 1
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_tmp_ordsummary_02'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query1AfterPost
    Left = 16
    Top = 105
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 80
    Top = 105
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 112
    Top = 105
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 48
    Top = 104
  end
end
