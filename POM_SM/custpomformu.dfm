object frmcustpom: Tfrmcustpom
  Left = 277
  Top = 191
  Caption = 'Customer'#39's POM'
  ClientHeight = 497
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 826
    object Label11: TLabel
      Left = 24
      Top = 19
      Width = 42
      Height = 13
      Caption = #23458#25142#34399' '
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 256
      Top = 19
      Width = 59
      Height = 13
      Caption = 'POM'#20195#30908'  '
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 56
      Height = 13
      Caption = 'POM'#25551#36848' '
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object DBEdit9: TDBEdit
      Left = 80
      Top = 16
      Width = 65
      Height = 21
      DataField = 'cust'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 320
      Top = 16
      Width = 73
      Height = 21
      DataField = 'pod_cd'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 40
      Width = 497
      Height = 21
      DataField = 'emeas'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 73
    Width = 818
    Height = 371
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 826
    ExplicitHeight = 375
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxcust
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cxcust: TcxGridDBColumn
        Caption = #23458#25142#34399
        DataBinding.FieldName = 'cust'
        HeaderAlignmentHorz = taCenter
      end
      object cxpod_cd: TcxGridDBColumn
        Caption = 'POM'#20195#30908
        DataBinding.FieldName = 'pod_cd'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxemeas: TcxGridDBColumn
        Caption = 'POM'#25551#36848
        DataBinding.FieldName = 'emeas'
        HeaderAlignmentHorz = taCenter
        Width = 607
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 444
    Width = 818
    Height = 53
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 448
    ExplicitWidth = 826
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
      Left = 294
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
    object SpeedButton5: TSpeedButton
      Left = 263
      Top = 11
      Width = 30
      Height = 30
      Hint = #23566#20986'Excel'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
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
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 524
  end
  object Table1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_cust_bastbl'
    FieldDefs = <
      item
        Name = 'c_id'
        DataType = ftInteger
      end
      item
        Name = 'cust'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'pod_cd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'emeas'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'cde'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'cmeas'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'uom'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'tolerence'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'newdt'
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Name = 'Table1Index1'
        Fields = 'cust;pod_cd'
      end>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Table1AfterPost
    BeforeDelete = Table1BeforeDelete
    OnNewRecord = Table1NewRecord
    Left = 559
    object Table1c_id: TIntegerField
      FieldName = 'c_id'
    end
    object Table1cust: TStringField
      FieldName = 'cust'
      Size = 10
    end
    object Table1pod_cd: TStringField
      FieldName = 'pod_cd'
    end
    object Table1emeas: TStringField
      FieldName = 'emeas'
      Size = 100
    end
    object Table1cde: TStringField
      FieldName = 'cde'
      Size = 10
    end
    object Table1cmeas: TStringField
      FieldName = 'cmeas'
      Size = 50
    end
    object Table1uom: TStringField
      FieldName = 'uom'
      Size = 4
    end
    object Table1tolerence: TStringField
      FieldName = 'tolerence'
      Size = 15
    end
    object Table1newdt: TDateTimeField
      FieldName = 'newdt'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 588
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel file (*.xls)|*.xls|Any file (*.*)|*.*'
    Left = 620
  end
end
