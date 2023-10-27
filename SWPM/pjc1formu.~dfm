object frmpjc1: Tfrmpjc1
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Order Summary (Projection or Greige Commitment Qty)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Customer '
    end
    object Label2: TLabel
      Left = 328
      Top = 8
      Width = 67
      Height = 13
      Caption = 'Season Code '
    end
    object Label3: TLabel
      Left = 480
      Top = 7
      Width = 91
      Height = 26
      Caption = 'Projection /'#13#10'Greige Commitment'
    end
    object Label4: TLabel
      Left = 24
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Factory'
    end
    object ComboBox1: TComboBox
      Left = 224
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
      Left = 400
      Top = 8
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        '92'
        '93'
        '94')
    end
    object ComboBox3: TComboBox
      Left = 576
      Top = 8
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        'PJ'
        'C1')
    end
    object ComboBox4: TComboBox
      Left = 64
      Top = 8
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 3
      Text = 'SL'
      OnChange = ComboBox1Change
      Items.Strings = (
        'SL'
        'KB')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 688
    Height = 356
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    SumList.Active = True
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
        Color = 13499643
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        Title.Caption = 'Factory'
        Width = 48
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Customer'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'JHRS'
        Footers = <>
        Title.Caption = 'Season Code'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        Title.Caption = 'Cust Style'
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'FLAG6'
        Footers = <>
        PickList.Strings = (
          'B'
          'K'
          'U')
        Title.Caption = 'Prod Code'
        Width = 28
      end
      item
        EditButtons = <>
        FieldName = 'JHRS1'
        Footers = <>
        Title.Caption = 'Style Item'
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = 'JHRS2'
        Footers = <>
        Title.Caption = 'Range'
        Width = 152
      end
      item
        EditButtons = <>
        FieldName = 'DCDATE'
        Footers = <>
        Title.Caption = 'DC Date'
      end
      item
        EditButtons = <>
        FieldName = 'SHPM'
        Footers = <>
        Title.Caption = 'Ship Mode'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'ORN'
        Footers = <>
        PickList.Strings = (
          'NC'
          'RVS'
          'NEW')
        Title.Caption = 'NC / RVS /NEW'
        Width = 167
      end
      item
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        Title.Caption = 'Clr Code'
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Qty'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'TOUT'
        Footers = <>
        Title.Caption = 'OUT'
        Width = 30
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 405
    Width = 688
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'AddNew'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Delete'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
    end
    object BitBtn3: TBitBtn
      Left = 168
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      TabOrder = 2
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
      Left = 240
      Top = 8
      Width = 145
      Height = 25
      Caption = 'Start Date && Dead Date'
      TabOrder = 3
      OnClick = BitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
        777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
        79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
        777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
        79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
        CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
      NumGlyphs = 2
    end
    object BitBtn5: TBitBtn
      Left = 384
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 4
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_ord_prj'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 16
    Top = 105
    object Query1SEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object Query1CUST: TStringField
      FieldName = 'CUST'
      Size = 10
    end
    object Query1CSTYLE: TStringField
      FieldName = 'CSTYLE'
      Size = 35
    end
    object Query1ACOL: TStringField
      FieldName = 'ACOL'
      Size = 10
    end
    object Query1QTY: TIntegerField
      FieldName = 'QTY'
    end
    object Query1ORN: TStringField
      FieldName = 'ORN'
      Size = 100
    end
    object Query1JHRS: TStringField
      FieldName = 'JHRS'
      Size = 10
    end
    object Query1PJC1: TStringField
      FieldName = 'PJC1'
      Size = 10
    end
    object Query1JHRS1: TStringField
      FieldName = 'JHRS1'
      Size = 50
    end
    object Query1JHRS2: TStringField
      FieldName = 'JHRS2'
      Size = 100
    end
    object Query1FLAG6: TStringField
      FieldName = 'FLAG6'
      Size = 1
    end
    object Query1DCDATE: TStringField
      FieldName = 'DCDATE'
      Size = 10
    end
    object Query1SHPM: TStringField
      FieldName = 'SHPM'
    end
    object Query1TOUT: TBooleanField
      FieldName = 'TOUT'
    end
    object Query1TPLANT: TStringField
      FieldName = 'TPLANT'
      Size = 10
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 112
    Top = 105
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 144
    Top = 105
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 48
    Top = 104
  end
end
