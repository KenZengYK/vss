object frmCarte_Requestaction: TfrmCarte_Requestaction
  Left = 0
  Top = 0
  Caption = 'CP - Action logs'
  ClientHeight = 407
  ClientWidth = 1078
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 209
    Width = 1078
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 137
    ExplicitWidth = 229
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1078
    Height = 209
    Align = alTop
    TabOrder = 0
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 27
      Width = 1076
      Height = 125
      Align = alClient
      DataSource = DataSource2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      UseMultiTitle = True
      OnCellClick = DBGridEh2CellClick
      OnExit = DBGridEh2Exit
      Columns = <
        item
          Color = 16776415
          EditButtons = <>
          FieldName = 'act_log'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Action Log#'
          Width = 82
        end
        item
          ButtonStyle = cbsEllipsis
          EditButtons = <>
          FieldName = 'act_item'
          Footers = <>
          Title.Caption = 'Reason Cde'
          OnEditButtonClick = DBGridEh2Columns0EditButtonClick
        end
        item
          EditButtons = <>
          FieldName = 'act_subject'
          Footers = <>
          Title.Caption = 'Action log Desc.'
          Width = 538
        end
        item
          EditButtons = <>
          FieldName = 'act_region'
          Footers = <>
          PickList.Strings = (
            'CN'
            'CL'
            'CN & CL')
          Title.Caption = 'Region'
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'act_external'
          Footers = <>
          Title.Caption = 'Urgent'
          Width = 39
        end
        item
          DisplayFormat = 'mm/dd'
          EditButtons = <>
          FieldName = 'act_start'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Start date'
          Width = 56
        end
        item
          DisplayFormat = 'mm/dd'
          EditButtons = <>
          FieldName = 'act_cmpdt'
          Footers = <>
          Title.Caption = 'Target cmpl date'
          Width = 56
        end
        item
          EditButtons = <>
          FieldName = 'act_cmp'
          Footers = <>
          Title.Caption = 'Item completed'
          Width = 56
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 152
      Width = 1076
      Height = 56
      Align = alBottom
      TabOrder = 1
      object RzBackground3: TRzBackground
        Left = 1
        Top = 1
        Width = 1074
        Height = 54
        Active = True
        Align = alClient
        GradientColorStart = 14216405
        GradientColorStop = 16776176
        GradientDirection = gdVerticalEnd
        ImageStyle = isCenter
        ShowGradient = True
        ShowImage = False
        ShowTexture = False
        ExplicitLeft = 40
        ExplicitTop = 8
        ExplicitWidth = 200
        ExplicitHeight = 100
      end
      object Label2: TLabel
        Left = 24
        Top = 35
        Width = 123
        Height = 13
        Caption = 'Part II - Action follow up  '
      end
      object BitBtn4: TBitBtn
        Left = 24
        Top = 4
        Width = 81
        Height = 25
        Caption = 'Add'
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          0400000000007000000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3300333333333333330033333333333333003333300033333300333330F03333
          3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
          3300333330F033333300333330F0333333003333300033333300333333333333
          33003333333333333300}
        TabOrder = 0
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 104
        Top = 4
        Width = 81
        Height = 25
        Caption = 'Delete'
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          0400000000007000000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3300333333333333330033333333333333003333333333333300333333333333
          330033333333333333003300000000003300330FFFFFFFF03300330000000000
          3300333333333333330033333333333333003333333333333300333333333333
          33003333333333333300}
        TabOrder = 1
        OnClick = BitBtn5Click
      end
      object BitBtn7: TBitBtn
        Left = 184
        Top = 4
        Width = 81
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
        TabOrder = 2
        OnClick = BitBtn7Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1076
      Height = 26
      Align = alTop
      TabOrder = 2
      object RzBackground1: TRzBackground
        Left = 1
        Top = 1
        Width = 1074
        Height = 24
        Active = True
        Align = alClient
        GradientColorStart = 14216405
        GradientColorStop = 16776176
        GradientDirection = gdVerticalEnd
        ImageStyle = isCenter
        ShowGradient = True
        ShowImage = False
        ShowTexture = False
        ExplicitLeft = 40
        ExplicitTop = 8
        ExplicitWidth = 200
        ExplicitHeight = 100
      end
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 100
        Height = 13
        Caption = 'Part I - Action taken '
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 212
    Width = 1078
    Height = 154
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        DisplayFormat = 'mm/dd hh:nn'
        EditButtons = <>
        FieldName = 'act_date'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Start/Follow-up date/time'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'act_cnt'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Seq.'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'act_issue'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sender'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'act_pra'
        Footers = <>
        Title.Caption = #20844#38283#24615#35342#35542' (Y/N)'
        Width = 37
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'act_marks'
        Footers = <>
        ShowImageAndText = True
        Title.Caption = 'Follow-up content'
        Width = 731
        WordWrap = True
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 366
    Width = 1078
    Height = 41
    Align = alBottom
    TabOrder = 2
    object RzBackground2: TRzBackground
      Left = 1
      Top = 1
      Width = 1076
      Height = 39
      Active = True
      Align = alClient
      GradientColorStart = 14216405
      GradientColorStop = 16776176
      GradientDirection = gdVerticalEnd
      ImageStyle = isCenter
      ShowGradient = True
      ShowImage = False
      ShowTexture = False
      ExplicitLeft = 24
      ExplicitTop = 8
      ExplicitWidth = 200
      ExplicitHeight = 100
    end
    object Label9: TLabel
      Left = 568
      Top = 8
      Width = 14
      Height = 13
      Caption = 'CN'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Add'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Delete'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 184
      Top = 8
      Width = 81
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
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn6: TBitBtn
      Left = 344
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 3
    end
    object BitBtn8: TBitBtn
      Left = 264
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Send Mail'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
        FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
        9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 4
      OnClick = BitBtn8Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 212
    Width = 1078
    Height = 154
    Align = alClient
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1act_date: TcxGridDBColumn
        Caption = 'Date & time'
        DataBinding.FieldName = 'act_date'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 84
      end
      object cxGrid1DBTableView1act_cnt: TcxGridDBColumn
        Caption = 'Seq.'
        DataBinding.FieldName = 'act_cnt'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 52
      end
      object cxGrid1DBTableView1act_issue: TcxGridDBColumn
        Caption = 'Sender'
        DataBinding.FieldName = 'act_issue'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 64
      end
      object cxGrid1DBTableView1act_marks: TcxGridDBColumn
        Caption = 'Follow up content (in seq.)'
        DataBinding.FieldName = 'act_marks'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Width = 600
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ADODataSet1: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    AfterOpen = ADODataSet1AfterOpen
    OnNewRecord = ADODataSet1NewRecord
    CommandText = 'select * from phdb..tbl_cp_mailcont'
    CommandTimeout = 300
    IndexFieldNames = 'act_date'
    Parameters = <>
    Left = 232
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 296
    Top = 168
  end
  object ADOQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 360
    Top = 216
  end
  object ADODataSet2: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    BeforePost = ADODataSet2BeforePost
    AfterPost = ADODataSet2AfterPost
    AfterScroll = ADODataSet2AfterScroll
    OnNewRecord = ADODataSet2NewRecord
    CommandText = 'select * from phdb..tbl_cp_mailhead'
    CommandTimeout = 300
    IndexFieldNames = 'seq'
    Parameters = <>
    Left = 232
    Top = 216
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    OnDataChange = DataSource2DataChange
    Left = 296
    Top = 216
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 464
    Top = 216
  end
  object qry1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 120
    Top = 64
  end
  object qry2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 168
    Top = 64
  end
end
