object frmftydefault: Tfrmftydefault
  Left = 154
  Top = 98
  Caption = 'Capacity Planning - Factory Loading'
  ClientHeight = 0
  ClientWidth = 116
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -41
    Width = 116
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 565
    ExplicitWidth = 862
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Confirm'
      DoubleBuffered = True
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333377F3333333333000033334224333333333333337337F333333333
        0000333422224333333333333733337F33333333000033422222243333333333
        73333337F3333333000034222A22224333333337F33F33337F33333300003222
        A2A2224333333337F373F3337F33333300003A2A222A222433333337F7333F33
        37F33333000034A22222A22243333337733333F3337F333300004222A2222A22
        2433337F337F333F3337F3330000222A3A2224A22243337F3737F337F3337F33
        0000A2A333A2224A2224337F73337F337F3337F300003A33333A2224A2224337
        333337F337F3337F000033333333A2224A2243333333337F337F337F00003333
        33333A2224A2233333333337F337F73300003333333333A2224A333333333333
        7F337F33000033333333333A222433333333333337F337F30000333333333333
        A224333333333333337F37F300003333333333333A223333333333333337F7F3
        000033333333333333A3333333333333333373330000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 176
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 248
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 116
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 862
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Factory '
    end
    object Label2: TLabel
      Left = 192
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Year '
    end
    object Label3: TLabel
      Left = 368
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Week from '
    end
    object Label4: TLabel
      Left = 488
      Top = 8
      Width = 12
      Height = 13
      Caption = 'to '
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 8
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'SL'
      OnChange = ComboBox1Change
      Items.Strings = (
        'SL'
        'KB'
        'FJ')
    end
    object SpinEdit1: TSpinEdit
      Left = 224
      Top = 8
      Width = 73
      Height = 22
      MaxValue = 2020
      MinValue = 2008
      TabOrder = 1
      Value = 2008
      OnChange = SpinEdit2Change
    end
    object SpinEdit2: TSpinEdit
      Left = 424
      Top = 8
      Width = 49
      Height = 22
      MaxValue = 53
      MinValue = 1
      TabOrder = 2
      Value = 1
      OnChange = SpinEdit2Change
    end
    object SpinEdit3: TSpinEdit
      Left = 504
      Top = 8
      Width = 49
      Height = 22
      MaxValue = 53
      MinValue = 1
      TabOrder = 3
      Value = 53
      OnChange = SpinEdit2Change
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 33
    Width = 185
    Height = 532
    Align = alLeft
    BevelInner = bvNone
    BevelOuter = bvNone
    Images = ImageList1
    Indent = 19
    ReadOnly = True
    SortType = stText
    TabOrder = 2
    OnChange = TreeView1Change
  end
  object DBGridEh1: TDBGridEh
    Left = 185
    Top = 33
    Width = 677
    Height = 532
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
    FooterRowCount = 1
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Factory'
        Width = 40
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TSHOP'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Workshop'
        Width = 55
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'PLINE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Line'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        Title.Caption = 'Customer'
        Width = 50
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
        Width = 30
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'ADPT'
        Footers = <>
        Title.Caption = 'Adaptability'
        Width = 61
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13365228
        EditButtons = <>
        FieldName = 'REFDT1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Reference|From'
        OnEditButtonClick = DBGridEh1Columns6EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13365228
        EditButtons = <>
        FieldName = 'REFDT2'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Reference|To'
        OnEditButtonClick = DBGridEh1Columns6EditButtonClick
      end
      item
        Color = 13365228
        DisplayFormat = '#0.0'
        EditButtons = <>
        FieldName = 'REFWF'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Reference|WF'
        Width = 50
      end
      item
        Color = 13365228
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'REFSAH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Reference|GSD SAH'
        Width = 50
      end
      item
        Color = 13365228
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'REFSAH1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Reference|Actual SAH'
        Width = 50
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'REFLST'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Reference|Capacity Lost %'
        Width = 50
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'REFEFF'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Reference|Eff%'
        Width = 50
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'SECT'
        Footers = <>
        Title.Caption = 'Sect Hrs'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'YR'
        Footers = <>
        Title.Caption = 'Default|Year'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'WK'
        Footers = <>
        Title.Caption = 'Default|Week'
        Width = 34
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'WF'
        Footers = <>
        Title.Caption = 'Default|WF'
        Width = 35
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'PSAH'
        Footers = <>
        Title.Caption = 'Default|SAH'
        Width = 50
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'PLST'
        Footers = <>
        Title.Caption = 'Default|Capacity Utilization %'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'STYLES'
        Footers = <>
        Title.Caption = 'Default|# of Style'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'WOS'
        Footers = <>
        Title.Caption = 'Default|# of WO'
        Width = 35
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'PEFF'
        Footers = <>
        Title.Caption = 'Default|Eff%'
        Width = 50
      end
      item
        Color = 13365228
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'PCAP'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Output Capacity (pcs)'
        Width = 50
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'MR1'
        Footers = <>
        Title.Caption = 'Ratio|1'
        Visible = False
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'MR2'
        Footers = <>
        Title.Caption = 'Ratio|2'
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_fty'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'ADPT'
        DataType = ftFloat
      end
      item
        Name = 'REFDT1'
        DataType = ftDate
      end
      item
        Name = 'REFDT2'
        DataType = ftDate
      end
      item
        Name = 'REFSAH'
        DataType = ftFloat
      end
      item
        Name = 'REFLST'
        DataType = ftFloat
      end
      item
        Name = 'REFEFF'
        DataType = ftFloat
      end
      item
        Name = 'SECT'
        DataType = ftFloat
      end
      item
        Name = 'WF'
        DataType = ftFloat
      end
      item
        Name = 'PSAH'
        DataType = ftFloat
      end
      item
        Name = 'PLST'
        DataType = ftFloat
      end
      item
        Name = 'PEFF'
        DataType = ftFloat
      end
      item
        Name = 'PCAP'
        DataType = ftInteger
      end
      item
        Name = 'BQTY'
        DataType = ftInteger
      end
      item
        Name = 'KQTY'
        DataType = ftInteger
      end
      item
        Name = 'UQTY'
        DataType = ftInteger
      end
      item
        Name = 'REFWF'
        DataType = ftFloat
      end
      item
        Name = 'CHGD'
        DataType = ftBoolean
      end
      item
        Name = 'REFSAH1'
        DataType = ftFloat
      end
      item
        Name = 'M1'
        DataType = ftInteger
      end
      item
        Name = 'M2'
        DataType = ftInteger
      end
      item
        Name = 'MR1'
        DataType = ftFloat
      end
      item
        Name = 'MR2'
        DataType = ftFloat
      end
      item
        Name = 'PCAP0'
        DataType = ftInteger
      end
      item
        Name = 'BQTY0'
        DataType = ftInteger
      end
      item
        Name = 'KQTY0'
        DataType = ftInteger
      end
      item
        Name = 'UQTY0'
        DataType = ftInteger
      end
      item
        Name = 'STYLES'
        DataType = ftInteger
      end
      item
        Name = 'WOS'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;tshop;pline;yr;wk'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 192
    Top = 104
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 192
    Top = 136
  end
  object ImageList1: TImageList
    Left = 224
    Top = 136
    Bitmap = {
      494C010103000400080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000084848400C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000008484840084848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000848484008484
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000000000008484840084848400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF00000000000000000000000000000084848400C6C6C600000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF00000000000000FF000000000000008484
      840084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      000000000000000000000000FF00C6C6C600000000008484840084848400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF008484840084848400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FF00000000000000FF000000FF00
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      00000000000000000000C6C6C600000000000000FF000000FF00000000008484
      840084848400C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF00C6C6C6000000FF00000000008484
      840084848400C6C6C60000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000FF000000FF00000084848400848484000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF008484840084848400C6C6C600000000000000FF000000
      FF00000000008484840000000000000000000000000000000000000000000000
      000000000000000000000000FF00C6C6C6000000FF000000FF000000FF000000
      FF00000000008484840000000000000000000000000000000000000000000000
      00000000000000000000000000008484840084848400C6C6C600000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF00C6C6C600FF00FF00000000008484840084848400C6C6C6000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000FF00C6C6C6000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00FFFFFF00FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      FF00C6C6C600FF00FF00FF00FF00FF00FF00FF00FF0000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000FF00C6C6C6000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF00C6C6
      C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00C6C6C60000000000FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00C6C6C600FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00C6C6C60000000000FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C6000000000000000000FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FEFFFFFFFFFF0000FC3FFFFFFFFF0000
      F80FFFFFFF1F0000F003FFFFFE070000E003FF1FFC010000C003FE07F8030000
      C001FC01F0010000C003F801E0030000C001F001E0010000C003F003C0010000
      8007F007800300008007F80F00070000800FFE1F800F0000C01FFFBFFE1F0000
      F03FFFFFFFBF0000FC7FFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 104
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 256
    Top = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 288
    Top = 104
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 320
    Top = 104
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 352
    Top = 104
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Planning - Factory Loading  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6646
        mmLeft = 89165
        mmTop = 4498
        mmWidth = 100373
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 15875
        mmWidth = 12435
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 14023
        mmLeft = 2117
        mmTop = 21167
        mmWidth = 278607
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 25135
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 25135
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Year   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 193411
        mmTop = 26988
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 203730
        mmTop = 26988
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'From     '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 99484
        mmTop = 26988
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To      '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 113506
        mmTop = 26988
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  GSD  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 135732
        mmTop = 26988
        mmWidth = 9356
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 157957
        mmTop = 26988
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 22225
        mmWidth = 16933
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 98425
        mmTop = 21167
        mmWidth = 2910
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 98425
        mmTop = 26194
        mmWidth = 83344
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 15875
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Year   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 75142
        mmTop = 15875
        mmWidth = 8467
        BandType = 0
      end
      object yr001: TppLabel
        UserName = 'yr001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 84667
        mmTop = 15875
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 214048
        mmTop = 15875
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 230982
        mmTop = 15875
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 252413
        mmTop = 15875
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 261938
        mmTop = 15875
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 34660
        mmTop = 25135
        mmWidth = 9059
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 49742
        mmTop = 25135
        mmWidth = 15621
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prod   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 67998
        mmTop = 21960
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 67733
        mmTop = 26988
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Adaptability   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 79640
        mmTop = 25135
        mmWidth = 18373
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lost %  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 157957
        mmTop = 30956
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Eff %  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 172244
        mmTop = 26988
        mmWidth = 8731
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 181505
        mmTop = 21167
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 182563
        mmTop = 21960
        mmWidth = 8382
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hrs   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 182563
        mmTop = 26988
        mmWidth = 7112
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  WF '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 215636
        mmTop = 26988
        mmWidth = 6879
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 191559
        mmTop = 21167
        mmWidth = 2910
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 191559
        mmTop = 26194
        mmWidth = 71967
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 263526
        mmTop = 21167
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 265113
        mmTop = 26458
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 235744
        mmTop = 26988
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Utilization % '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 235744
        mmTop = 30956
        mmWidth = 17695
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Eff %  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 254265
        mmTop = 26988
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Output   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 265113
        mmTop = 22225
        mmWidth = 11684
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(pcs)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 265113
        mmTop = 30692
        mmWidth = 9144
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  WF '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 126471
        mmTop = 26988
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 221721
        mmTop = 22225
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week from    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 111125
        mmTop = 15875
        mmWidth = 17727
        BandType = 0
      end
      object wk001: TppLabel
        UserName = 'wk001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 130704
        mmTop = 15875
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'to    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 142611
        mmTop = 15875
        mmWidth = 5821
        BandType = 0
      end
      object wk002: TppLabel
        UserName = 'wk002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 149490
        mmTop = 15875
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  SAH  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 135732
        mmTop = 30956
        mmWidth = 9059
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 147109
        mmTop = 26988
        mmWidth = 9313
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  SAH  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 147109
        mmTop = 30956
        mmWidth = 9059
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  SAH     '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 224103
        mmTop = 26988
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 34131
        mmTop = 15875
        mmWidth = 16404
        BandType = 0
      end
      object ws001: TppLabel
        UserName = 'ws001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 51858
        mmTop = 15875
        mmWidth = 8509
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TPLANT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 529
        mmWidth = 3810
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSHOP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 16404
        mmTop = 529
        mmWidth = 7281
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'YR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 193411
        mmTop = 529
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WK'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 204523
        mmTop = 529
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REFSAH'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0000;-#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 136091
        mmTop = 529
        mmWidth = 8636
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REFLST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 162719
        mmTop = 529
        mmWidth = 5503
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PLINE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 34660
        mmTop = 529
        mmWidth = 6435
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 49742
        mmTop = 529
        mmWidth = 7747
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FLAG6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 67733
        mmTop = 529
        mmWidth = 1905
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ADPT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 88656
        mmTop = 529
        mmWidth = 7070
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REFDT1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 99219
        mmTop = 529
        mmWidth = 11007
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REFDT2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 113506
        mmTop = 529
        mmWidth = 11007
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REFEFF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 173641
        mmTop = 529
        mmWidth = 7070
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 186267
        mmTop = 529
        mmWidth = 4699
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 218811
        mmTop = 529
        mmWidth = 3133
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PSAH'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0000;-#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 225521
        mmTop = 529
        mmWidth = 8636
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PLST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 241639
        mmTop = 529
        mmWidth = 7070
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PEFF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 255609
        mmTop = 529
        mmWidth = 7070
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PCAP'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 273051
        mmTop = 529
        mmWidth = 6265
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REFWF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 127848
        mmTop = 529
        mmWidth = 5503
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REFSAH1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0000;-#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 147468
        mmTop = 529
        mmWidth = 8636
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 99219
        mmTop = 1588
        mmWidth = 10319
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PCAP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 263790
        mmTop = 1588
        mmWidth = 15494
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 11906
        mmWidth = 284427
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '11.07'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            BeforePrint = ppTitleBand1BeforePrint
            mmBottomOffset = 0
            mmHeight = 15346
            mmPrintPosition = 0
            object ppShape2: TppShape
              UserName = 'Shape2'
              mmHeight = 5821
              mmLeft = 2117
              mmTop = 9260
              mmWidth = 278607
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total number of customers:  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 2117
              mmTop = 3175
              mmWidth = 39158
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label41'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Customer  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 3440
              mmTop = 10583
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '        B         '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 35719
              mmTop = 10583
              mmWidth = 15610
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label43'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '        K         '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 73290
              mmTop = 10583
              mmWidth = 15610
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label44'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '        U         '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 110861
              mmTop = 10583
              mmWidth = 15610
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label45'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total Qty   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 153459
              mmTop = 10583
              mmWidth = 14552
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total Sect Hrs    '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 181240
              mmTop = 10583
              mmWidth = 22225
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label47'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '      EFF %    '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 213784
              mmTop = 10583
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel48: TppLabel
              UserName = 'Label48'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '      CU%      '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 244211
              mmTop = 10583
              mmWidth = 16140
              BandType = 1
            end
            object cust003: TppLabel
              UserName = 'cust003'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 44979
              mmTop = 3175
              mmWidth = 12965
              BandType = 1
            end
            object ppLabel63: TppLabel
              UserName = 'Label63'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '        SAH         '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 52123
              mmTop = 10583
              mmWidth = 19579
              BandType = 1
            end
            object ppLabel60: TppLabel
              UserName = 'Label60'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '        SAH         '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 89694
              mmTop = 10583
              mmWidth = 19579
              BandType = 1
            end
            object ppLabel64: TppLabel
              UserName = 'Label601'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '        SAH         '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 127265
              mmTop = 10583
              mmWidth = 19579
              BandType = 1
            end
          end
          object ppHeaderBand2: TppHeaderBand
            Visible = False
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText22: TppDBText
              UserName = 'DBText22'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CUST'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 3440
              mmTop = 794
              mmWidth = 7874
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BQTY'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 47625
              mmTop = 794
              mmWidth = 1566
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText24'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'KQTY'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3175
              mmLeft = 79375
              mmTop = 794
              mmWidth = 6350
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'UQTY'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3175
              mmLeft = 122238
              mmTop = 794
              mmWidth = 1588
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PCAP'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 159629
              mmTop = 794
              mmWidth = 6265
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SECT'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 194269
              mmTop = 794
              mmWidth = 4699
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PEFF'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 219435
              mmTop = 794
              mmWidth = 8636
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PLST'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 250899
              mmTop = 794
              mmWidth = 7070
              BandType = 4
            end
            object xsah1: TppLabel
              UserName = 'xsah1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 58388
              mmTop = 794
              mmWidth = 7493
              BandType = 4
            end
            object xsah2: TppLabel
              UserName = 'xsah2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 95959
              mmTop = 794
              mmWidth = 7493
              BandType = 4
            end
            object xsah3: TppLabel
              UserName = 'xsah3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 133530
              mmTop = 794
              mmWidth = 7493
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            BeforePrint = ppSummaryBand2BeforePrint
            PrintHeight = phDynamic
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 20373
            mmPrintPosition = 0
            object ppLabel49: TppLabel
              UserName = 'Label49'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total:  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 3440
              mmTop = 1058
              mmWidth = 9260
              BandType = 7
            end
            object ppLabel50: TppLabel
              UserName = 'Label50'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '     %:  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 3704
              mmTop = 6085
              mmWidth = 9102
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BQTY'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3175
              mmLeft = 33602
              mmTop = 1058
              mmWidth = 15610
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'UQTY'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3175
              mmLeft = 108215
              mmTop = 1058
              mmWidth = 15610
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PCAP'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3175
              mmLeft = 150284
              mmTop = 1058
              mmWidth = 15610
              BandType = 7
            end
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc5'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SECT'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3175
              mmLeft = 183621
              mmTop = 1058
              mmWidth = 15346
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc6'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'KQTY'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3175
              mmLeft = 70115
              mmTop = 1058
              mmWidth = 15610
              BandType = 7
            end
            object eff001: TppLabel
              UserName = 'eff001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 220134
              mmTop = 1058
              mmWidth = 7938
              BandType = 7
            end
            object cu001: TppLabel
              UserName = 'cu001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 250032
              mmTop = 1058
              mmWidth = 7938
              BandType = 7
            end
            object b001: TppLabel
              UserName = 'b001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 42863
              mmTop = 6085
              mmWidth = 6350
              BandType = 7
            end
            object k001: TppLabel
              UserName = 'k001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 79640
              mmTop = 6085
              mmWidth = 6085
              BandType = 7
            end
            object u001: TppLabel
              UserName = 'u001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 117475
              mmTop = 6085
              mmWidth = 6350
              BandType = 7
            end
            object ppSubReport2: TppSubReport
              UserName = 'SubReport2'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 14288
              mmWidth = 284427
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport2: TppChildReport
                AutoStop = False
                DataPipeline = ppDBPipeline3
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report'
                PrinterSetup.Orientation = poLandscape
                PrinterSetup.PaperName = 'A4'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.SaveDeviceSettings = False
                PrinterSetup.mmMarginBottom = 6350
                PrinterSetup.mmMarginLeft = 6350
                PrinterSetup.mmMarginRight = 6350
                PrinterSetup.mmMarginTop = 6350
                PrinterSetup.mmPaperHeight = 210079
                PrinterSetup.mmPaperWidth = 297127
                PrinterSetup.PaperSize = 9
                Version = '11.07'
                mmColumnWidth = 0
                DataPipelineName = 'ppDBPipeline3'
                object ppTitleBand2: TppTitleBand
                  BeforePrint = ppTitleBand2BeforePrint
                  mmBottomOffset = 0
                  mmHeight = 15081
                  mmPrintPosition = 0
                  object ppShape3: TppShape
                    UserName = 'Shape3'
                    mmHeight = 5821
                    mmLeft = 2117
                    mmTop = 9260
                    mmWidth = 278607
                    BandType = 1
                  end
                  object ppLabel51: TppLabel
                    UserName = 'Label51'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Total number of workshop:    '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 2117
                    mmTop = 3175
                    mmWidth = 39836
                    BandType = 1
                  end
                  object ppLabel52: TppLabel
                    UserName = 'Label52'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Workshop   '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 3440
                    mmTop = 10583
                    mmWidth = 16341
                    BandType = 1
                  end
                  object ppLabel53: TppLabel
                    UserName = 'Label53'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '        B         '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 35719
                    mmTop = 10583
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel54: TppLabel
                    UserName = 'Label54'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '        K         '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 73290
                    mmTop = 10583
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel55: TppLabel
                    UserName = 'Label55'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '        U         '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 110861
                    mmTop = 10583
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel56: TppLabel
                    UserName = 'Label56'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Total Qty   '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 153459
                    mmTop = 10583
                    mmWidth = 14552
                    BandType = 1
                  end
                  object ppLabel57: TppLabel
                    UserName = 'Label57'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Total Sect Hrs    '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 181240
                    mmTop = 10583
                    mmWidth = 22225
                    BandType = 1
                  end
                  object ppLabel58: TppLabel
                    UserName = 'Label58'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '      EFF %    '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 213784
                    mmTop = 10583
                    mmWidth = 16669
                    BandType = 1
                  end
                  object ppLabel59: TppLabel
                    UserName = 'Label59'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '      CU%      '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 244211
                    mmTop = 10583
                    mmWidth = 16140
                    BandType = 1
                  end
                  object wks001: TppLabel
                    UserName = 'wks001'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 44979
                    mmTop = 3175
                    mmWidth = 10075
                    BandType = 1
                  end
                end
                object ppDetailBand3: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 4498
                  mmPrintPosition = 0
                  object ppDBText30: TppDBText
                    UserName = 'DBText30'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'TSHOP'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 3440
                    mmTop = 794
                    mmWidth = 3471
                    BandType = 4
                  end
                  object ppDBText31: TppDBText
                    UserName = 'DBText31'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'BQTY'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 47647
                    mmTop = 794
                    mmWidth = 1566
                    BandType = 4
                  end
                  object ppDBText32: TppDBText
                    UserName = 'DBText32'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'KQTY'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3175
                    mmLeft = 79640
                    mmTop = 794
                    mmWidth = 6350
                    BandType = 4
                  end
                  object ppDBText33: TppDBText
                    UserName = 'DBText33'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'UQTY'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3175
                    mmLeft = 122238
                    mmTop = 794
                    mmWidth = 1588
                    BandType = 4
                  end
                  object ppDBText34: TppDBText
                    UserName = 'DBText34'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'PCAP'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3175
                    mmLeft = 160073
                    mmTop = 794
                    mmWidth = 6350
                    BandType = 4
                  end
                  object ppDBText35: TppDBText
                    UserName = 'DBText35'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'SECT'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 194268
                    mmTop = 794
                    mmWidth = 4699
                    BandType = 4
                  end
                  object ppDBText36: TppDBText
                    UserName = 'DBText36'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'PEFF'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 219308
                    mmTop = 794
                    mmWidth = 8636
                    BandType = 4
                  end
                  object ppDBText37: TppDBText
                    UserName = 'DBText37'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'PLST'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 250867
                    mmTop = 794
                    mmWidth = 7070
                    BandType = 4
                  end
                end
                object ppSummaryBand3: TppSummaryBand
                  BeforePrint = ppSummaryBand3BeforePrint
                  AlignToBottom = False
                  mmBottomOffset = 0
                  mmHeight = 12171
                  mmPrintPosition = 0
                  object ppLabel61: TppLabel
                    UserName = 'Label61'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Total:  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 3440
                    mmTop = 794
                    mmWidth = 9260
                    BandType = 7
                  end
                  object ppLabel62: TppLabel
                    UserName = 'Label501'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '     %:  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 3704
                    mmTop = 5821
                    mmWidth = 8996
                    BandType = 7
                  end
                  object ppDBCalc7: TppDBCalc
                    UserName = 'DBCalc7'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'BQTY'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 33718
                    mmTop = 794
                    mmWidth = 15494
                    BandType = 7
                  end
                  object ppDBCalc8: TppDBCalc
                    UserName = 'DBCalc8'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'UQTY'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3175
                    mmLeft = 108215
                    mmTop = 794
                    mmWidth = 15610
                    BandType = 7
                  end
                  object ppDBCalc9: TppDBCalc
                    UserName = 'DBCalc9'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'PCAP'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3175
                    mmLeft = 150813
                    mmTop = 794
                    mmWidth = 15610
                    BandType = 7
                  end
                  object ppDBCalc10: TppDBCalc
                    UserName = 'DBCalc10'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'SECT'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3175
                    mmLeft = 183621
                    mmTop = 794
                    mmWidth = 15346
                    BandType = 7
                  end
                  object ppDBCalc11: TppDBCalc
                    UserName = 'DBCalc11'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'KQTY'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3175
                    mmLeft = 70379
                    mmTop = 794
                    mmWidth = 15610
                    BandType = 7
                  end
                  object eff002: TppLabel
                    UserName = 'eff002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 220134
                    mmTop = 794
                    mmWidth = 7874
                    BandType = 7
                  end
                  object cu002: TppLabel
                    UserName = 'cu002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 250296
                    mmTop = 794
                    mmWidth = 7705
                    BandType = 7
                  end
                  object b002: TppLabel
                    UserName = 'b002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 42948
                    mmTop = 5821
                    mmWidth = 6265
                    BandType = 7
                  end
                  object k002: TppLabel
                    UserName = 'k002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 79904
                    mmTop = 5821
                    mmWidth = 6085
                    BandType = 7
                  end
                  object u002: TppLabel
                    UserName = 'u002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 117475
                    mmTop = 5821
                    mmWidth = 6350
                    BandType = 7
                  end
                end
              end
            end
            object sah001: TppLabel
              UserName = 'sah001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 56621
              mmTop = 1058
              mmWidth = 9260
              BandType = 7
            end
            object sah002: TppLabel
              UserName = 'sah002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 94192
              mmTop = 1058
              mmWidth = 9260
              BandType = 7
            end
            object sah003: TppLabel
              UserName = 'sah003'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 131763
              mmTop = 1058
              mmWidth = 9260
              BandType = 7
            end
          end
        end
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 175705
        mmTop = 1588
        mmWidth = 15325
        BandType = 7
      end
      object sah0001: TppLabel
        UserName = 'sah0001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 224632
        mmTop = 6350
        mmWidth = 9525
        BandType = 7
      end
      object cu0001: TppLabel
        UserName = 'cu0001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 239184
        mmTop = 6350
        mmWidth = 9525
        BandType = 7
      end
      object eff0001: TppLabel
        UserName = 'eff0001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 253207
        mmTop = 6350
        mmWidth = 9525
        BandType = 7
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2910
        mmTop = 6350
        mmWidth = 12107
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 209974
        mmTop = 1588
        mmWidth = 12277
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REFWF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 114608
        mmTop = 1588
        mmWidth = 17949
        BandType = 7
      end
      object rwf001: TppLabel
        UserName = 'rwf001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 124132
        mmTop = 6350
        mmWidth = 8424
        BandType = 7
      end
      object rsah001: TppLabel
        UserName = 'rsah001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 134525
        mmTop = 6350
        mmWidth = 10202
        BandType = 7
      end
      object rsah002: TppLabel
        UserName = 'rsah002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 145902
        mmTop = 6350
        mmWidth = 10202
        BandType = 7
      end
      object rlst001: TppLabel
        UserName = 'rlst001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 159766
        mmTop = 6350
        mmWidth = 8509
        BandType = 7
      end
      object reff001: TppLabel
        UserName = 'reff001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 171906
        mmTop = 6350
        mmWidth = 8805
        BandType = 7
      end
      object wf001: TppLabel
        UserName = 'wf001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 214757
        mmTop = 6350
        mmWidth = 7493
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_fty'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'ADPT'
        DataType = ftFloat
      end
      item
        Name = 'REFDT1'
        DataType = ftDate
      end
      item
        Name = 'REFDT2'
        DataType = ftDate
      end
      item
        Name = 'REFSAH'
        DataType = ftFloat
      end
      item
        Name = 'REFLST'
        DataType = ftFloat
      end
      item
        Name = 'REFEFF'
        DataType = ftFloat
      end
      item
        Name = 'SECT'
        DataType = ftFloat
      end
      item
        Name = 'WF'
        DataType = ftFloat
      end
      item
        Name = 'PSAH'
        DataType = ftFloat
      end
      item
        Name = 'PLST'
        DataType = ftFloat
      end
      item
        Name = 'PEFF'
        DataType = ftFloat
      end
      item
        Name = 'PCAP'
        DataType = ftInteger
      end
      item
        Name = 'BQTY'
        DataType = ftInteger
      end
      item
        Name = 'KQTY'
        DataType = ftInteger
      end
      item
        Name = 'UQTY'
        DataType = ftInteger
      end
      item
        Name = 'REFWF'
        DataType = ftFloat
      end
      item
        Name = 'CHGD'
        DataType = ftBoolean
      end
      item
        Name = 'REFSAH1'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 256
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = query4
    Left = 288
    Top = 136
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 320
    Top = 136
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_fty'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'ADPT'
        DataType = ftFloat
      end
      item
        Name = 'REFDT1'
        DataType = ftDate
      end
      item
        Name = 'REFDT2'
        DataType = ftDate
      end
      item
        Name = 'REFSAH'
        DataType = ftFloat
      end
      item
        Name = 'REFLST'
        DataType = ftFloat
      end
      item
        Name = 'REFEFF'
        DataType = ftFloat
      end
      item
        Name = 'SECT'
        DataType = ftFloat
      end
      item
        Name = 'WF'
        DataType = ftFloat
      end
      item
        Name = 'PSAH'
        DataType = ftFloat
      end
      item
        Name = 'PLST'
        DataType = ftFloat
      end
      item
        Name = 'PEFF'
        DataType = ftFloat
      end
      item
        Name = 'PCAP'
        DataType = ftInteger
      end
      item
        Name = 'BQTY'
        DataType = ftInteger
      end
      item
        Name = 'KQTY'
        DataType = ftInteger
      end
      item
        Name = 'UQTY'
        DataType = ftInteger
      end
      item
        Name = 'REFWF'
        DataType = ftFloat
      end
      item
        Name = 'CHGD'
        DataType = ftBoolean
      end
      item
        Name = 'REFSAH1'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 192
    Top = 168
  end
  object DataSource3: TDataSource
    DataSet = Query5
    Left = 224
    Top = 168
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline3'
    Left = 256
    Top = 168
  end
  object ROQuery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 160
    Top = 56
  end
end
