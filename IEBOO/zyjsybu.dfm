object frmcfzyjsb: Tfrmcfzyjsb
  Left = -8
  Top = -6
  Width = 808
  Height = 608
  BorderIcons = [biSystemMenu]
  Caption = '車縫作業計算用表'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 424
    Top = 544
    Width = 32
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object Label2: TLabel
    Left = 7
    Top = 8
    Width = 26
    Height = 13
    Caption = '定位'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 785
    Height = 497
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '新細明體'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = '新細明體'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'Xh'
        Title.Caption = '序號'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dzxxfx'
        Title.Caption = '動作詳細分析'
        Width = 425
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tj1'
        Title.Caption = '條件1'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tmu1'
        Title.Caption = '時間1'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tj2'
        Title.Caption = '條件2'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tmu2'
        Title.Caption = '時間2'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tj3'
        Title.Caption = '條件3'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tmu3'
        Title.Caption = '時間3'
        Width = 53
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 541
    Width = 210
    Height = 30
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost]
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 218
    Top = 541
    Width = 30
    Height = 30
    Hint = '打印'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitBtn2Click
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
  object Edit1: TEdit
    Left = 36
    Top = 6
    Width = 81
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 116
    Top = 6
    Width = 105
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnChange = Edit2Change
  end
  object BitBtn1: TBitBtn
    Left = 248
    Top = 541
    Width = 30
    Height = 30
    Hint = '確定'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = DBGrid1DblClick
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
  end
  object BitBtn3: TBitBtn
    Left = 278
    Top = 541
    Width = 30
    Height = 30
    Hint = '退出'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BitBtn3Click
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
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 508
    Top = 544
  end
  object Table1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_cfzyjsyb'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    AfterPost = Table1AfterPost
    OnNewRecord = Table1NewRecord
    Left = 480
    Top = 544
  end
end
