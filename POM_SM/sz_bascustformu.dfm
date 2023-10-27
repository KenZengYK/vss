object frmsz_bascust: Tfrmsz_bascust
  Left = 291
  Top = 225
  Caption = 'POM - '#37327#24230#20301#32622'('#33521#25991') - '#23458#20506#38752
  ClientHeight = 440
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 57
    Width = 872
    Height = 332
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxcust: TcxGridDBColumn
        Caption = #23458#25142#34399
        DataBinding.FieldName = 'cust'
        HeaderAlignmentHorz = taCenter
        Width = 79
      end
      object cxemeas: TcxGridDBColumn
        Caption = #37327#24230#20301#32622'('#33521#25991')'
        DataBinding.FieldName = 'emeas'
        HeaderAlignmentHorz = taCenter
        Width = 444
      end
      object cxuom: TcxGridDBColumn
        Caption = #37327#24230#21934#20301
        DataBinding.FieldName = 'uom'
        HeaderAlignmentHorz = taCenter
        Width = 55
      end
      object cxtolerence: TcxGridDBColumn
        Caption = #23610#23544#23481#24046
        DataBinding.FieldName = 'tolerence'
        HeaderAlignmentHorz = taCenter
        Width = 85
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 389
    Width = 872
    Height = 51
    Align = alBottom
    TabOrder = 1
    object SpeedButton3: TSpeedButton
      Left = 202
      Top = 11
      Width = 30
      Height = 30
      Hint = #26032#22686
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 233
      Top = 11
      Width = 30
      Height = 30
      Hint = #21034#38500
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton1: TSpeedButton
      Left = 264
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
      OnClick = SpeedButton1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 21
      Top = 11
      Width = 180
      Height = 30
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 34
      Height = 13
      Caption = #38918#24207'# '
    end
    object DBText1: TDBText
      Left = 43
      Top = 8
      Width = 46
      Height = 17
      DataField = 'seq'
      DataSource = frmlibrary.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 128
      Top = 8
      Width = 27
      Height = 13
      Caption = #20195#30908' '
    end
    object DBText2: TDBText
      Left = 156
      Top = 8
      Width = 61
      Height = 17
      DataField = 'mcd'
      DataSource = frmlibrary.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 57
      Height = 13
      Caption = #25551#36848'('#20013#25991') '
    end
    object DBText3: TDBText
      Left = 64
      Top = 32
      Width = 369
      Height = 17
      DataField = 'Cmeas'
      DataSource = frmlibrary.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 448
      Top = 32
      Width = 57
      Height = 13
      Caption = #25551#36848'('#33521#25991') '
    end
    object DBText4: TDBText
      Left = 512
      Top = 32
      Width = 361
      Height = 17
      DataField = 'Emeas'
      DataSource = frmlibrary.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 588
    Top = 8
  end
  object Table1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_bastbl_cust'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'id1'
        DataType = ftInteger
      end
      item
        Name = 'cust'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'pom_cd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'emeas'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'uom'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'tolerence'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Table1AfterPost
    BeforeDelete = Table1BeforeDelete
    OnNewRecord = Table1NewRecord
    Left = 623
    Top = 8
    object Table1id: TIntegerField
      FieldName = 'id'
    end
    object Table1id1: TIntegerField
      FieldName = 'id1'
    end
    object Table1cust: TStringField
      FieldName = 'cust'
    end
    object Table1pom_cd: TStringField
      FieldName = 'pom_cd'
    end
    object Table1emeas: TStringField
      FieldName = 'emeas'
      Size = 100
    end
    object Table1uom: TStringField
      FieldName = 'uom'
      Size = 6
    end
    object Table1tolerence: TStringField
      FieldName = 'tolerence'
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 652
    Top = 8
  end
end
