object frmlhjl: Tfrmlhjl
  Left = 4
  Top = 69
  Width = 785
  Height = 497
  Caption = #33853#36008#35352#37636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 42
      Height = 13
      Caption = #24037#31243#34399
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 296
      Top = 20
      Width = 42
      Height = 13
      Caption = #21046#21934#34399
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 480
      Top = 20
      Width = 28
      Height = 13
      Caption = #33394#34399
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 608
      Top = 16
      Width = 57
      Height = 22
      Caption = #30906#23450
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
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
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 280
      Top = 52
      Width = 58
      Height = 13
      Caption = #26085#26399'    '#24478
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 464
      Top = 52
      Width = 14
      Height = 13
      Caption = #21040
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 496
      Top = 48
      Width = 3
      Height = 13
      Visible = False
    end
    object Label7: TLabel
      Left = 8
      Top = 52
      Width = 56
      Height = 13
      Caption = #24037#31243#32232#34399
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 70
      Top = 16
      Width = 139
      Height = 21
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnChange = ComboBox1Change
      OnEnter = ComboBox1Enter
    end
    object Edit1: TEdit
      Left = 344
      Top = 16
      Width = 105
      Height = 21
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyDown = Edit1KeyDown
    end
    object Edit2: TEdit
      Left = 512
      Top = 16
      Width = 57
      Height = 21
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DateEdit1: TDateEdit
      Left = 344
      Top = 48
      Width = 105
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnChange = DateEdit1Change
    end
    object DateEdit2: TDateEdit
      Left = 488
      Top = 48
      Width = 105
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
    object ComboBox2: TComboBox
      Left = 70
      Top = 48
      Width = 139
      Height = 21
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 5
      OnChange = ComboBox2Change
      OnEnter = ComboBox2Enter
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 417
    Width = 777
    Height = 46
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Top = 11
      Width = 73
      Height = 27
      Caption = #25171#21360
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 320
      Top = 11
      Width = 73
      Height = 27
      Caption = #36864#20986
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
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
    end
    object BitBtn3: TBitBtn
      Left = 112
      Top = 11
      Width = 73
      Height = 27
      Caption = #20445#23384
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        5E060000424D5E06000000000000360400002800000018000000170000000100
        0800000000002802000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0C8
        A400000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
        0707070707070707070707070707070707070707070000000000000000000000
        0000000000000007070707070010101000000000000000000007070700101000
        0707070700101010000000000000000000070707001010000707070700101010
        0000000000000000000707070010100007070707001010100000000000000000
        0007070700101000070707070010101000000000000000000007070700101000
        0707070700101010000000000000000000000000001010000707070700101010
        0000000000000000000000000010100007070707001010101010101010101010
        1010101010101000070707070010101000000000000000000000000010101000
        0707070700101000070707070707070707070707001010000707070700101000
        0707070707070707070707070010100007070707001010000707070707070707
        0707070700101000070707070010100007070707070707070707070700101000
        0707070700101000070707070707070707070707001010000707070700101000
        0707070707070707070707070010100007070707001010000707070707070707
        0707070700101000070707070010100007070707070707070707070700000000
        070707070010100007070707070707070707070700FFFF000707070700101000
        07070707070707070707070700FFFF0007070707000000000000000000000000
        0000000000000000070707070707070707070707070707070707070707070707
        0707}
    end
    object BitBtn4: TBitBtn
      Left = 216
      Top = 11
      Width = 73
      Height = 27
      Caption = #26032#22686
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn4Click
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 777
    Height = 336
    Align = alClient
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 775
      Height = 334
      Align = alClient
      DataSource = DataSource1
      Flat = False
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = CHINESEBIG5_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = #26032#32048#26126#39636
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'Line1'
          Footers = <>
          Title.Caption = #25289#21517
          Width = 24
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'Rq'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #26085#26399
          Width = 31
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'Tm'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #26178#38291
          Width = 53
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'Gch'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #24037#31243#34399
          Width = 92
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'Zdh'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #21046#21934#34399
          Width = 48
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'Kh'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #27454#34399
          Width = 117
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'Sh'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #33394#34399
          Width = 35
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'Zds'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #21046#21934#25976
          Width = 39
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'Ycs'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Footers = <>
          Title.Caption = #38928#35009#25976
          Width = 38
        end
        item
          EditButtons = <>
          FieldName = 'Lhs'
          Footers = <>
          Title.Caption = #33853#36008#20214#25976
          Width = 36
        end
        item
          EditButtons = <>
          FieldName = 'Lhxs'
          Footers = <>
          Title.Caption = #33853#36008#31665#25976
          Width = 31
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'Qhs'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #27424#36008#25976
          Width = 36
        end
        item
          EditButtons = <>
          FieldName = 'Wcqk'
          Footers = <>
          Title.Caption = #23436#25104#24773#27841
          Width = 125
        end
        item
          EditButtons = <>
          FieldName = 'Ppcps'
          Footers = <>
          Title.Caption = 'PPC'#30906#35469
          Width = 105
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = query1
    Left = 364
    Top = 72
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DataSource1
    UserName = 'BDEPipeline1'
    Left = 216
    Top = 24
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextFileName = 'c:\my documents\products.123'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 248
    Top = 24
    Version = '7.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        SaveOrder = 0
        Save = True
        Caption = #33853'   '#36008'   '#35352'   '#37636
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6350
        mmLeft = 121709
        mmTop = 1588
        mmWidth = 37042
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        SaveOrder = 4
        Save = True
        Caption = #24037#31243#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 35983
        mmTop = 14288
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        SaveOrder = 5
        Save = True
        Caption = #21046#21934#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 63765
        mmTop = 14288
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        SaveOrder = 6
        Save = True
        Caption = #27454#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 82286
        mmTop = 14288
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        SaveOrder = 7
        Save = True
        Caption = #33394#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115094
        mmTop = 14288
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        SaveOrder = 8
        Save = True
        Caption = #21046#21934#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 125413
        mmTop = 14288
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        SaveOrder = 9
        Save = True
        Caption = #38928#35009#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 139436
        mmTop = 14288
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        SaveOrder = 10
        Save = True
        Caption = #33853#36008#20214#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 152929
        mmTop = 14288
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        SaveOrder = 1
        Save = True
        Caption = #33853#36008#31665#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 167746
        mmTop = 14288
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        SaveOrder = 2
        Save = True
        Caption = #27424#36008#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 184150
        mmTop = 14288
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        SaveOrder = 3
        Save = True
        Caption = #23436#25104#24773#27841
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 197380
        mmTop = 14288
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        SaveOrder = 11
        Save = True
        Caption = #26085#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 17463
        mmTop = 14288
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        SaveOrder = 13
        Save = True
        Caption = #29983#29986#25289
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 14288
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        SaveOrder = 14
        Save = True
        Caption = 'PPC'#30906#35469
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 255853
        mmTop = 14288
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        SaveOrder = 15
        Save = True
        Caption = #26085#26399'   '#24478
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 8202
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        SaveOrder = 16
        Save = True
        Caption = #21040
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 47361
        mmTop = 8202
        mmWidth = 3175
        BandType = 0
      end
      object from1: TppLabel
        UserName = 'from1'
        SaveOrder = 12
        Save = True
        Caption = 'from1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 14817
        mmTop = 8202
        mmWidth = 8202
        BandType = 0
      end
      object to1: TppLabel
        UserName = 'to1'
        SaveOrder = 17
        Save = True
        Caption = 'to1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 52123
        mmTop = 8202
        mmWidth = 4498
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        SaveOrder = 3
        Save = True
        AutoSize = True
        DataField = 'Gch'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 34396
        mmTop = 1058
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        SaveOrder = 4
        Save = True
        AutoSize = True
        DataField = 'Zdh'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 1058
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        SaveOrder = 5
        Save = True
        AutoSize = True
        DataField = 'Kh'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 79904
        mmTop = 1058
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        SaveOrder = 6
        Save = True
        AutoSize = True
        DataField = 'Sh'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 114565
        mmTop = 1058
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        SaveOrder = 7
        Save = True
        AutoSize = True
        DataField = 'Zds'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 129117
        mmTop = 1058
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        SaveOrder = 8
        Save = True
        AutoSize = True
        DataField = 'Ycs'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 143140
        mmTop = 1058
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        SaveOrder = 9
        Save = True
        AutoSize = True
        DataField = 'Lhs'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 160602
        mmTop = 1058
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        SaveOrder = 10
        Save = True
        AutoSize = True
        DataField = 'Lhxs'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 173832
        mmTop = 1058
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        SaveOrder = 0
        Save = True
        AutoSize = True
        DataField = 'Qhs'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 187855
        mmTop = 1058
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        SaveOrder = 1
        Save = True
        AutoSize = True
        DataField = 'Wcqk'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 197380
        mmTop = 1058
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        SaveOrder = 2
        Save = True
        AutoSize = True
        DataField = 'Rq'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 15346
        mmTop = 1058
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        SaveOrder = 11
        Save = True
        AutoSize = True
        DataField = 'Line1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        SaveOrder = 12
        Save = True
        AutoSize = True
        DataField = 'Ppcps'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 255853
        mmTop = 1058
        mmWidth = 8996
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'Lhs'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 151077
        mmTop = 794
        mmWidth = 14817
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'Lhxs'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 164307
        mmTop = 794
        mmWidth = 16404
        BandType = 7
      end
    end
  end
  object query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cut_lhjl'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = query1AfterPost
    AfterDelete = query1AfterPost
    Left = 336
    Top = 72
    object query1Prjno: TStringField
      FieldName = 'Prjno'
      FixedChar = True
    end
    object query1Gch: TStringField
      FieldName = 'Gch'
      FixedChar = True
      Size = 40
    end
    object query1Zdh: TStringField
      FieldName = 'Zdh'
      FixedChar = True
      Size = 30
    end
    object query1Rq: TDateTimeField
      FieldName = 'Rq'
    end
    object query1Tm: TDateTimeField
      FieldName = 'Tm'
    end
    object query1Kh: TStringField
      FieldName = 'Kh'
      FixedChar = True
    end
    object query1Sh: TStringField
      FieldName = 'Sh'
      FixedChar = True
      Size = 10
    end
    object query1Zds: TIntegerField
      FieldName = 'Zds'
    end
    object query1Ycs: TIntegerField
      FieldName = 'Ycs'
    end
    object query1Lhs: TIntegerField
      FieldName = 'Lhs'
    end
    object query1Lhxs: TIntegerField
      FieldName = 'Lhxs'
    end
    object query1Qhs: TIntegerField
      FieldName = 'Qhs'
    end
    object query1Wcqk: TStringField
      FieldName = 'Wcqk'
      Size = 100
    end
    object query1Ppcps: TStringField
      FieldName = 'Ppcps'
      Size = 60
    end
    object query1Line1: TStringField
      FieldName = 'Line1'
      FixedChar = True
      Size = 10
    end
  end
  object query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 392
    Top = 72
  end
  object query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 420
    Top = 72
  end
  object query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 448
    Top = 72
  end
  object query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 476
    Top = 72
  end
  object query6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 504
    Top = 72
  end
  object query7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 536
    Top = 72
  end
end
