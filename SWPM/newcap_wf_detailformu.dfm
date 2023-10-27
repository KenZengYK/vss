object frmnewcap_wf_detail: Tfrmnewcap_wf_detail
  Left = 192
  Top = 114
  Caption = 'frmnewcap_wf_detail'
  ClientHeight = 441
  ClientWidth = 739
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
    Left = 0
    Top = 553
    Width = 739
    Height = 2
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 983
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 739
    Height = 137
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label55: TLabel
      Left = 24
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Factory: '
    end
    object Label56: TLabel
      Left = 184
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Date: '
    end
    object Label1: TLabel
      Left = 376
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Division: '
    end
    object Label14: TLabel
      Left = 928
      Top = 56
      Width = 3
      Height = 13
    end
    object DBEdit55: TDBEdit
      Left = 72
      Top = 16
      Width = 65
      Height = 21
      DataField = 'TPLANT'
      DataSource = frmnewcap_wf.DataSource1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit56: TDBEdit
      Left = 216
      Top = 16
      Width = 97
      Height = 21
      DataField = 'DT'
      DataSource = frmnewcap_wf.DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 424
      Top = 16
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = ComboBox1Change
      OnEnter = ComboBox1Enter
      Items.Strings = (
        '3A'
        '3B'
        '3D'
        '4A'
        '4B'
        '4C'
        '4D'
        '1H'
        'RX'
        'RX1'
        'RX2'
        'NS')
    end
    object GroupBox1: TGroupBox
      Left = 24
      Top = 40
      Width = 897
      Height = 41
      Caption = 
        'On-duty WF [Stationed WF / Mobile WF / Floating WF / Core-tech W' +
        'F / PP WF] (by factory)'
      TabOrder = 3
      object Label2: TLabel
        Left = 624
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Mobile WF '
      end
      object Label3: TLabel
        Left = 768
        Top = 16
        Width = 60
        Height = 13
        Caption = 'Floating WF '
      end
      object Label4: TLabel
        Left = 336
        Top = 16
        Width = 69
        Height = 13
        Caption = 'Core-tech WF '
      end
      object Label8: TLabel
        Left = 496
        Top = 16
        Width = 37
        Height = 13
        Caption = 'PP WF '
      end
      object Label10: TLabel
        Left = 8
        Top = 16
        Width = 67
        Height = 13
        Caption = 'Assembly WF '
      end
      object Label12: TLabel
        Left = 168
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Specific WF '
      end
      object SpeedButton1: TSpeedButton
        Left = 288
        Top = 16
        Width = 23
        Height = 22
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object DBEdit1: TDBEdit
        Left = 680
        Top = 16
        Width = 57
        Height = 21
        DataField = 'D12'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 832
        Top = 16
        Width = 57
        Height = 21
        DataField = 'D13'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 5
      end
      object DBEdit3: TDBEdit
        Left = 408
        Top = 16
        Width = 57
        Height = 21
        DataField = 'D16'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 536
        Top = 16
        Width = 57
        Height = 21
        DataField = 'DC01'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 3
      end
      object DBEdit9: TDBEdit
        Left = 80
        Top = 16
        Width = 57
        Height = 21
        DataField = 'D11'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 0
      end
      object DBEdit11: TDBEdit
        Left = 232
        Top = 16
        Width = 57
        Height = 21
        DataField = 'D14'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 24
      Top = 88
      Width = 897
      Height = 41
      Caption = 
        'On-hand WF [Stationed WF / Mobile WF / Floating WF / Core-tech W' +
        'F / PP WF] (by factory)'
      TabOrder = 4
      object Label5: TLabel
        Left = 624
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Mobile WF '
      end
      object Label6: TLabel
        Left = 768
        Top = 16
        Width = 60
        Height = 13
        Caption = 'Floating WF '
      end
      object Label7: TLabel
        Left = 336
        Top = 16
        Width = 69
        Height = 13
        Caption = 'Core-tech WF '
      end
      object Label9: TLabel
        Left = 496
        Top = 16
        Width = 37
        Height = 13
        Caption = 'PP WF '
      end
      object Label11: TLabel
        Left = 8
        Top = 16
        Width = 67
        Height = 13
        Caption = 'Assembly WF '
      end
      object Label13: TLabel
        Left = 168
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Specific WF '
      end
      object DBEdit4: TDBEdit
        Left = 680
        Top = 16
        Width = 57
        Height = 21
        DataField = 'H12'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 832
        Top = 16
        Width = 57
        Height = 21
        DataField = 'H13'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 408
        Top = 16
        Width = 57
        Height = 21
        DataField = 'H16'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 536
        Top = 16
        Width = 57
        Height = 21
        DataField = 'HC01'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 3
      end
      object DBEdit10: TDBEdit
        Left = 80
        Top = 16
        Width = 57
        Height = 21
        DataField = 'H11'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 0
      end
      object DBEdit12: TDBEdit
        Left = 232
        Top = 16
        Width = 57
        Height = 21
        DataField = 'H14'
        DataSource = frmnewcap_wf.DataSource1
        TabOrder = 1
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 137
    Width = 739
    Height = 416
    Align = alTop
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    DrawMemoText = True
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 8
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
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
        FieldName = 'WS'
        Footers = <
          item
            Value = 'Sub-ttl (3A): - '
            ValueType = fvtStaticText
          end
          item
            Value = 'Sub-ttl (3B): - '
            ValueType = fvtStaticText
          end
          item
            Value = 'Sub-ttl (3D): - '
            ValueType = fvtStaticText
          end
          item
            Value = 'Sub-ttl (4A): - '
            ValueType = fvtStaticText
          end
          item
            Value = 'Sub-ttl (4B): - '
            ValueType = fvtStaticText
          end
          item
            Value = 'Sub-ttl (4C): - '
            ValueType = fvtStaticText
          end
          item
            Value = 'Sub-ttl (4D): - '
            ValueType = fvtStaticText
          end
          item
            Value = 'Grand Ttl: -'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Division'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'TSHOP'
        Footers = <
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Line #'
        Width = 65
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'H1'
        Footer.Color = clWhite
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
        Title.Caption = 'On-line WF|LB3|Assembly'
        Width = 52
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'H2'
        Footer.Color = clWhite
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
        Title.Caption = 'On-line WF|LB3|Specific'
        Width = 52
      end
      item
        Color = 14873052
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'w1'
        Footer.DisplayFormat = '#,0;-#,0'
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
        Title.Caption = 'On-line WF|LB3|TTL'
        Width = 52
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'H3'
        Footer.Color = clWhite
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
        Title.Caption = 'On-line WF|LB5|Assembly'
        Width = 52
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'H4'
        Footer.Color = clWhite
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
        Title.Caption = 'On-line WF|LB5|Specific'
        Width = 52
      end
      item
        Color = 14873052
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'ONlinewf'
        Footer.DisplayFormat = '#,0;-#,0'
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
        Title.Caption = 'On-line WF|LB5|TTL'
        Width = 52
      end
      item
        Color = 14873052
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'D1'
        Footer.Color = clWhite
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
        Title.Caption = 'On-duty WF|Stationed'
        Visible = False
        Width = 52
      end
      item
        Color = 14873052
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'D2'
        Footer.Color = clWhite
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
        Title.Caption = 'On-duty WF|Mobile'
        Visible = False
        Width = 52
      end
      item
        Color = 14873052
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'D3'
        Footer.Color = clWhite
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
        Title.Caption = 'On-duty WF|Floater'
        Visible = False
        Width = 52
      end
      item
        Color = 14873052
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'D4'
        Footer.Color = clWhite
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
        Title.Caption = 'On-duty WF|Specific'
        Visible = False
        Width = 52
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'ONDUTYWF'
        Footer.Color = clWhite
        Footer.DisplayFormat = '#,0;-#,0'
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
        Title.Caption = 'On-duty WF|Assembly'
        Width = 52
      end
      item
        Color = 14873052
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'INHAND'
        Footer.Color = clWhite
        Footer.DisplayFormat = '#,0;-#,0'
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
        Title.Caption = 'On-hand WF|TTL'
        Visible = False
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'REMARKS'
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
        ShowImageAndText = True
        Title.Caption = 'Notepad'
        Width = 587
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 739
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
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
      Left = 378
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Notepad'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 450
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Notepad by Ws'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 554
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
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 626
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      Left = 241
      Top = 8
      Width = 138
      Height = 25
      Caption = 'Eff% for End Opt Ws'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
        3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
        00007777777777777777330333333C333333337FFF3337F3333F370993333C33
        3399377773F337F33377330339333C3339333F7FF7FFF7FFF7FF770777977C77
        97777777777777777777330333933C339333337F3373F7F37333370333393C39
        3333377F333737F7333333033333999333333F7FFFFF777FFFFF770777777C77
        77777777777777777777330333333C330333337F333337FF7FF3370333333C00
        003C377F333337777737330333333C3303333F7FFFFFF7FF7FFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 104
      Top = 8
      Width = 138
      Height = 25
      Caption = 'Eff% for Front Opt Ws'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
        3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
        00007777777777777777330333333C333333337FFF3337F3333F370993333C33
        3399377773F337F33377330339333C3339333F7FF7FFF7FFF7FF770777977C77
        97777777777777777777330333933C339333337F3373F7F37333370333393C39
        3333377F333737F7333333033333999333333F7FFFFF777FFFFF770777777C77
        77777777777777777777330333333C330333337F333337FF7FF3370333333C00
        003C377F333337777737330333333C3303333F7FFFFFF7FF7FFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 6
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 555
    Width = 739
    Height = 146
    Align = alClient
    DataSource = DataSource2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'PLINE'
        Footer.Value = 'W/A: - '
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Line #'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'QN'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'QN #'
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'ACOL'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Clr Code'
        Width = 33
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LSTR'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB3 WF|Assembly'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LSTR1'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB3 WF|Specific'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LB4WF'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB4 (Start) WF|Assembly'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LB4WF1'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB4 (Start) WF|Specific|PLC'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LB4WF2'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB4 (Start) WF|Specific|P.Perf'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LB4WF3'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB4 (Start) WF|Specific|Adjust'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SJRS'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB5 (WIP) WF|Assembly'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SJRS1'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB5 (WIP) WF|Specific|PLC'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SJRS2'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB5 (WIP) WF|Specific|P.Perf'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SJRS3'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB5 (WIP) WF|Specific|Adjust'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LB6WF'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB6 (End W/A) WF|Assembly'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LB6WF1'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB6 (End W/A) WF|Specific|PLC'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LB6WF2'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB6 (End W/A) WF|Specific|P.Perf'
        Width = 52
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LB6WF3'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'LB6 (End W/A) WF|Specific|Adjust'
        Width = 52
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'eff1'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'PLC %'
        Width = 54
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'eff2'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Past perf % (last day)'
        Width = 58
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'SECT'
        Footer.DisplayFormat = '0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Actual Sect Hrs'
        Width = 52
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_wf1'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'TYP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ONDUTYWF'
        DataType = ftInteger
      end
      item
        Name = 'INHAND'
        DataType = ftInteger
      end
      item
        Name = 'W1'
        DataType = ftFloat
      end
      item
        Name = 'ONLINEWF'
        DataType = ftFloat
      end
      item
        Name = 'WS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'D1'
        DataType = ftFloat
      end
      item
        Name = 'D2'
        DataType = ftFloat
      end
      item
        Name = 'D3'
        DataType = ftFloat
      end
      item
        Name = 'D4'
        DataType = ftFloat
      end
      item
        Name = 'H1'
        DataType = ftFloat
      end
      item
        Name = 'H2'
        DataType = ftFloat
      end
      item
        Name = 'H3'
        DataType = ftFloat
      end
      item
        Name = 'H4'
        DataType = ftFloat
      end
      item
        Name = 'REMARKS'
        DataType = ftMemo
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;dt;ws;seq1;tshop'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    AfterScroll = Query1AfterScroll
    Left = 80
    Top = 65512
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 120
    Top = 65512
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 65512
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 184
    Top = 65512
  end
  object DataSource2: TDataSource
    DataSet = Query4
    OnStateChange = DataSource2StateChange
    Left = 256
    Top = 296
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select distinct pline,dt1,j2_job+'#39'/'#39'+rwo+'#39'/'#39'+fccs as qn,lstr,sjr' +
      's,csect+ceot as sect from line_shjs where pline='#39'T002U'#39' and dt1=' +
      #39'2012-02-01'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 224
    Top = 296
  end
  object ADOQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 320
  end
end
