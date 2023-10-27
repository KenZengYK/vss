object frmgsdtmu: Tfrmgsdtmu
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'GSD TMU (Weight Average)'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 446
    ActivePage = TabSheet1
    Align = alClient
    Style = tsButtons
    TabIndex = 0
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = #23458#25142'/'#23610#30908'/'#26479' '#35373#23450
      ImageIndex = 2
      TabVisible = False
      object Label9: TLabel
        Left = 24
        Top = 24
        Width = 48
        Height = 13
        Caption = #23458#25142#36039#26009
      end
      object Label10: TLabel
        Left = 312
        Top = 24
        Width = 24
        Height = 13
        Caption = #23610#30908
      end
      object Label11: TLabel
        Left = 496
        Top = 24
        Width = 12
        Height = 13
        Caption = #26479
      end
      object DBGridEh3: TDBGridEh
        Left = 24
        Top = 40
        Width = 273
        Height = 241
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
      end
      object DBGridEh4: TDBGridEh
        Left = 312
        Top = 40
        Width = 169
        Height = 241
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
      end
      object DBGridEh5: TDBGridEh
        Left = 496
        Top = 40
        Width = 153
        Height = 241
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Default TMU Ratio'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 680
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 16
          Top = 16
          Width = 44
          Height = 13
          Caption = 'Customer'
        end
        object Label5: TLabel
          Left = 184
          Top = 16
          Width = 64
          Height = 13
          Caption = 'Product Type'
        end
        object Label6: TLabel
          Left = 376
          Top = 16
          Width = 28
          Height = 13
          Caption = 'Brand'
        end
        object ComboBox3: TComboBox
          Left = 64
          Top = 16
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
          OnKeyPress = ComboBox3KeyPress
        end
        object ComboBox4: TComboBox
          Left = 256
          Top = 16
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 1
          OnKeyPress = ComboBox3KeyPress
        end
        object ComboBox5: TComboBox
          Left = 408
          Top = 16
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 2
          OnEnter = ComboBox5Enter
          OnKeyPress = ComboBox3KeyPress
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 680
        Height = 320
        Align = alClient
        DataSource = DataSource2
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            Color = 11267047
            EditButtons = <>
            FieldName = 'CUST'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Customer'
          end
          item
            Color = 11267047
            EditButtons = <>
            FieldName = 'PTYP'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Product Type'
            Width = 55
          end
          item
            Color = 11267047
            EditButtons = <>
            FieldName = 'LST2'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Brand'
            Width = 43
          end
          item
            Color = 11267047
            EditButtons = <>
            FieldName = 'SEQ'
            Footers = <>
            ReadOnly = True
            Visible = False
          end
          item
            Color = 11267047
            EditButtons = <>
            FieldName = 'CUP'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Cup'
          end
          item
            EditButtons = <>
            FieldName = 'T1'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T2'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T3'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T4'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T5'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T6'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T7'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T8'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T9'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T10'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T11'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T12'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T13'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T14'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T15'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T16'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T17'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T18'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T19'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T20'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T21'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T22'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T23'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T24'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T25'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T26'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T27'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T28'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T29'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T30'
            Footers = <>
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 369
        Width = 680
        Height = 46
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object BitBtn1: TBitBtn
          Left = 24
          Top = 13
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
        object BitBtn4: TBitBtn
          Left = 96
          Top = 13
          Width = 73
          Height = 25
          Caption = 'Exit'
          TabOrder = 1
          Kind = bkClose
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Present TMU Ratio'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 680
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 44
          Height = 13
          Caption = 'Customer'
        end
        object Label2: TLabel
          Left = 152
          Top = 16
          Width = 64
          Height = 13
          Caption = 'Product Type'
        end
        object Label3: TLabel
          Left = 312
          Top = 16
          Width = 23
          Height = 13
          Caption = 'Style'
        end
        object SpeedButton1: TSpeedButton
          Left = 448
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
        object Label7: TLabel
          Left = 16
          Top = 48
          Width = 102
          Height = 13
          Caption = 'Basic Size for Costing'
        end
        object Label8: TLabel
          Left = 256
          Top = 48
          Width = 118
          Height = 13
          Caption = 'Basic Size for Production'
        end
        object Edit1: TEdit
          Left = 344
          Top = 16
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object ComboBox1: TComboBox
          Left = 64
          Top = 16
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
        end
        object ComboBox2: TComboBox
          Left = 224
          Top = 16
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 120
          Top = 48
          Width = 49
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object Edit3: TEdit
          Left = 376
          Top = 48
          Width = 49
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 369
        Width = 680
        Height = 46
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn2: TBitBtn
          Left = 24
          Top = 13
          Width = 73
          Height = 25
          Caption = 'Save'
          TabOrder = 0
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
        object BitBtn3: TBitBtn
          Left = 96
          Top = 13
          Width = 73
          Height = 25
          Caption = 'Exit'
          TabOrder = 1
          Kind = bkClose
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 73
        Width = 680
        Height = 296
        Align = alClient
        DataSource = DataSource1
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            Color = 11267047
            EditButtons = <>
            FieldName = 'CUST'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Customer'
          end
          item
            Color = 11267047
            EditButtons = <>
            FieldName = 'PTYP'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Product Type'
          end
          item
            Color = 11267047
            EditButtons = <>
            FieldName = 'ARTNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Style'
          end
          item
            Color = 11267047
            EditButtons = <>
            FieldName = 'SEQ'
            Footers = <>
            ReadOnly = True
            Visible = False
          end
          item
            Color = 11267047
            EditButtons = <>
            FieldName = 'CUP'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Cup'
          end
          item
            EditButtons = <>
            FieldName = 'T1'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T2'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T3'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T4'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T5'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T6'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T7'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T8'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T9'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T10'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T11'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T12'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T13'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T14'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T15'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T16'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T17'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T18'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T19'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T20'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T21'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T22'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T23'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T24'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T25'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T26'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T27'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T28'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T29'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'T30'
            Footers = <>
          end>
      end
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_cactmuf'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 240
    Top = 344
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 272
    Top = 344
  end
  object Query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_cactmu2'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query3AfterOpen
    AfterPost = Query3AfterPost
    Left = 304
    Top = 344
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 336
    Top = 344
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 368
    Top = 344
  end
  object DataSource2: TDataSource
    DataSet = Query3
    Left = 400
    Top = 344
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 432
    Top = 344
  end
  object Query6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 464
    Top = 344
  end
  object Query7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 496
    Top = 344
  end
end
