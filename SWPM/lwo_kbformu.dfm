object frmlwo_kb: Tfrmlwo_kb
  Left = 192
  Top = 114
  Width = 870
  Height = 500
  Caption = 'QN - Qty Note'
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
    Top = 0
    Width = 862
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 104
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Project'
    end
    object Label2: TLabel
      Left = 232
      Top = 8
      Width = 27
      Height = 13
      Caption = 'RWO'
    end
    object Label3: TLabel
      Left = 344
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label4: TLabel
      Left = 424
      Top = 8
      Width = 26
      Height = 13
      Caption = 'QN# '
    end
    object Label5: TLabel
      Left = 520
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object Label6: TLabel
      Left = 608
      Top = 8
      Width = 41
      Height = 13
      Caption = 'QN QTY'
    end
    object DBText1: TDBText
      Left = 144
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'J_no'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 288
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'J2_job'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 360
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'RWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 464
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'FCCS'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 552
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Acol'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 664
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Scqty'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Line'
    end
    object DBText7: TDBText
      Left = 40
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Pline'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 425
    Width = 862
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Label8: TLabel
      Left = 376
      Top = 16
      Width = 3
      Height = 13
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 57
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
      Left = 72
      Top = 8
      Width = 57
      Height = 25
      Caption = 'Copy'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 209
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Summary'
      TabOrder = 3
      OnClick = BitBtn3Click
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
      Left = 281
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Transit Flow 1'
      TabOrder = 4
      OnClick = BitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      Left = 377
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Transit Flow 2'
      TabOrder = 5
      OnClick = BitBtn5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
    object BitBtn6: TBitBtn
      Left = 473
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Transit Flow 3'
      TabOrder = 6
      OnClick = BitBtn6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
    object BitBtn7: TBitBtn
      Left = 569
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Transit Flow 4'
      TabOrder = 7
      OnClick = BitBtn7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
    object BitBtn8: TBitBtn
      Left = 665
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Notepad'
      TabOrder = 8
      OnClick = BitBtn8Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
    end
    object BitBtn9: TBitBtn
      Left = 737
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Confirm'
      TabOrder = 9
      OnClick = BitBtn9Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333377F3333333333000033334224333333333333
        337337F3333333330000333422224333333333333733337F3333333300003342
        222224333333333373333337F3333333000034222A22224333333337F337F333
        7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
        33333337F73337F337F33333000033A33333A222433333337333337F337F3333
        0000333333333A222433333333333337F337F33300003333333333A222433333
        333333337F337F33000033333333333A222433333333333337F337F300003333
        33333333A222433333333333337F337F00003333333333333A22433333333333
        3337F37F000033333333333333A223333333333333337F730000333333333333
        333A333333333333333337330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn10: TBitBtn
      Left = 801
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Close'
      TabOrder = 10
      Kind = bkClose
    end
    object BitBtn11: TBitBtn
      Left = 128
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Qty Note'
      TabOrder = 2
      OnClick = BitBtn11Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 862
    Height = 392
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
    FooterRowCount = 2
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'PSIZ'
        Footers = <
          item
            Value = 'Total'
            ValueType = fvtStaticText
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Size'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'RWO Qty'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'PQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'QN Qty'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'AQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Pick Qty (+/-)'
        Width = 71
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 1|Picked Qty'
        Width = 59
        OnEditButtonClick = DBGridEh1Columns4EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TTQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 1|T1 Qty'
        Width = 58
        OnEditButtonClick = DBGridEh1Columns5EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TSQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 2|Sewn Qty'
        Width = 57
        OnEditButtonClick = DBGridEh1Columns6EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TIP'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        Title.Caption = 'Flow 2|IP Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1ColumnsIPEditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TPQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 2|T2 Qty'
        Width = 55
        OnEditButtonClick = DBGridEh1Columns7EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TFQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 3|Packed Qty'
        OnEditButtonClick = DBGridEh1Columns8EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TFQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Flow 3|T3 Qty'
        Width = 54
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TAQL'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        Title.Caption = 'Flow 4|AQL-P Qty'
        Width = 61
        OnEditButtonClick = DBGridEh1ColumnsAQLEditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TEQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 4|Ex-fty Qty'
        Width = 53
        OnEditButtonClick = DBGridEh1Columns10EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TIQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Flow 4|Invoiced'
        Width = 51
        OnEditButtonClick = DBGridEh1Columns11EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMP'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|Picked'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'CMP1'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|T1'
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'CMPS'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|Sewn'
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'CMPIP'
        Footers = <>
        Title.Caption = 'Complete|IP'
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'CMP2'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|T2'
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'CMP3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Serif'
        Font.Style = []
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|Packed'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CMP3'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|T3'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'CMPAQL'
        Footers = <>
        Title.Caption = 'Complete|AQL-P'
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'CMP4'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|Ex-fty'
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'CMPI'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|Invoiced'
        Width = 46
      end>
  end
  object DateTimePicker1: TDateTimePicker
    Left = 40
    Top = 8
    Width = 186
    Height = 21
    CalAlignment = dtaLeft
    Date = 39022.9860333449
    Time = 39022.9860333449
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 3
    Visible = False
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo where pline='#39'T002'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 56
    Top = 88
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 120
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 88
    Top = 88
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 88
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 184
    Top = 88
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 216
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 240
    object Removeall1: TMenuItem
      Caption = 'Remove all'
      ShortCut = 49220
      Visible = False
    end
    object CancelConfirm1: TMenuItem
      Caption = 'Cancel Confirm'
    end
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
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    Left = 248
    Top = 88
    Version = '6.03'
    mmColumnWidth = 197379
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39158
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Qty Note Transit Summary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 95779
        mmTop = 3704
        mmWidth = 83873
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Factory'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 15875
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Project'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 77258
        mmTop = 15875
        mmWidth = 14552
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'fty001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16140
        mmTop = 15875
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 15875
        mmWidth = 7144
        BandType = 0
      end
      object line001: TppLabel
        UserName = 'line001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 48683
        mmTop = 15875
        mmWidth = 8996
        BandType = 0
      end
      object jno001: TppLabel
        UserName = 'jno001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 93663
        mmTop = 15875
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'QN#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 20638
        mmWidth = 12700
        BandType = 0
      end
      object job001: TppLabel
        UserName = 'job001'
        Caption = 'W000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16140
        mmTop = 20638
        mmWidth = 12171
        BandType = 0
      end
      object rwo001: TppLabel
        UserName = 'rwo001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 20638
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 20638
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Cust Style'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 15875
        mmWidth = 14552
        BandType = 0
      end
      object cstyle001: TppLabel
        UserName = 'cstyle001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 145786
        mmTop = 15875
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Color Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 77258
        mmTop = 20638
        mmWidth = 14552
        BandType = 0
      end
      object acol001: TppLabel
        UserName = 'acol001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 93663
        mmTop = 20638
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 20638
        mmWidth = 14552
        BandType = 0
      end
      object scqty001: TppLabel
        UserName = 'scqty001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 145786
        mmTop = 20638
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Printed On'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 219340
        mmTop = 15875
        mmWidth = 13494
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 235480
        mmTop = 15875
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 219340
        mmTop = 20638
        mmWidth = 6615
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 235480
        mmTop = 20638
        mmWidth = 7144
        BandType = 0
      end
      object fccs001: TppLabel
        UserName = 'fccs001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 48683
        mmTop = 20638
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 44186
        mmTop = 20638
        mmWidth = 3704
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 14023
        mmLeft = 1588
        mmTop = 25400
        mmWidth = 277548
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Size  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 26194
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Picked Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 26194
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Picked '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 31221
        mmWidth = 9260
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 14023
        mmLeft = 10583
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 14023
        mmLeft = 21696
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 14023
        mmLeft = 33338
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 14023
        mmLeft = 48154
        mmTop = 25400
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'RWO  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 12435
        mmTop = 26194
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = ' (+/-)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 35983
        mmTop = 31221
        mmWidth = 7938
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8996
        mmLeft = 62177
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'QN  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 23283
        mmTop = 26194
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = ' Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 23283
        mmTop = 31221
        mmWidth = 5207
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 13758
        mmTop = 31221
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Complete '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 203994
        mmTop = 26194
        mmWidth = 12435
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8996
        mmLeft = 187855
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 31221
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label101'
        Caption = 'T1 Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 65088
        mmTop = 31221
        mmWidth = 9260
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 14023
        mmLeft = 77258
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'T2  Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 97896
        mmTop = 31221
        mmWidth = 10054
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8731
        mmLeft = 128059
        mmTop = 30692
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 193411
        mmTop = 31221
        mmWidth = 4233
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8996
        mmLeft = 212990
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8996
        mmLeft = 238655
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'T2 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 217488
        mmTop = 31221
        mmWidth = 4233
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 14023
        mmLeft = 175419
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'T3  Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 132557
        mmTop = 31221
        mmWidth = 10054
        BandType = 0
      end
      object ppLine116: TppLine
        UserName = 'Line116'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 48154
        mmTop = 30427
        mmWidth = 230717
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'T3 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 243417
        mmTop = 31221
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = 'Sewn  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 83079
        mmTop = 31221
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 84667
        mmTop = 35454
        mmWidth = 6085
        BandType = 0
      end
      object ppLine117: TppLine
        UserName = 'Line202'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8996
        mmLeft = 94192
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLine120: TppLine
        UserName = 'Line120'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 14023
        mmLeft = 145257
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = 'Ex-fty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 149754
        mmTop = 31221
        mmWidth = 8001
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label401'
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 152400
        mmTop = 35454
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label102'
        Caption = ' Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 51858
        mmTop = 35454
        mmWidth = 5292
        BandType = 0
      end
      object ppLine123: TppLine
        UserName = 'Line123'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 14023
        mmLeft = 110596
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = '  Flow 1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 55298
        mmTop = 26194
        mmWidth = 10710
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = '  Flow 2 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 88636
        mmTop = 26194
        mmWidth = 10710
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = 'Packed '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114565
        mmTop = 31221
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 35454
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        Caption = '  Flow 3 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 122767
        mmTop = 26194
        mmWidth = 10710
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = '  Flow 4 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 154782
        mmTop = 26194
        mmWidth = 10710
        BandType = 0
      end
      object ppLine126: TppLine
        UserName = 'Line126'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8996
        mmLeft = 200290
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        Caption = 'Sewn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 203200
        mmTop = 31221
        mmWidth = 7144
        BandType = 0
      end
      object ppLine128: TppLine
        UserName = 'Line128'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8996
        mmLeft = 225690
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        Caption = 'Packed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 227542
        mmTop = 31221
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        Caption = 'Ex-fty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 255059
        mmTop = 31221
        mmWidth = 7144
        BandType = 0
      end
      object ppLine130: TppLine
        UserName = 'Line130'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8996
        mmLeft = 252148
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLine133: TppLine
        UserName = 'Line1301'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8996
        mmLeft = 265642
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label902'
        Caption = 'Invoiced'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 266965
        mmTop = 31485
        mmWidth = 10541
        BandType = 0
      end
      object ppLine135: TppLine
        UserName = 'Line135'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 8731
        mmLeft = 161132
        mmTop = 30692
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'Invoiced'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 162984
        mmTop = 31221
        mmWidth = 10541
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165629
        mmTop = 35454
        mmWidth = 5292
        BandType = 0
      end
      object myCheckBox1: TmyCheckBox
        UserName = 'CheckBox1'
        Transparent = True
        mmHeight = 3440
        mmLeft = 217488
        mmTop = 26458
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        Caption = ' /  Incomplete '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 224367
        mmTop = 26194
        mmWidth = 17463
        BandType = 0
      end
      object myCheckBox2: TmyCheckBox
        UserName = 'CheckBox2'
        Checked = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 243153
        mmTop = 26458
        mmWidth = 3440
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5027
        mmLeft = 1588
        mmTop = 0
        mmWidth = 277548
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'PSIZ'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 794
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 16626
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'AQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 46016
        mmTop = 794
        mmWidth = 1588
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 10583
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 21696
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 33338
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'TQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 55785
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 48154
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 62177
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        AutoSize = True
        DataField = 'PQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 28288
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 179917
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 187855
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP1'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 193675
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line103'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 77258
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        AutoSize = True
        DataField = 'TTQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 71131
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        AutoSize = True
        DataField = 'TPQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 104511
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 128059
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 212990
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 238655
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox3'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP2'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 218282
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object myDBCheckBox4: TmyDBCheckBox
        UserName = 'DBCheckBox4'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP3'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 243417
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        AutoSize = True
        DataField = 'TFQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 139171
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 175419
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine118: TppLine
        UserName = 'Line118'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 94192
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine121: TppLine
        UserName = 'Line121'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 145257
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'TSQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 90974
        mmTop = 794
        mmWidth = 1588
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'TEQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 158464
        mmTop = 794
        mmWidth = 1588
        BandType = 4
      end
      object ppLine124: TppLine
        UserName = 'Line124'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 110596
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'TFQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 121973
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object ppLine127: TppLine
        UserName = 'Line127'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 200290
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine129: TppLine
        UserName = 'Line129'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 225690
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine131: TppLine
        UserName = 'Line131'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 252148
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox7: TmyDBCheckBox
        UserName = 'DBCheckBox7'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMPS'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 205582
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object myDBCheckBox8: TmyDBCheckBox
        UserName = 'DBCheckBox8'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP3'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 231246
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object myDBCheckBox9: TmyDBCheckBox
        UserName = 'DBCheckBox9'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP4'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 258234
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine134: TppLine
        UserName = 'Line134'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 265642
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine136: TppLine
        UserName = 'Line136'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 161132
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox10: TmyDBCheckBox
        UserName = 'DBCheckBox10'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMPI'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 270934
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 5292
        mmLeft = 164042
        mmTop = 8202
        mmWidth = 24342
        BandType = 7
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 5292
        mmLeft = 93927
        mmTop = 8202
        mmWidth = 24342
        BandType = 7
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 5292
        mmLeft = 32279
        mmTop = 14023
        mmWidth = 24342
        BandType = 7
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 5292
        mmLeft = 93927
        mmTop = 14023
        mmWidth = 24342
        BandType = 7
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5292
        mmLeft = 32279
        mmTop = 8202
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'RWO Fty Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 9260
        mmWidth = 28046
        BandType = 7
      end
      object fdt001: TppLabel
        UserName = 'fdt001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 9260
        mmWidth = 7938
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'QN Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 15081
        mmWidth = 23813
        BandType = 7
      end
      object cfksrq001: TppLabel
        UserName = 'cfksrq001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 15081
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'QN Org. Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 63236
        mmTop = 15081
        mmWidth = 28575
        BandType = 7
      end
      object tzlcrq001: TppLabel
        UserName = 'tzlcrq001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 95250
        mmTop = 15081
        mmWidth = 11377
        BandType = 7
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'RWO Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 63236
        mmTop = 9260
        mmWidth = 24606
        BandType = 7
      end
      object yqlcrq001: TppLabel
        UserName = 'yqlcrq001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 95250
        mmTop = 9260
        mmWidth = 12171
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'RWO Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127265
        mmTop = 9260
        mmWidth = 25135
        BandType = 7
      end
      object xc3001: TppLabel
        UserName = 'xc3001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165365
        mmTop = 9260
        mmWidth = 8996
        BandType = 7
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5027
        mmLeft = 1588
        mmTop = 0
        mmWidth = 277548
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 10583
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 21696
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 33338
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 48154
        mmTop = 0
        mmWidth = 2117
        BandType = 7
      end
      object ppLine15: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 62177
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLabel27: TppLabel
        UserName = 'Label19'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 794
        mmWidth = 6085
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 8033
        mmTop = 794
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'PQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 17876
        mmTop = 794
        mmWidth = 15081
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'AQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 31899
        mmTop = 794
        mmWidth = 15610
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        AutoSize = True
        DataField = 'TQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 45509
        mmTop = 794
        mmWidth = 15081
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 77258
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        AutoSize = True
        DataField = 'TTQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 59393
        mmTop = 794
        mmWidth = 16669
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        AutoSize = True
        DataField = 'TPQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 92604
        mmTop = 794
        mmWidth = 16669
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 128059
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        AutoSize = True
        DataField = 'TFQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 127264
        mmTop = 794
        mmWidth = 16669
        BandType = 7
      end
      object ppLine32: TppLine
        UserName = 'Line32'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 175419
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object b01: TppLabel
        UserName = 'b01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 179917
        mmTop = 794
        mmWidth = 2646
        BandType = 7
      end
      object e01: TppLabel
        UserName = 'e01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 193675
        mmTop = 794
        mmWidth = 2646
        BandType = 7
      end
      object f01: TppLabel
        UserName = 'f01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 205582
        mmTop = 794
        mmWidth = 2381
        BandType = 7
      end
      object l01: TppLabel
        UserName = 'l01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 243417
        mmTop = 794
        mmWidth = 2910
        BandType = 7
      end
      object pick01: TppLabel
        UserName = 'pick01'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 30692
        mmTop = 27517
        mmWidth = 11113
        BandType = 7
      end
      object transit101: TppLabel
        UserName = 'transit101'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 101865
        mmTop = 27517
        mmWidth = 11113
        BandType = 7
      end
      object transit201: TppLabel
        UserName = 'transit201'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 239184
        mmTop = 27517
        mmWidth = 11113
        BandType = 7
      end
      object transit301: TppLabel
        UserName = 'transit301'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 101865
        mmTop = 33073
        mmWidth = 11113
        BandType = 7
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 5292
        mmLeft = 164042
        mmTop = 14023
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Caption = 'Default 1st RWO Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127265
        mmTop = 15081
        mmWidth = 34396
        BandType = 7
      end
      object yszq1: TppLabel
        UserName = 'yszq1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165365
        mmTop = 15081
        mmWidth = 7938
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label27'
        Caption = 'Picked Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 27517
        mmWidth = 19579
        BandType = 7
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'Transit 1 Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 71702
        mmTop = 27517
        mmWidth = 21960
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'Transit 2 Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 209021
        mmTop = 27517
        mmWidth = 21960
        BandType = 7
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Transit 3 Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 71702
        mmTop = 33073
        mmWidth = 21960
        BandType = 7
      end
      object ppLine119: TppLine
        UserName = 'Line119'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 94192
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine122: TppLine
        UserName = 'Line122'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 145257
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        AutoSize = True
        DataField = 'TSQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 75671
        mmTop = 794
        mmWidth = 16933
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        AutoSize = True
        DataField = 'TEQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 143404
        mmTop = 794
        mmWidth = 16669
        BandType = 7
      end
      object transit401: TppLabel
        UserName = 'transit401'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 168805
        mmTop = 33073
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        Caption = 'Ex-fty Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142346
        mmTop = 33073
        mmWidth = 17992
        BandType = 7
      end
      object ppLine125: TppLine
        UserName = 'Line125'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 110596
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        AutoSize = True
        DataField = 'TFQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 110066
        mmTop = 794
        mmWidth = 16669
        BandType = 7
      end
      object sewn01: TppLabel
        UserName = 'sewn01'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 168805
        mmTop = 27517
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Sewn Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142346
        mmTop = 27517
        mmWidth = 17992
        BandType = 7
      end
      object packed01: TppLabel
        UserName = 'packed01'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 30692
        mmTop = 33073
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Packed Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 33073
        mmWidth = 20373
        BandType = 7
      end
      object j01: TppLabel
        UserName = 'j01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 231246
        mmTop = 794
        mmWidth = 4763
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Invoiced Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 209021
        mmTop = 33073
        mmWidth = 21431
        BandType = 7
      end
      object ppLine137: TppLine
        UserName = 'Line137'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 161132
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLabel93: TppLabel
        UserName = 'Label24'
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 27517
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43656
        mmTop = 27517
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 33073
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43656
        mmTop = 33073
        mmWidth = 7673
        BandType = 7
      end
      object pick02: TppLabel
        UserName = 'pick02'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 27517
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 94721
        mmTop = 27517
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 94721
        mmTop = 33073
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114829
        mmTop = 33073
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114829
        mmTop = 27517
        mmWidth = 7673
        BandType = 7
      end
      object packed02: TppLabel
        UserName = 'packed02'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 33073
        mmWidth = 11113
        BandType = 7
      end
      object transit102: TppLabel
        UserName = 'transit102'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 123561
        mmTop = 27517
        mmWidth = 11113
        BandType = 7
      end
      object transit302: TppLabel
        UserName = 'transit302'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 123561
        mmTop = 33073
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel101: TppLabel
        UserName = 'Label30'
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 27517
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel102: TppLabel
        UserName = 'Label31'
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 33073
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 181769
        mmTop = 33073
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel104: TppLabel
        UserName = 'Label1001'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 181769
        mmTop = 27517
        mmWidth = 7673
        BandType = 7
      end
      object sewn02: TppLabel
        UserName = 'sewn02'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 190765
        mmTop = 27517
        mmWidth = 11113
        BandType = 7
      end
      object transit402: TppLabel
        UserName = 'transit402'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 190765
        mmTop = 33073
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel105: TppLabel
        UserName = 'Label301'
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 232040
        mmTop = 27517
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 232040
        mmTop = 33073
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 252148
        mmTop = 33073
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 252148
        mmTop = 27517
        mmWidth = 7673
        BandType = 7
      end
      object transit202: TppLabel
        UserName = 'transit202'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 261144
        mmTop = 27517
        mmWidth = 11113
        BandType = 7
      end
      object ppLine138: TppLine
        UserName = 'Line138'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 30692
        mmTop = 30956
        mmWidth = 11906
        BandType = 7
      end
      object ppLine139: TppLine
        UserName = 'Line139'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 52388
        mmTop = 30956
        mmWidth = 11906
        BandType = 7
      end
      object ppLine140: TppLine
        UserName = 'Line140'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 30692
        mmTop = 36777
        mmWidth = 11906
        BandType = 7
      end
      object ppLine141: TppLine
        UserName = 'Line141'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 52388
        mmTop = 36777
        mmWidth = 11906
        BandType = 7
      end
      object ppLine142: TppLine
        UserName = 'Line142'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 101865
        mmTop = 30956
        mmWidth = 11906
        BandType = 7
      end
      object ppLine143: TppLine
        UserName = 'Line143'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 123561
        mmTop = 30956
        mmWidth = 11906
        BandType = 7
      end
      object ppLine144: TppLine
        UserName = 'Line1401'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 101865
        mmTop = 36777
        mmWidth = 11906
        BandType = 7
      end
      object ppLine145: TppLine
        UserName = 'Line145'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 123561
        mmTop = 36777
        mmWidth = 11906
        BandType = 7
      end
      object ppLine146: TppLine
        UserName = 'Line146'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 168805
        mmTop = 30956
        mmWidth = 11906
        BandType = 7
      end
      object ppLine147: TppLine
        UserName = 'Line147'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 190500
        mmTop = 30956
        mmWidth = 11906
        BandType = 7
      end
      object ppLine148: TppLine
        UserName = 'Line148'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 168805
        mmTop = 36777
        mmWidth = 11906
        BandType = 7
      end
      object ppLine149: TppLine
        UserName = 'Line149'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 190500
        mmTop = 36777
        mmWidth = 11906
        BandType = 7
      end
      object ppLine150: TppLine
        UserName = 'Line150'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 239184
        mmTop = 30956
        mmWidth = 11906
        BandType = 7
      end
      object ppLine151: TppLine
        UserName = 'Line151'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 260880
        mmTop = 30956
        mmWidth = 11906
        BandType = 7
      end
      object ppLine152: TppLine
        UserName = 'Line152'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 239184
        mmTop = 36777
        mmWidth = 11906
        BandType = 7
      end
      object ppLine153: TppLine
        UserName = 'Line153'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 260880
        mmTop = 36777
        mmWidth = 11906
        BandType = 7
      end
      object ppLabel109: TppLabel
        UserName = 'Label36'
        Caption = 'Flow Period : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1588
        mmTop = 21960
        mmWidth = 17314
        BandType = 7
      end
      object h01: TppLabel
        UserName = 'h01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 218546
        mmTop = 794
        mmWidth = 4763
        BandType = 7
      end
      object m01: TppLabel
        UserName = 'm01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 258234
        mmTop = 794
        mmWidth = 5546
        BandType = 7
      end
    end
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 280
    Top = 88
  end
  object Query6: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo_dt'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query6AfterPost
    Left = 56
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = Query6
    Left = 88
    Top = 128
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    Left = 248
    Top = 128
    Version = '6.03'
    mmColumnWidth = 197379
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 38629
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'QN Transit Flow 1/ (Picked - > Transit 1 ) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 80698
        mmTop = 3704
        mmWidth = 112184
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Factory'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 13758
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Project'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 13758
        mmWidth = 14552
        BandType = 0
      end
      object fty002: TppLabel
        UserName = 'fty001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16140
        mmTop = 13758
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 13758
        mmWidth = 7144
        BandType = 0
      end
      object line002: TppLabel
        UserName = 'line001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 48683
        mmTop = 13758
        mmWidth = 8996
        BandType = 0
      end
      object jno002: TppLabel
        UserName = 'jno001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 106363
        mmTop = 13758
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'QN#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 18521
        mmWidth = 12700
        BandType = 0
      end
      object job002: TppLabel
        UserName = 'job001'
        Caption = 'W000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16140
        mmTop = 18521
        mmWidth = 12171
        BandType = 0
      end
      object rwo002: TppLabel
        UserName = 'rwo001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 18521
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Cust Style'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 154782
        mmTop = 13758
        mmWidth = 14552
        BandType = 0
      end
      object cstyle002: TppLabel
        UserName = 'cstyle001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 13758
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Color Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 18521
        mmWidth = 14552
        BandType = 0
      end
      object acol002: TppLabel
        UserName = 'acol001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 106363
        mmTop = 18521
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 154782
        mmTop = 18521
        mmWidth = 14552
        BandType = 0
      end
      object scqty002: TppLabel
        UserName = 'scqty001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 18521
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label14'
        Caption = 'Printed On'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 217753
        mmTop = 13758
        mmWidth = 13494
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 233892
        mmTop = 13758
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label15'
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 217753
        mmTop = 18521
        mmWidth = 6615
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 233892
        mmTop = 18521
        mmWidth = 7144
        BandType = 0
      end
      object fccs002: TppLabel
        UserName = 'fccs001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 48683
        mmTop = 18521
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 44186
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape1'
        mmHeight = 15346
        mmLeft = 1588
        mmTop = 23548
        mmWidth = 279136
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label5'
        Caption = 'Size  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 29633
        mmWidth = 7144
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 10583
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 23019
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 38100
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 53181
        mmTop = 23548
        mmWidth = 2117
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 68263
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label25'
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 12965
        mmTop = 29633
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label28'
        Caption = 'Complete / '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 266436
        mmTop = 24342
        mmWidth = 14023
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 247386
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label29'
        Caption = 'Incomplete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 266436
        mmTop = 31221
        mmWidth = 13494
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 83608
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 98690
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 265907
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line30'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 227278
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 234421
        mmTop = 24342
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = 'Flow Diff'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 249767
        mmTop = 24342
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 247915
        mmTop = 33867
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = 'T1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 259821
        mmTop = 33867
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 228336
        mmTop = 29633
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        Caption = 'T1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 241300
        mmTop = 29633
        mmWidth = 3175
        BandType = 0
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 113771
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 128852
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine65: TppLine
        UserName = 'Line65'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 143934
        mmTop = 23813
        mmWidth = 2646
        BandType = 0
      end
      object ppLine66: TppLine
        UserName = 'Line66'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 159015
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object dt01: TppLabel
        UserName = 'dt01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 25135
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object dt02: TppLabel
        UserName = 'dt02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 40217
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object dt03: TppLabel
        UserName = 'dt03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 55298
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object dt04: TppLabel
        UserName = 'dt04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 70379
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object dt05: TppLabel
        UserName = 'dt05'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 85725
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object dt06: TppLabel
        UserName = 'dt06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 100806
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object dt07: TppLabel
        UserName = 'dt07'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 116152
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object dt08: TppLabel
        UserName = 'dt08'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object dt09: TppLabel
        UserName = 'dt09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 145786
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object dt10: TppLabel
        UserName = 'dt10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160867
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object seq01: TppLabel
        UserName = 'seq01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 27252
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object seq02: TppLabel
        UserName = 'seq02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 42333
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object seq03: TppLabel
        UserName = 'seq03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 57150
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object seq04: TppLabel
        UserName = 'seq04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 72496
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object seq05: TppLabel
        UserName = 'seq05'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 87842
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object seq06: TppLabel
        UserName = 'seq06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 102923
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object seq07: TppLabel
        UserName = 'seq07'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 117740
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object seq08: TppLabel
        UserName = 'seq08'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 132821
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object seq09: TppLabel
        UserName = 'seq09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 147902
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object seq10: TppLabel
        UserName = 'seq10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 162984
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object ppLine100: TppLine
        UserName = 'Line100'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 174890
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine103: TppLine
        UserName = 'Line1001'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 191559
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine104: TppLine
        UserName = 'Line1002'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 15346
        mmLeft = 209550
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object seq11: TppLabel
        UserName = 'seq11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 179123
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object dt11: TppLabel
        UserName = 'dt11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 177007
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object seq12: TppLabel
        UserName = 'seq12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 195792
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object dt12: TppLabel
        UserName = 'dt12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 193675
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object seq13: TppLabel
        UserName = 'seq13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 214048
        mmTop = 24342
        mmWidth = 7938
        BandType = 0
      end
      object dt13: TppLabel
        UserName = 'dt13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 211932
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 247915
        mmTop = 29369
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 259821
        mmTop = 29633
        mmWidth = 3440
        BandType = 0
      end
      object x001: TppLabel
        UserName = 'x001'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 25929
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y001: TppLabel
        UserName = 'y001'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 33602
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x002: TppLabel
        UserName = 'x002'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 40746
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y002: TppLabel
        UserName = 'Label601'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 48419
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x003: TppLabel
        UserName = 'x003'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 56092
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y003: TppLabel
        UserName = 'Label602'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 63500
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x004: TppLabel
        UserName = 'x004'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 70644
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y004: TppLabel
        UserName = 'y004'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 78317
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x005: TppLabel
        UserName = 'x005'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 85725
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y005: TppLabel
        UserName = 'Label603'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 93398
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x006: TppLabel
        UserName = 'x006'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 100542
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y006: TppLabel
        UserName = 'y006'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 108215
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x007: TppLabel
        UserName = 'x007'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115888
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y007: TppLabel
        UserName = 'y007'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 123561
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x008: TppLabel
        UserName = 'x008'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130704
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y008: TppLabel
        UserName = 'y008'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 138377
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x009: TppLabel
        UserName = 'x009'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 146315
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y009: TppLabel
        UserName = 'y009'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 153988
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x010: TppLabel
        UserName = 'x010'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y010: TppLabel
        UserName = 'y010'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169334
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x011: TppLabel
        UserName = 'x011'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y011: TppLabel
        UserName = 'y011'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 185473
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x012: TppLabel
        UserName = 'x012'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 195263
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y012: TppLabel
        UserName = 'Label901'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 202936
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object x013: TppLabel
        UserName = 'x013'
        Caption = 'PI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 213255
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object y013: TppLabel
        UserName = 'y013'
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 220928
        mmTop = 33867
        mmWidth = 3969
        BandType = 0
      end
      object ppLine132: TppLine
        UserName = 'Line16'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 1588
        mmTop = 28575
        mmWidth = 264584
        BandType = 0
      end
      object myCheckBox3: TmyCheckBox
        UserName = 'CheckBox3'
        Transparent = True
        mmHeight = 3440
        mmLeft = 270934
        mmTop = 28046
        mmWidth = 3704
        BandType = 0
      end
      object myCheckBox4: TmyCheckBox
        UserName = 'CheckBox4'
        Checked = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 270934
        mmTop = 35190
        mmWidth = 3704
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape10: TppShape
        UserName = 'Shape2'
        mmHeight = 5027
        mmLeft = 1588
        mmTop = 0
        mmWidth = 279136
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'PSIZ'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 794
        mmWidth = 7408
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 10583
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 23019
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 38100
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine45: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 113771
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 128852
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText25'
        AutoSize = True
        DataField = 'PQTY'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 17463
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object myDBCheckBox5: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'CMP'
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 267230
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 247386
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox6: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'CMP1'
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 273844
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine48: TppLine
        UserName = 'Line103'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 143934
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine49: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 159015
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine50: TppLine
        UserName = 'Line28'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 265907
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine51: TppLine
        UserName = 'Line29'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 272786
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine52: TppLine
        UserName = 'Line31'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 227278
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 257176
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 237861
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'TQTY'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 232569
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'TTQTY'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 242094
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object ppLine67: TppLine
        UserName = 'Line67'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 68263
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine68: TppLine
        UserName = 'Line68'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 83608
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine69: TppLine
        UserName = 'Line69'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 53181
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine70: TppLine
        UserName = 'Line70'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 98690
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine80: TppLine
        UserName = 'Line80'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 30163
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine81: TppLine
        UserName = 'Line801'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 45508
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine82: TppLine
        UserName = 'Line802'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 60325
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine83: TppLine
        UserName = 'Line83'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 75936
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine84: TppLine
        UserName = 'Line84'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 90752
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine85: TppLine
        UserName = 'Line85'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 106098
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppLine86: TppLine
        UserName = 'Line86'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 120915
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppLine87: TppLine
        UserName = 'Line87'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 136261
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine88: TppLine
        UserName = 'Line88'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 151342
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppLine89: TppLine
        UserName = 'Line89'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 166688
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object p01: TppLabel
        UserName = 'p01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 24871
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t01: TppLabel
        UserName = 't01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 33602
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p02: TppLabel
        UserName = 'p02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 40217
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t02: TppLabel
        UserName = 't02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 48948
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p03: TppLabel
        UserName = 'p03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 55033
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t03: TppLabel
        UserName = 't03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 63765
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p04: TppLabel
        UserName = 'p04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 70644
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t04: TppLabel
        UserName = 't04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 79375
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p05: TppLabel
        UserName = 'p05'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 85461
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t05: TppLabel
        UserName = 't05'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 94192
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p06: TppLabel
        UserName = 'p06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 100806
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t06: TppLabel
        UserName = 't06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 109538
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p07: TppLabel
        UserName = 'p07'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 115623
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t07: TppLabel
        UserName = 't07'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 124354
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p08: TppLabel
        UserName = 'p08'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 130969
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t08: TppLabel
        UserName = 't08'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 139700
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p09: TppLabel
        UserName = 'p09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 146050
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t09: TppLabel
        UserName = 't09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 154782
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p10: TppLabel
        UserName = 'p10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 161396
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t10: TppLabel
        UserName = 't10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 170392
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object ppLine101: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 174890
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine105: TppLine
        UserName = 'Line105'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 191559
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine106: TppLine
        UserName = 'Line106'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 209550
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine107: TppLine
        UserName = 'Line107'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 183092
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine108: TppLine
        UserName = 'Line108'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 200555
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine109: TppLine
        UserName = 'Line109'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 218282
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object p11: TppLabel
        UserName = 'p11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t11: TppLabel
        UserName = 't11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 187061
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p12: TppLabel
        UserName = 'p12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 195263
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t12: TppLabel
        UserName = 't12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 204788
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object p13: TppLabel
        UserName = 'p13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 212990
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object t13: TppLabel
        UserName = 't13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 222780
        mmTop = 794
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'DIFF'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 255059
        mmTop = 794
        mmWidth = 1588
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'DIFF1'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 263790
        mmTop = 794
        mmWidth = 1588
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppShape11: TppShape
        UserName = 'Shape8'
        mmHeight = 4498
        mmLeft = 195527
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppShape12: TppShape
        UserName = 'Shape7'
        mmHeight = 4498
        mmLeft = 106892
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppShape13: TppShape
        UserName = 'Shape6'
        mmHeight = 4498
        mmLeft = 32808
        mmTop = 6085
        mmWidth = 24342
        BandType = 7
      end
      object ppShape14: TppShape
        UserName = 'Shape5'
        mmHeight = 4498
        mmLeft = 106892
        mmTop = 6085
        mmWidth = 24342
        BandType = 7
      end
      object ppShape15: TppShape
        UserName = 'Shape4'
        mmHeight = 4498
        mmLeft = 32808
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel76: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'RWO Fty Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 1588
        mmWidth = 28046
        BandType = 7
      end
      object fdt002: TppLabel
        UserName = 'fdt001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 1588
        mmWidth = 7938
        BandType = 7
      end
      object ppLabel78: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'QN Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 6615
        mmWidth = 23813
        BandType = 7
      end
      object cfksrq002: TppLabel
        UserName = 'cfksrq001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 6615
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel80: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'QN Org. Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 73554
        mmTop = 6615
        mmWidth = 33073
        BandType = 7
      end
      object tzlcrq002: TppLabel
        UserName = 'tzlcrq001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 108215
        mmTop = 6615
        mmWidth = 11377
        BandType = 7
      end
      object ppLabel82: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'RWO Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 73554
        mmTop = 1588
        mmWidth = 24606
        BandType = 7
      end
      object yqlcrq002: TppLabel
        UserName = 'yqlcrq001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 108215
        mmTop = 1588
        mmWidth = 12171
        BandType = 7
      end
      object ppLabel84: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'RWO Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 149754
        mmTop = 1588
        mmWidth = 23283
        BandType = 7
      end
      object xc3002: TppLabel
        UserName = 'xc3001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 196850
        mmTop = 1588
        mmWidth = 8996
        BandType = 7
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 4498
        mmLeft = 195527
        mmTop = 6085
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        AutoSize = False
        Caption = 'Default 1st RWO Fty Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 149754
        mmTop = 6615
        mmWidth = 39423
        BandType = 7
      end
      object yszq2: TppLabel
        UserName = 'yszq2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 196850
        mmTop = 6615
        mmWidth = 7938
        BandType = 7
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        Caption = 'Notepad for flow diff : -  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 23813
        mmWidth = 30163
        BandType = 7
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 14817
        mmLeft = 1588
        mmTop = 28310
        mmWidth = 278342
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object pic01: TppLabel
        UserName = 'pic01'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 30692
        mmTop = 18521
        mmWidth = 11113
        BandType = 7
      end
      object trs01: TppLabel
        UserName = 'trs01'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 103717
        mmTop = 18521
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        Caption = 'Picked Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 18521
        mmWidth = 19579
        BandType = 7
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        Caption = 'Transit 1 Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 73554
        mmTop = 18521
        mmWidth = 21960
        BandType = 7
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 18521
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43656
        mmTop = 18521
        mmWidth = 7673
        BandType = 7
      end
      object pic02: TppLabel
        UserName = 'pic02'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 18521
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96573
        mmTop = 18521
        mmWidth = 6085
        BandType = 7
      end
      object ppLabel117: TppLabel
        UserName = 'Label1002'
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 116681
        mmTop = 18521
        mmWidth = 7673
        BandType = 7
      end
      object trs02: TppLabel
        UserName = 'trs02'
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 125413
        mmTop = 18521
        mmWidth = 11113
        BandType = 7
      end
      object ppLine154: TppLine
        UserName = 'Line154'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 30692
        mmTop = 21960
        mmWidth = 11906
        BandType = 7
      end
      object ppLine155: TppLine
        UserName = 'Line155'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 52388
        mmTop = 21960
        mmWidth = 11906
        BandType = 7
      end
      object ppLine156: TppLine
        UserName = 'Line156'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 103717
        mmTop = 21960
        mmWidth = 11906
        BandType = 7
      end
      object ppLine157: TppLine
        UserName = 'Line157'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 125413
        mmTop = 21960
        mmWidth = 11906
        BandType = 7
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        Caption = 'Flow Period : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 13229
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline2
      ReprintOnSubsequentPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppShape16: TppShape
          UserName = 'Shape3'
          mmHeight = 5027
          mmLeft = 1588
          mmTop = 0
          mmWidth = 279136
          BandType = 5
          GroupNo = 0
        end
        object ppLine53: TppLine
          UserName = 'Line11'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 10583
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine54: TppLine
          UserName = 'Line12'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 23019
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine55: TppLine
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 38100
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine56: TppLine
          UserName = 'Line14'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 227278
          mmTop = 0
          mmWidth = 2117
          BandType = 5
          GroupNo = 0
        end
        object ppLine57: TppLine
          UserName = 'Line101'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 237861
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLabel86: TppLabel
          UserName = 'Label19'
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 2381
          mmTop = 794
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc2'
          AutoSize = True
          DataField = 'PQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3704
          mmLeft = 7144
          mmTop = 794
          mmWidth = 15081
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc4'
          AutoSize = True
          DataField = 'TQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3704
          mmLeft = 222251
          mmTop = 794
          mmWidth = 15081
          BandType = 5
          GroupNo = 0
        end
        object ppLine58: TppLine
          UserName = 'Line22'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 247386
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc15'
          AutoSize = True
          DataField = 'TTQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3704
          mmLeft = 230187
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
        end
        object ppLine59: TppLine
          UserName = 'Line25'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 257176
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine60: TppLine
          UserName = 'Line32'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 265907
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine71: TppLine
          UserName = 'Line71'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 128852
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine72: TppLine
          UserName = 'Line72'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 143934
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine73: TppLine
          UserName = 'Line73'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 159015
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine74: TppLine
          UserName = 'Line74'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 83608
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine75: TppLine
          UserName = 'Line75'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 98690
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine76: TppLine
          UserName = 'Line76'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 113771
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine77: TppLine
          UserName = 'Line77'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 53181
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine78: TppLine
          UserName = 'Line78'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 68263
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine79: TppLine
          UserName = 'Line79'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 272786
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine90: TppLine
          UserName = 'Line90'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 30163
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine91: TppLine
          UserName = 'Line91'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 45508
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine92: TppLine
          UserName = 'Line92'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 60325
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine93: TppLine
          UserName = 'Line93'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 75936
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine94: TppLine
          UserName = 'Line94'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 90752
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine95: TppLine
          UserName = 'Line95'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 106098
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine96: TppLine
          UserName = 'Line96'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 120915
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine97: TppLine
          UserName = 'Line97'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 136261
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine98: TppLine
          UserName = 'Line98'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 151342
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine99: TppLine
          UserName = 'Line99'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 166688
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object sp01: TppLabel
          UserName = 'sp01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 23283
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st01: TppLabel
          UserName = 'st01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 32015
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp02: TppLabel
          UserName = 'sp02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 38629
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st02: TppLabel
          UserName = 'st02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 47361
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp03: TppLabel
          UserName = 'sp03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 53446
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st03: TppLabel
          UserName = 'st03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 62177
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp04: TppLabel
          UserName = 'sp04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 69056
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st04: TppLabel
          UserName = 'st04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 77788
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp05: TppLabel
          UserName = 'sp05'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 83873
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st05: TppLabel
          UserName = 'st05'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 92604
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp06: TppLabel
          UserName = 'sp06'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 99219
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st06: TppLabel
          UserName = 'st06'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 107950
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp07: TppLabel
          UserName = 'sp07'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 114036
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st07: TppLabel
          UserName = 'st07'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 122767
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp08: TppLabel
          UserName = 'sp08'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 129382
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st08: TppLabel
          UserName = 'st08'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 138113
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp09: TppLabel
          UserName = 'sp09'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 144463
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st09: TppLabel
          UserName = 'st09'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 153194
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp10: TppLabel
          UserName = 'sp10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 159809
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st10: TppLabel
          UserName = 'st10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 168805
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object b02: TppLabel
          UserName = 'b02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 267494
          mmTop = 794
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object e02: TppLabel
          UserName = 'e02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 274109
          mmTop = 794
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object ppLine102: TppLine
          UserName = 'Line102'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 174890
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine110: TppLine
          UserName = 'Line110'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 183092
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine111: TppLine
          UserName = 'Line1101'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 183092
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine112: TppLine
          UserName = 'Line112'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 191559
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine113: TppLine
          UserName = 'Line113'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 200555
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine114: TppLine
          UserName = 'Line114'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 209550
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine115: TppLine
          UserName = 'Line115'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 218282
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object sp11: TppLabel
          UserName = 'sp11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 176213
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st11: TppLabel
          UserName = 'st11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 185473
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp12: TppLabel
          UserName = 'sp12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 193675
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st12: TppLabel
          UserName = 'st12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 203200
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sp13: TppLabel
          UserName = 'sp13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 211403
          mmTop = 794
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object st13: TppLabel
          UserName = 'st13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 221192
          mmTop = 794
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          AutoSize = True
          DataField = 'DIFF'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3704
          mmLeft = 243417
          mmTop = 794
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          AutoSize = True
          DataField = 'DIFF1'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3704
          mmLeft = 250560
          mmTop = 794
          mmWidth = 14817
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object Query7: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_trans_qty'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 128
  end
  object DataSource3: TDataSource
    DataSet = Query7
    Left = 184
    Top = 128
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline2'
    Left = 216
    Top = 128
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport3PreviewFormCreate
    Left = 280
    Top = 128
    Version = '6.03'
    mmColumnWidth = 197379
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 6350
        mmLeft = 5027
        mmTop = 25929
        mmWidth = 52388
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'QN  ----   Qty Note '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 41804
        mmTop = 3704
        mmWidth = 96044
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Factory'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 13758
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Project'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 71967
        mmTop = 13758
        mmWidth = 14552
        BandType = 0
      end
      object fty003: TppLabel
        UserName = 'fty003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19579
        mmTop = 13758
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43127
        mmTop = 13758
        mmWidth = 7144
        BandType = 0
      end
      object line003: TppLabel
        UserName = 'line003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52123
        mmTop = 13758
        mmWidth = 8996
        BandType = 0
      end
      object jno003: TppLabel
        UserName = 'jno003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 88371
        mmTop = 13758
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'QN#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 18521
        mmWidth = 12700
        BandType = 0
      end
      object job003: TppLabel
        UserName = 'job003'
        Caption = 'W000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19579
        mmTop = 18521
        mmWidth = 12171
        BandType = 0
      end
      object rwo003: TppLabel
        UserName = 'rwo003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 18521
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 33073
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Cust Style'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 112184
        mmTop = 13758
        mmWidth = 14552
        BandType = 0
      end
      object cstyle003: TppLabel
        UserName = 'cstyle003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 128852
        mmTop = 13758
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Color Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 71967
        mmTop = 18521
        mmWidth = 14552
        BandType = 0
      end
      object acol003: TppLabel
        UserName = 'acol003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 88371
        mmTop = 18521
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 112184
        mmTop = 18521
        mmWidth = 14552
        BandType = 0
      end
      object scqty003: TppLabel
        UserName = 'scqty003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 128852
        mmTop = 18521
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label14'
        Caption = 'Printed On'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 13758
        mmWidth = 13494
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 13758
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label15'
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 18521
        mmWidth = 6615
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 18521
        mmWidth = 7144
        BandType = 0
      end
      object fccs003: TppLabel
        UserName = 'fccs003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52123
        mmTop = 18521
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 47625
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label5'
        Caption = 'Size  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5821
        mmTop = 27252
        mmWidth = 7144
        BandType = 0
      end
      object ppLine158: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 16140
        mmTop = 26194
        mmWidth = 2646
        BandType = 0
      end
      object ppLine159: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 35719
        mmTop = 26194
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label25'
        Caption = 'RWO Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 20638
        mmTop = 27252
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label140'
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 45508
        mmTop = 27252
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape20: TppShape
        UserName = 'Shape2'
        mmHeight = 5027
        mmLeft = 5027
        mmTop = 0
        mmWidth = 52388
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'PSIZ'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 5821
        mmTop = 794
        mmWidth = 6879
        BandType = 4
      end
      object ppLine177: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 16140
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine178: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 35719
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText25'
        AutoSize = True
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        DataField = 'PQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 50006
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel120: TppLabel
        UserName = 'Label120'
        AutoSize = False
        Caption = 'Signature : -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 3969
        mmWidth = 23283
        BandType = 8
      end
      object ppLine160: TppLine
        UserName = 'Line160'
        Weight = 0.75
        mmHeight = 1852
        mmLeft = 29369
        mmTop = 7938
        mmWidth = 37571
        BandType = 8
      end
      object ppLabel122: TppLabel
        UserName = 'Label1201'
        AutoSize = False
        Caption = 'Date : -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 85461
        mmTop = 3969
        mmWidth = 15610
        BandType = 8
      end
      object ppLine161: TppLine
        UserName = 'Line1601'
        Weight = 0.75
        mmHeight = 1852
        mmLeft = 102129
        mmTop = 7938
        mmWidth = 37571
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppShape21: TppShape
        UserName = 'Shape8'
        mmHeight = 4498
        mmLeft = 36248
        mmTop = 11113
        mmWidth = 24342
        BandType = 7
      end
      object ppShape22: TppShape
        UserName = 'Shape7'
        mmHeight = 4498
        mmLeft = 36248
        mmTop = 6085
        mmWidth = 24342
        BandType = 7
      end
      object ppShape23: TppShape
        UserName = 'Shape6'
        mmHeight = 4498
        mmLeft = 114036
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppShape24: TppShape
        UserName = 'Shape5'
        mmHeight = 4498
        mmLeft = 114036
        mmTop = 6085
        mmWidth = 24342
        BandType = 7
      end
      object ppShape25: TppShape
        UserName = 'Shape4'
        mmHeight = 4498
        mmLeft = 36248
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel228: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'RWO Fty Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 1588
        mmWidth = 28046
        BandType = 7
      end
      object fdt003: TppLabel
        UserName = 'fdt003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 1588
        mmWidth = 7938
        BandType = 7
      end
      object ppLabel230: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'QN Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 73290
        mmTop = 1588
        mmWidth = 23813
        BandType = 7
      end
      object cfksrq003: TppLabel
        UserName = 'cfksrq003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 115359
        mmTop = 1588
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel232: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'QN Org. Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 73290
        mmTop = 6615
        mmWidth = 33073
        BandType = 7
      end
      object tzlcrq003: TppLabel
        UserName = 'tzlcrq003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 115359
        mmTop = 6615
        mmWidth = 11377
        BandType = 7
      end
      object ppLabel234: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'RWO Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 6615
        mmWidth = 24606
        BandType = 7
      end
      object yqlcrq003: TppLabel
        UserName = 'yqlcrq003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 6615
        mmWidth = 12171
        BandType = 7
      end
      object ppLabel236: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'RWO Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 11642
        mmWidth = 23283
        BandType = 7
      end
      object xc3003: TppLabel
        UserName = 'xc3003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 11642
        mmWidth = 8996
        BandType = 7
      end
      object ppShape26: TppShape
        UserName = 'Shape18'
        mmHeight = 4498
        mmLeft = 114036
        mmTop = 11113
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel238: TppLabel
        UserName = 'Label51'
        AutoSize = False
        Caption = 'Default 1st RWO Fty Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 73290
        mmTop = 11642
        mmWidth = 39423
        BandType = 7
      end
      object yszq3: TppLabel
        UserName = 'yszq3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115359
        mmTop = 11642
        mmWidth = 7938
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline1
      ReprintOnSubsequentPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppShape27: TppShape
          UserName = 'Shape27'
          mmHeight = 5821
          mmLeft = 5027
          mmTop = 0
          mmWidth = 52388
          BandType = 5
          GroupNo = 0
        end
        object ppLine214: TppLine
          UserName = 'Line11'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 5556
          mmLeft = 16140
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine215: TppLine
          UserName = 'Line12'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 5556
          mmLeft = 35719
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLabel252: TppLabel
          UserName = 'Label19'
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 5821
          mmTop = 794
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc2'
          AutoSize = True
          DataField = 'QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 20902
          mmTop = 794
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          AutoSize = True
          DataField = 'PQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 39688
          mmTop = 794
          mmWidth = 15081
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
