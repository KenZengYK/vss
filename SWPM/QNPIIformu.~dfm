object frmQNPII: TfrmQNPII
  Left = 81
  Top = 106
  Width = 895
  Height = 623
  Caption = 'QN PII Control'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 887
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Factory '
    end
    object Label2: TLabel
      Left = 208
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Workshop '
    end
    object Label3: TLabel
      Left = 400
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Line '
    end
    object Label4: TLabel
      Left = 24
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Project # '
    end
    object Label5: TLabel
      Left = 208
      Top = 32
      Width = 32
      Height = 13
      Caption = 'WO # '
    end
    object Label6: TLabel
      Left = 400
      Top = 32
      Width = 50
      Height = 13
      Caption = 'Cust Style '
    end
    object ComboBox1: TComboBox
      Left = 72
      Top = 8
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'SL'
      OnChange = ComboBox1Change
      Items.Strings = (
        'SL'
        'KB'
        'FJ')
    end
    object ComboBox2: TComboBox
      Left = 264
      Top = 8
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        '3A'
        '3B'
        '3D'
        '3G'
        '4A'
        '4B'
        '4C'
        '4D'
        'KB1A'
        'KB1B'
        'KB2')
    end
    object Edit1: TEdit
      Left = 456
      Top = 8
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 72
      Top = 32
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 264
      Top = 32
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = Edit1KeyPress
    end
    object Edit4: TEdit
      Left = 456
      Top = 32
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnKeyPress = Edit1KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 887
    Height = 487
    Align = alClient
    DataSource = worksheet1.DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Pline'
        Footers = <>
        Title.Caption = 'Line'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'Seq'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'J_no'
        Footers = <>
        Title.Caption = 'Project'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'J2_job'
        Footers = <>
        Title.Caption = 'WO'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        Title.Caption = 'Cust Style'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Acol'
        Footers = <>
        Title.Caption = 'Clr Code'
      end
      item
        EditButtons = <>
        FieldName = 'CWO'
        Footers = <>
        Title.Caption = 'WOc Suffix'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        Title.Caption = 'RWO Suffix'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'FCCS'
        Footers = <>
        Title.Caption = 'QN Suffix'
        Width = 40
      end
      item
        Color = 14088905
        EditButtons = <>
        FieldName = 'Flag4'
        Footers = <>
        Title.Caption = 'QN Qty|?'
        Title.Color = 14088905
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'Scqty'
        Footers = <>
        Title.Caption = 'QN Qty|Qty'
        Width = 44
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'Plan_date'
        Footers = <>
        Title.Caption = 'RWO Fty Work Start Date|Default'
        Width = 55
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'CPLAN'
        Footers = <>
        Title.Caption = 'RWO Fty Work Start Date|Current'
        Width = 55
      end
      item
        Color = 14088905
        EditButtons = <>
        FieldName = 'Flag3'
        Footers = <>
        Title.Caption = 'QN Start Date|?'
        Title.Color = 14088905
        Width = 18
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'Cfksrq'
        Footers = <>
        Title.Caption = 'QN Start Date|'
        Width = 55
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'CFKSJS'
        Footers = <>
        Title.Caption = 'QN Start Sect Hr'
        Width = 36
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'Cfwcrq'
        Footers = <>
        Title.Caption = 'Plan QN T2 Date'
        Width = 55
      end
      item
        DisplayFormat = 'yy/MM/dd hh'
        EditButtons = <>
        FieldName = 'YQLCRQ'
        Footers = <>
        Title.Caption = 'RWO Ex-fty Date'
        Width = 72
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 887
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Combine QNs'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 136
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Split QN'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333FF3333333333333003333333333333377F33333333333307
        733333FFF333337773333C003333307733333777FF333777FFFFC0CC03330770
        000077777FF377777777C033C03077FFFFF077FF77F777FFFFF7CC00000F7777
        777077777777777777773CCCCC00000000003777777777777777333330030FFF
        FFF03333F77F7F3FF3F7333C0C030F00F0F03337777F7F77373733C03C030FFF
        FFF03377F77F7F3F333733C03C030F0FFFF03377F7737F733FF733C000330FFF
        0000337777F37F3F7777333CCC330F0F0FF0333777337F737F37333333330FFF
        0F03333333337FFF7F7333333333000000333333333377777733}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 224
      Top = 8
      Width = 113
      Height = 25
      Caption = 'SKU Exchange'
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FF3FFFF3FFF33FF003000030003
        300077377773777F377703330033370337037FFF77F3377FF77F700007333300
        0003777777333377777F303003333330370337F77F333337377F303073333333
        070337F77F333333777F3700733333333003377773333333377F330033333333
        30033377F3333333377F33073333333333033377333333333373333333333333
        33333333FF3333333FF3333973333333793333377FF3333377F3333999333339
        993333377733333777F33339933333339933333773FF333377F3333939733379
        39333337377FFF77373333333399999333333333337777733333}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 336
      Top = 8
      Width = 65
      Height = 25
      TabOrder = 3
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule_plc'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 144
    Top = 160
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 176
    Top = 160
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 208
    Top = 160
  end
end
