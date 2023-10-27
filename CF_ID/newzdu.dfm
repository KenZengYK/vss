object frmnewzd: Tfrmnewzd
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = #26032#22686#35069#21934#36039#26009
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 536
    Height = 348
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet2: TTabSheet
      Caption = #21046#21934#37636#20837
      ImageIndex = 1
      object lblcpy: TLabel
        Left = 352
        Top = 408
        Width = 3
        Height = 13
        Visible = False
      end
      object Label7: TLabel
        Left = 352
        Top = 440
        Width = 3
        Height = 13
        Visible = False
      end
      object Label8: TLabel
        Left = 424
        Top = 440
        Width = 3
        Height = 13
        Visible = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 269
        Width = 528
        Height = 51
        Align = alBottom
        TabOrder = 2
        object SpeedButton9: TSpeedButton
          Left = 144
          Top = 11
          Width = 30
          Height = 30
          Hint = #26032#22686
          Glyph.Data = {
            DE000000424DDE0000000000000076000000280000000D0000000D0000000100
            0400000000006800000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            F000FFFFFFFFFFFFF000FFFFF000FFFFF000FFFFF0F0FFFFF000FFFFF0F0FFFF
            F000FF0000F0000FF000FF0FFFFFFF0FF000FF0000F0000FF000FFFFF0F0FFFF
            F000FFFFF0F0FFFFF000FFFFF000FFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
            F000}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton9Click
        end
        object SpeedButton3: TSpeedButton
          Left = 174
          Top = 11
          Width = 30
          Height = 30
          Hint = #30906#23450
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
        object SpeedButton6: TSpeedButton
          Left = 204
          Top = 11
          Width = 30
          Height = 30
          Hint = #26597#35426
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton6Click
        end
        object SpeedButton2: TSpeedButton
          Left = 234
          Top = 11
          Width = 30
          Height = 30
          Hint = #36864#20986
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
            03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
            0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
            0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
            0333337F777FFFFF7F3333000000000003333377777777777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object DBNavigator2: TDBNavigator
          Left = 24
          Top = 11
          Width = 120
          Height = 30
          DataSource = dsfczd1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 153
        Width = 528
        Height = 116
        Align = alClient
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 526
          Height = 114
          Align = alClient
          AllowedOperations = [alopInsertEh, alopUpdateEh]
          Color = clWhite
          DataSource = dsfczd2
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = CHINESEBIG5_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = #26032#32048#26126#39636
          TitleFont.Style = []
          UseMultiTitle = True
          OnEnter = DBGridEh2Enter
          OnKeyPress = DBGridEh2KeyPress
          Columns = <
            item
              Color = 11795962
              EditButtons = <>
              FieldName = 'cm'
              Footers = <>
              ReadOnly = True
              Title.Caption = #23610#30908
              Width = 110
            end
            item
              EditButtons = <>
              FieldName = 'yzds'
              Footers = <>
              Title.Caption = #21407#21046#21934#25976
              Width = 131
            end
            item
              EditButtons = <>
              FieldName = 'tzs'
              Footers = <>
              Title.Caption = #35519#25972#25976
              Width = 130
            end
            item
              Color = 11795962
              EditButtons = <>
              FieldName = 'zds'
              Footers = <>
              ReadOnly = True
              Title.Caption = #29983#29986#21046#21934#25976
              Width = 133
            end>
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 528
        Height = 153
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 28
          Top = 88
          Width = 42
          Height = 13
          Caption = ' '#21046#21934#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 292
          Top = 88
          Width = 26
          Height = 13
          Caption = #27454#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 28
          Top = 122
          Width = 61
          Height = 13
          Caption = #23610#30908'   '#26368#23567
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 499
          Top = 88
          Width = 26
          Height = 13
          Caption = #33394#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 204
          Top = 122
          Width = 26
          Height = 13
          Caption = #26368#22823
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 31
          Top = 54
          Width = 39
          Height = 13
          Caption = #24037#31243#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 268
          Top = 54
          Width = 52
          Height = 13
          Caption = #20986#24288#26085#26399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 473
          Top = 122
          Width = 52
          Height = 13
          Caption = #32317#21046#21934#25976
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 356
          Top = 122
          Width = 26
          Height = 13
          Caption = #30456#36317
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 31
          Top = 22
          Width = 39
          Height = 13
          Caption = #24037#31243#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 76
          Top = 19
          Width = 117
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyPress = Edit1KeyPress
        end
        object DBComboBox1: TDBComboBox
          Left = 384
          Top = 120
          Width = 65
          Height = 21
          Color = clWhite
          DataField = 'Xj'
          DataSource = dsfczd1
          ItemHeight = 13
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '2/2'
            '4/4'
            '6/6'
            '8/8')
          TabOrder = 7
        end
        object DBEdit5: TDBEdit
          Left = 92
          Top = 120
          Width = 53
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'cm1'
          DataSource = dsfczd1
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 236
          Top = 120
          Width = 53
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'cm2'
          DataSource = dsfczd1
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 531
          Top = 120
          Width = 102
          Height = 21
          Color = 11795962
          DataField = 'Zds'
          DataSource = dsfczd1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit4: TDBEdit
          Left = 531
          Top = 85
          Width = 102
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'Sh'
          DataSource = dsfczd1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit3: TDBEdit
          Left = 324
          Top = 85
          Width = 125
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'Kh'
          DataSource = dsfczd1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 76
          Top = 85
          Width = 117
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'Zdh'
          DataSource = dsfczd1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 76
          Top = 51
          Width = 117
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'Gch'
          DataSource = dsfczd1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBDATETIMEPICKER1: TdxDBDateEdit
          Left = 324
          Top = 53
          Width = 125
          TabOrder = 9
          DataField = 'ccrq'
          DataSource = dsfczd1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #29289#26009#37636#20837
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 269
        Width = 528
        Height = 51
        Align = alBottom
        TabOrder = 2
        object SpeedButton12: TSpeedButton
          Left = 144
          Top = 11
          Width = 30
          Height = 30
          Hint = #36864#20986
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
            03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
            0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
            0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
            0333337F777FFFFF7F3333000000000003333377777777777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton12Click
        end
        object DBNavigator5: TDBNavigator
          Left = 24
          Top = 11
          Width = 120
          Height = 30
          DataSource = dsfcwl
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 528
        Height = 25
        Align = alTop
        TabOrder = 0
      end
      object Panel6: TPanel
        Left = 0
        Top = 25
        Width = 528
        Height = 244
        Align = alClient
        TabOrder = 1
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 526
          Height = 242
          Align = alClient
          DataSource = dsfcwl
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = CHINESEBIG5_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = #26032#32048#26126#39636
          TitleFont.Style = []
          UseMultiTitle = True
          OnKeyPress = DBGridEh1KeyPress
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cut'
              Footers = <>
              Title.Caption = #35009#24202
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'dxm'
              Footers = <>
              Title.Caption = #22823#23567#30908
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'fl'
              Footers = <>
              Title.Caption = #21103#26009
            end
            item
              Color = clWhite
              EditButtons = <>
              FieldName = 'wl'
              Footers = <>
              Title.Caption = #29289#26009
              Width = 149
            end
            item
              EditButtons = <>
              FieldName = 'jyl'
              Footers = <>
              Title.Caption = #27599#20214#29992#37327
              Width = 87
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'shl'
              Footers = <>
              ReadOnly = True
              Title.Caption = #25613#32791#29575
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'zds'
              Footers = <>
              ReadOnly = True
              Title.Caption = #21046#21934#25976
              Width = 66
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'cacyl'
              Footers = <>
              ReadOnly = True
              Title.Caption = #32317#29992#37327
              Width = 96
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'kh'
              Footers = <>
              ReadOnly = True
              Title.Caption = #27454#34399
              Width = 134
            end>
        end
      end
    end
  end
  object dsfczd1: TDataSource
    DataSet = fczd1
    OnDataChange = dsfczd1DataChange
    Left = 356
    Top = 88
  end
  object dsfczd2: TDataSource
    DataSet = fczd2
    Left = 412
    Top = 88
  end
  object dsfcwl: TDataSource
    DataSet = fcwl
    Left = 468
    Top = 88
  end
  object fcwl: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cut_fcwl01'
    FieldDefs = <
      item
        Name = 'gch'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'zdh'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'kh'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sh'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'wtype'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'wl'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'jyl'
        DataType = ftFloat
      end
      item
        Name = 'zds'
        DataType = ftInteger
      end
      item
        Name = 'cacyl'
        DataType = ftFloat
      end
      item
        Name = 'cut'
        DataType = ftBoolean
      end
      item
        Name = 'dxm'
        DataType = ftBoolean
      end
      item
        Name = 'fl'
        DataType = ftBoolean
      end
      item
        Name = 'shl'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'gch;zdh;kh;sh;wl'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = fcwlAfterPost
    OnNewRecord = fcwlNewRecord
    Left = 440
    Top = 88
    object fcwlgch: TStringField
      FieldName = 'gch'
      FixedChar = True
    end
    object fcwlzdh: TStringField
      FieldName = 'zdh'
      FixedChar = True
      Size = 10
    end
    object fcwlkh: TStringField
      FieldName = 'kh'
      FixedChar = True
    end
    object fcwlsh: TStringField
      FieldName = 'sh'
      FixedChar = True
      Size = 3
    end
    object fcwlwl: TStringField
      FieldName = 'wl'
      FixedChar = True
    end
    object fcwljyl: TFloatField
      FieldName = 'jyl'
      OnChange = fcwljylChange
    end
    object fcwlzds: TIntegerField
      FieldName = 'zds'
    end
    object fcwlcacyl: TFloatField
      FieldName = 'cacyl'
    end
    object fcwlcut: TBooleanField
      FieldName = 'cut'
    end
    object fcwldxm: TBooleanField
      FieldName = 'dxm'
    end
    object fcwlwtype: TStringField
      FieldName = 'wtype'
      FixedChar = True
      Size = 1
    end
    object fcwlfl: TBooleanField
      FieldName = 'fl'
    end
    object fcwlshl: TFloatField
      FieldName = 'shl'
    end
  end
  object fczd1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cut_fczd01'
    FieldDefs = <
      item
        Name = 'gch'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'zdh'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'kh'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sh'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ccrq'
        DataType = ftDateTime
      end
      item
        Name = 'zds'
        DataType = ftInteger
      end
      item
        Name = 'cm1'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'cm2'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'xj'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'accdt'
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'gch;zdh;kh;sh'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = fczd1AfterPost
    OnNewRecord = fczd1NewRecord
    Left = 328
    Top = 88
  end
  object fczd2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cut_fczd02'
    FieldDefs = <
      item
        Name = 'gch'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'zdh'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'kh'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sh'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'cup'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'siz1'
        DataType = ftInteger
      end
      item
        Name = 'cm'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'yzds'
        DataType = ftInteger
      end
      item
        Name = 'tzs'
        DataType = ftInteger
      end
      item
        Name = 'zds'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'gch;zdh;kh;sh;id;cup;siz1;cm'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = fczd2AfterPost
    Left = 384
    Top = 88
    object fczd2gch: TStringField
      FieldName = 'gch'
      FixedChar = True
    end
    object fczd2zdh: TStringField
      FieldName = 'zdh'
      FixedChar = True
      Size = 10
    end
    object fczd2kh: TStringField
      FieldName = 'kh'
      FixedChar = True
    end
    object fczd2sh: TStringField
      FieldName = 'sh'
      FixedChar = True
      Size = 3
    end
    object fczd2id: TIntegerField
      FieldName = 'id'
    end
    object fczd2cup: TStringField
      FieldName = 'cup'
      FixedChar = True
      Size = 3
    end
    object fczd2siz1: TIntegerField
      FieldName = 'siz1'
    end
    object fczd2cm: TStringField
      FieldName = 'cm'
      FixedChar = True
      Size = 5
    end
    object fczd2yzds: TIntegerField
      FieldName = 'yzds'
      OnChange = fczd2yzdsChange
    end
    object fczd2tzs: TIntegerField
      FieldName = 'tzs'
      OnChange = fczd2yzdsChange
    end
    object fczd2zds: TIntegerField
      FieldName = 'zds'
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 520
    Top = 24
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 424
    Top = 24
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 456
    Top = 24
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 488
    Top = 24
  end
  object PopupMenu1: TPopupMenu
    Left = 500
    Top = 88
    object DeleteOriginalData1: TMenuItem
      Caption = 'Delete Original Data'
      ShortCut = 117
      Visible = False
    end
  end
end
