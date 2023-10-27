object frmnewcap_nostyle_wk: Tfrmnewcap_nostyle_wk
  Left = 140
  Top = 111
  Caption = 
    'Sales Proj. - Setting | Adjustment - Worksheet - Customer Depend' +
    'ent (by week)'
  ClientHeight = 336
  ClientWidth = 754
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
    Top = 57
    Width = 2
    Height = 238
    ExplicitHeight = 347
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 754
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
      Left = 152
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Year '
    end
    object Label3: TLabel
      Left = 288
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Month '
    end
    object DBText1: TDBText
      Left = 328
      Top = 8
      Width = 49
      Height = 17
      DataField = 'M1'
      DataSource = DataSource1
    end
    object Label4: TLabel
      Left = 384
      Top = 8
      Width = 3
      Height = 13
    end
    object Label5: TLabel
      Left = 24
      Top = 32
      Width = 142
      Height = 13
      Caption = 'Calculation backward Start on'
    end
    object Label6: TLabel
      Left = 304
      Top = 32
      Width = 15
      Height = 13
      Caption = 'for '
    end
    object Label7: TLabel
      Left = 400
      Top = 32
      Width = 34
      Height = 13
      Caption = 'months'
    end
    object Label9: TLabel
      Left = 432
      Top = 0
      Width = 3
      Height = 13
      Visible = False
    end
    object Label10: TLabel
      Left = 728
      Top = 16
      Width = 169
      Height = 20
      AutoSize = False
      Caption = 'Review'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 8
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 0
      Text = 'SL'
      Items.Strings = (
        'CHINA'
        'THAI'
        'OFF-SHORE')
    end
    object SpinEdit1: TSpinEdit
      Left = 184
      Top = 8
      Width = 57
      Height = 22
      Enabled = False
      MaxValue = 2030
      MinValue = 2008
      TabOrder = 1
      Value = 2008
    end
    object xh1: TRadioGroup
      Left = 472
      Top = 8
      Width = 201
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Selected'
        'All (B/K/U)')
      TabOrder = 2
      OnClick = xh1Click
    end
    object DateEdit1: TDateEdit
      Left = 168
      Top = 32
      Width = 121
      Height = 21
      Enabled = False
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 328
      Top = 32
      Width = 57
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 57
    Width = 153
    Height = 238
    Align = alLeft
    BevelInner = bvNone
    BevelOuter = bvNone
    Indent = 19
    ReadOnly = True
    SortType = stText
    TabOrder = 1
    OnChange = TreeView1Change
  end
  object DBGridEh1: TDBGridEh
    Left = 155
    Top = 57
    Width = 599
    Height = 238
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
    FooterRowCount = 5
    FrozenCols = 4
    RowDetailPanel.Color = clBtnFace
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
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        Title.Caption = 'Cust'#39's Proj Code'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'SEL'
        Footers = <>
        Title.Caption = 'Selected'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'FLAG6'
        Footers = <
          item
            Value = 'B'
            ValueType = fvtStaticText
          end
          item
            Value = 'K'
            ValueType = fvtStaticText
          end
          item
            Value = 'U'
            ValueType = fvtStaticText
          end
          item
            Value = 'TTL'
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        Title.Caption = 'Product Code'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'MTTL'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Month Total Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'B1'
        Footers = <>
        ReadOnly = True
        Width = 90
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W1'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'WR1'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'B2'
        Footers = <>
        ReadOnly = True
        Width = 90
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W2'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'WR2'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'B3'
        Footers = <>
        ReadOnly = True
        Width = 90
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W3'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'WR3'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'B4'
        Footers = <>
        ReadOnly = True
        Width = 90
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W4'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'WR4'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'B5'
        Footers = <>
        ReadOnly = True
        Width = 90
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W5'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'WR5'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'B6'
        Footers = <>
        ReadOnly = True
        Width = 90
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W6'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'WR6'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'BAL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Balance'
        Width = 43
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'SAH'
        Footers = <>
        Title.Caption = 'GSD SAH|Past Record'
        Width = 52
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'SAHP'
        Footers = <>
        Title.Caption = 'GSD SAH|Proj. (+/-%)'
        Width = 42
        OnEditButtonClick = DBGridEh1Columns2EditButtonClick
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'UPX'
        Footers = <>
        Title.Caption = 'Unit Price (HK$)|Past Record'
        Width = 47
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'UPXP'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit Price (HK$)|Proj. (+/-%)'
        Width = 40
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'UPX_A'
        Footers = <>
        Title.Caption = 'Unit Price (HK$)|Adj.'
        Width = 47
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'EFF0'
        Footers = <>
        Title.Caption = 'Eff%|Past Perf'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'EFFP'
        Footers = <>
        Title.Caption = 'Eff%|Target (+/-%)'
        Width = 50
        OnEditButtonClick = DBGridEh1Columns2EditButtonClick
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'CU1'
        Footers = <>
        Title.Caption = 'CU%|Past Perf'
        Width = 50
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'CU2'
        Footers = <>
        Title.Caption = 'CU%|Target'
        Width = 50
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'WTTL'
        Footer.DisplayFormat = '#0'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Month Total Qty'
        Visible = False
        Width = 50
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 295
    Width = 754
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Label8: TLabel
      Left = 696
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Split Qty for FJ '
    end
    object BitBtn1: TBitBtn
      Left = 245
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn5: TBitBtn
      Left = 390
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
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
      TabOrder = 1
      OnClick = BitBtn5Click
    end
    object BitBtn2: TBitBtn
      Left = 848
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Split for FJ'
      Glyph.Data = {
        72010000424D7201000000000000760000002800000015000000150000000100
        040000000000FC00000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888355844444444444444888888F3A8488888888888848888880228487
        7777777888488888899984877777778888488888822284878888888888488D88
        8000848807070788884885D888B184807070707088488D5D8200848707070707
        D5D5D5D5D00084807070707088488D5D8000848888888888884885D880008487
        7777777888488D88800084877777778888488888800084877777778888488888
        8303848888888888884888888606848777778884444888888D0D848777777884
        748888888B0B8488888888844888888880638444444444448888888884A78888
        8888888888888888814788888888888888888888843F}
      TabOrder = 2
      Visible = False
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 148
      Top = 8
      Width = 97
      Height = 25
      Caption = '* Sales Lock'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
        333333333F777773FF333333008888800333333377333F3773F3333077870787
        7033333733337F33373F3308888707888803337F33337F33337F330777880887
        7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
        7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
        00333337777777777733333308033308033333337F7F337F7F33333308033308
        033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
        7333333373F77733733333333088888033333333373FFFF73333333333000003
        3333333333777773333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object DBEdit1: TDBEdit
      Left = 768
      Top = 8
      Width = 105
      Height = 21
      DataSource = DataSource1
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      Left = 463
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      Left = 463
      Top = 8
      Width = 209
      Height = 25
      Caption = 'aT3 for Sales Projection on Sales'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      TabOrder = 6
      Visible = False
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 672
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 7
      Visible = False
    end
    object BitBtn8: TBitBtn
      Left = 24
      Top = 8
      Width = 62
      Height = 25
      Caption = 'New'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 8
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 86
      Top = 8
      Width = 62
      Height = 25
      Caption = 'Edit'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      TabOrder = 9
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 317
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Review'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 10
      OnClick = BitBtn10Click
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oa_proj'
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'YR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'M1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CUST'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FLAG6'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SAH'
        DataType = ftFloat
      end
      item
        Name = 'EFF'
        DataType = ftFloat
      end
      item
        Name = 'W1'
        DataType = ftInteger
      end
      item
        Name = 'W2'
        DataType = ftInteger
      end
      item
        Name = 'W3'
        DataType = ftInteger
      end
      item
        Name = 'W4'
        DataType = ftInteger
      end
      item
        Name = 'W5'
        DataType = ftInteger
      end
      item
        Name = 'W6'
        DataType = ftInteger
      end
      item
        Name = 'WR1'
        DataType = ftFloat
      end
      item
        Name = 'WR2'
        DataType = ftFloat
      end
      item
        Name = 'WR3'
        DataType = ftFloat
      end
      item
        Name = 'WR4'
        DataType = ftFloat
      end
      item
        Name = 'WR5'
        DataType = ftFloat
      end
      item
        Name = 'WR6'
        DataType = ftFloat
      end
      item
        Name = 'WTTL'
        DataType = ftFloat
      end
      item
        Name = 'GRP'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SEL'
        DataType = ftBoolean
      end
      item
        Name = 'SAH0'
        DataType = ftFloat
      end
      item
        Name = 'EFF0'
        DataType = ftFloat
      end
      item
        Name = 'WRITEOFF'
        DataType = ftInteger
      end
      item
        Name = 'AT3'
        DataType = ftInteger
      end
      item
        Name = 'AT3YR'
        DataType = ftInteger
      end
      item
        Name = 'AT3MN'
        DataType = ftInteger
      end
      item
        Name = 'WF1'
        DataType = ftInteger
      end
      item
        Name = 'WF2'
        DataType = ftInteger
      end
      item
        Name = 'WF3'
        DataType = ftInteger
      end
      item
        Name = 'WF4'
        DataType = ftInteger
      end
      item
        Name = 'WF5'
        DataType = ftInteger
      end
      item
        Name = 'WF6'
        DataType = ftInteger
      end
      item
        Name = 'CU1'
        DataType = ftFloat
      end
      item
        Name = 'CU2'
        DataType = ftFloat
      end
      item
        Name = 'SAHP'
        DataType = ftFloat
      end
      item
        Name = 'EFFP'
        DataType = ftFloat
      end
      item
        Name = 'W0'
        DataType = ftInteger
      end
      item
        Name = 'W7'
        DataType = ftInteger
      end
      item
        Name = 'WF0'
        DataType = ftInteger
      end
      item
        Name = 'WF7'
        DataType = ftInteger
      end
      item
        Name = 'A01'
        DataType = ftInteger
      end
      item
        Name = 'AY01'
        DataType = ftInteger
      end
      item
        Name = 'AM01'
        DataType = ftInteger
      end
      item
        Name = 'AW01'
        DataType = ftInteger
      end
      item
        Name = 'A02'
        DataType = ftInteger
      end
      item
        Name = 'AY02'
        DataType = ftInteger
      end
      item
        Name = 'AM02'
        DataType = ftInteger
      end
      item
        Name = 'AW02'
        DataType = ftInteger
      end
      item
        Name = 'A03'
        DataType = ftInteger
      end
      item
        Name = 'AY03'
        DataType = ftInteger
      end
      item
        Name = 'AM03'
        DataType = ftInteger
      end
      item
        Name = 'AW03'
        DataType = ftInteger
      end
      item
        Name = 'A04'
        DataType = ftInteger
      end
      item
        Name = 'AY04'
        DataType = ftInteger
      end
      item
        Name = 'AM04'
        DataType = ftInteger
      end
      item
        Name = 'AW04'
        DataType = ftInteger
      end
      item
        Name = 'A05'
        DataType = ftInteger
      end
      item
        Name = 'AY05'
        DataType = ftInteger
      end
      item
        Name = 'AM05'
        DataType = ftInteger
      end
      item
        Name = 'AW05'
        DataType = ftInteger
      end
      item
        Name = 'A06'
        DataType = ftInteger
      end
      item
        Name = 'AY06'
        DataType = ftInteger
      end
      item
        Name = 'AM06'
        DataType = ftInteger
      end
      item
        Name = 'AW06'
        DataType = ftInteger
      end
      item
        Name = 'MTTL'
        DataType = ftInteger
      end
      item
        Name = 'BAL'
        DataType = ftInteger
      end
      item
        Name = 'WOFF'
        DataType = ftFloat
      end
      item
        Name = 'BAL1'
        DataType = ftFloat
      end
      item
        Name = 'B1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'B2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'B3'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'B4'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'B5'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'B6'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DDT1'
        DataType = ftDate
      end
      item
        Name = 'DDT2'
        DataType = ftDate
      end
      item
        Name = 'DDT3'
        DataType = ftDate
      end
      item
        Name = 'DDT4'
        DataType = ftDate
      end
      item
        Name = 'DDT5'
        DataType = ftDate
      end
      item
        Name = 'DDT6'
        DataType = ftDate
      end
      item
        Name = 'TRDT1'
        DataType = ftDate
      end
      item
        Name = 'TRDT2'
        DataType = ftDate
      end
      item
        Name = 'TRDT3'
        DataType = ftDate
      end
      item
        Name = 'TRDT4'
        DataType = ftDate
      end
      item
        Name = 'TRDT5'
        DataType = ftDate
      end
      item
        Name = 'TRDT6'
        DataType = ftDate
      end
      item
        Name = 'UPX'
        DataType = ftFloat
      end
      item
        Name = 'UPXP'
        DataType = ftFloat
      end
      item
        Name = 'TUPX'
        DataType = ftFloat
      end
      item
        Name = 'UPX_A'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;grp;cust;flag6'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    BeforePost = Query1BeforePost
    AfterPost = Query1AfterPost
    Left = 160
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Query1
    OnStateChange = DataSource1StateChange
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
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
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
    Left = 288
    Top = 104
    Version = '11.08'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 78052
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Planning - Ratio by Week '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 60590
        mmTop = 10583
        mmWidth = 66940
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Year: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5821
        mmTop = 21696
        mmWidth = 7673
        BandType = 0
      end
      object yr01: TppLabel
        UserName = 'yr01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2011 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 21696
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Month: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 21696
        mmWidth = 9525
        BandType = 0
      end
      object mn01: TppLabel
        UserName = 'mn01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 44715
        mmTop = 21696
        mmWidth = 2381
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 37306
        mmLeft = 5556
        mmTop = 31750
        mmWidth = 185473
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 38894
        mmWidth = 185473
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 44715
        mmWidth = 185473
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 46831
        mmWidth = 185473
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 52388
        mmWidth = 185473
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 60061
        mmWidth = 185473
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 62177
        mmWidth = 185473
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 54240
        mmWidth = 185473
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 9525
        mmTop = 33867
        mmWidth = 10319
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 23283
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 49477
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 73025
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SL/FJ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 9525
        mmTop = 40217
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SL/FJ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 9525
        mmTop = 48154
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory Capacity  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 40217
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sales Projection  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 24871
        mmTop = 48154
        mmWidth = 22140
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KB  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 9525
        mmTop = 55563
        mmWidth = 5419
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KB  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 9525
        mmTop = 63500
        mmWidth = 5419
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sales Projection  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 63500
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory Capacity  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 55563
        mmWidth = 22754
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 96573
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 120121
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 143669
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 168011
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object w001: TppLabel
        UserName = 'w001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 53446
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object w002: TppLabel
        UserName = 'w002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 76465
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object w003: TppLabel
        UserName = 'w003'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 100806
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object w004: TppLabel
        UserName = 'w004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object w005: TppLabel
        UserName = 'w005'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 148167
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object s001: TppLabel
        UserName = 's001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 53446
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object s002: TppLabel
        UserName = 's002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 76465
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object s003: TppLabel
        UserName = 's003'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 100806
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object s004: TppLabel
        UserName = 's004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object s005: TppLabel
        UserName = 's005'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 148167
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '100.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object s006: TppLabel
        UserName = 's006'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 53446
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
      object s007: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 76465
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
      object s008: TppLabel
        UserName = 's008'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 100806
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
      object s009: TppLabel
        UserName = 's009'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
      object s010: TppLabel
        UserName = 's010'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 148167
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '100.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 36248
        mmTop = 3704
        mmWidth = 13229
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
end
