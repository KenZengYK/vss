object frmnewcap_cbooking: Tfrmnewcap_cbooking
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Confirmed Booking by Customer'
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
  object Splitter1: TSplitter
    Left = 153
    Top = 33
    Width = 2
    Height = 372
    Cursor = crHSplit
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 33
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
      Left = 152
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Year '
    end
    object Label4: TLabel
      Left = 392
      Top = 8
      Width = 12
      Height = 13
      Caption = 'to '
    end
    object Label6: TLabel
      Left = 600
      Top = 8
      Width = 12
      Height = 13
      Caption = 'to '
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 8
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
      Text = 'SL'
      OnChange = ComboBox1Change
      Items.Strings = (
        'SL'
        'KB'
        'FJ')
    end
    object SpinEdit1: TSpinEdit
      Left = 184
      Top = 8
      Width = 57
      Height = 22
      MaxValue = 2020
      MinValue = 2008
      TabOrder = 1
      Value = 2008
      OnChange = SpinEdit1Change
    end
    object SpinEdit2: TSpinEdit
      Left = 344
      Top = 8
      Width = 41
      Height = 22
      MaxValue = 53
      MinValue = 1
      TabOrder = 2
      Value = 1
      OnChange = SpinEdit1Change
    end
    object SpinEdit3: TSpinEdit
      Left = 408
      Top = 8
      Width = 41
      Height = 22
      MaxValue = 53
      MinValue = 1
      TabOrder = 3
      Value = 53
      OnChange = SpinEdit1Change
    end
    object SpinEdit4: TSpinEdit
      Left = 552
      Top = 8
      Width = 41
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 4
      Value = 1
      OnChange = SpinEdit1Change
    end
    object SpinEdit5: TSpinEdit
      Left = 616
      Top = 8
      Width = 41
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 5
      Value = 12
      OnChange = SpinEdit1Change
    end
    object xh1: TRadioButton
      Left = 264
      Top = 8
      Width = 73
      Height = 17
      Caption = 'Week from '
      Checked = True
      TabOrder = 6
      TabStop = True
      OnClick = SpinEdit1Change
    end
    object xh2: TRadioButton
      Left = 472
      Top = 8
      Width = 73
      Height = 17
      Caption = 'Month from '
      TabOrder = 7
      OnClick = SpinEdit1Change
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 33
    Width = 153
    Height = 372
    Align = alLeft
    BevelInner = bvNone
    BevelOuter = bvNone
    Images = ImageList1
    Indent = 19
    ReadOnly = True
    SortType = stText
    TabOrder = 1
    OnChange = TreeView1Change
  end
  object DBGridEh1: TDBGridEh
    Left = 155
    Top = 33
    Width = 533
    Height = 372
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
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Factory'
        Width = 60
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Customer'
        Width = 60
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'YR'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Year'
        Width = 60
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'WK'
        Footer.Value = 'Total: - '
        Footer.ValueType = fvtStaticText
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Week'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'BQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Confirmed Booking by Customer|B|Qty(pcs)'
        Width = 55
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'buprc'
        Footers = <>
        Title.Caption = 'Confirmed Booking by Customer|B|Unit Price'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'KQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Confirmed Booking by Customer|K|Qty(pcs)'
        Width = 55
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'kuprc'
        Footers = <>
        Title.Caption = 'Confirmed Booking by Customer|K|Unit Price'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'UQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Confirmed Booking by Customer|U|Qty(pcs)'
        Width = 55
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'uuprc'
        Footers = <>
        Title.Caption = 'Confirmed Booking by Customer|U|Unit Price'
        Width = 55
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Confirmed Booking by Customer|Total Qty'
        Width = 55
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'tprc'
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Confirmed Booking by Customer|Total Value'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'MR1'
        Footers = <>
        Title.Caption = 'Ratio|Month 1'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'MR2'
        Footers = <>
        Title.Caption = 'Ratio|Month 2'
        Width = 55
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 405
    Width = 688
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 448
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Confirm'
      TabOrder = 1
      Visible = False
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
    end
    object BitBtn3: TBitBtn
      Left = 104
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
      TabOrder = 2
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
    end
    object BitBtn4: TBitBtn
      Left = 520
      Top = 8
      Width = 121
      Height = 25
      Caption = 'ALL - by Customer'
      TabOrder = 3
      Visible = False
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
    end
    object BitBtn5: TBitBtn
      Left = 176
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 4
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oa_book1'
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
        Name = 'CUST'
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
        Name = 'TQTY'
        DataType = ftInteger
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
        Name = 'BLINE'
        DataType = ftInteger
      end
      item
        Name = 'KLINE'
        DataType = ftInteger
      end
      item
        Name = 'ULINE'
        DataType = ftInteger
      end
      item
        Name = 'BSMV'
        DataType = ftFloat
      end
      item
        Name = 'KSMV'
        DataType = ftFloat
      end
      item
        Name = 'USMV'
        DataType = ftFloat
      end
      item
        Name = 'STYLES'
        DataType = ftInteger
      end
      item
        Name = 'WOS'
        DataType = ftInteger
      end
      item
        Name = 'STYLES1'
        DataType = ftInteger
      end
      item
        Name = 'WOS1'
        DataType = ftInteger
      end
      item
        Name = 'STYLES2'
        DataType = ftInteger
      end
      item
        Name = 'WOS2'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;cust;yr;wk'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 160
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 104
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 224
    Top = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 256
    Top = 104
  end
  object ImageList1: TImageList
    Left = 192
    Top = 136
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F00
      1042186300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000001F001F00
      0000104210421863000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F001F000000
      0000000000001042104218630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001F001F0000000000
      0000104218630000000010420000000000000000000000000000000000000000
      0000000018630000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F001F0000000000007C
      1863000010421042186300000000000000000000000000000000000000000000
      0000007C10421042186300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F000000000000001863
      0000007C007C0000104210421863000000000000000000000000000000000000
      007C1863007C0000104210421863000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000001F7C1042
      104218630000007C007C0000104200000000000000000000000000000000007C
      1863007C007C007C007C00001042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F7C18631F7C
      00001042104218630000007C007C0000000000000000000000000000007C1863
      007C007C007C007C007C007C007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001F7C18631F7C1F7C
      1F7C1F7C00001042104200000000000000000000000000000000007C1863007C
      007C007C007C007C007C007C007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F7C18631F7C1F7C1F7C
      1F7C1F7C1F7C1F7C0000000000000000000000000000000000001863007C007C
      007C007C007C007C007C007C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000001F7C18631F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C0000000000000000000000000000000000000000007C
      007C007C007C007C007C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000018631F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C000000000000000000000000000000000000000000000000
      0000007C007C007C000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001F7C1F7C1F7C1F7C
      1F7C1F7C1F7C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000001F7C1F7C
      1F7C1F7C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F7C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FEFFFFFF00000000FC3FFFFF00000000
      F80FFFFF00000000F003FFFF00000000E003FF1F00000000C003FE0700000000
      C001FC0100000000C003F80100000000C001F00100000000C003F00300000000
      8007F007000000008007F80F00000000800FFE1F00000000C01FFFBF00000000
      F03FFFFF00000000FC7FFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
