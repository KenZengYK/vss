object frmzds: Tfrmzds
  Left = 918
  Top = 156
  Caption = #20998#24202#24314#35696'----'#24037#31243#32232#34399#26597#35426
  ClientHeight = 439
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tc: TSpeedButton
    Left = 49
    Top = 392
    Width = 25
    Height = 25
    Hint = 'Exit'
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
    OnClick = tcClick
  end
  object Label1: TLabel
    Left = 74
    Top = 72
    Width = 97
    Height = 26
    AutoSize = False
    Caption = 'CF_ID#'#13#10#35009#31243#35672#21029#30908':'
  end
  object SpeedButton1: TSpeedButton
    Left = 24
    Top = 392
    Width = 25
    Height = 25
    Hint = 'Cfmd Choose'
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
    OnClick = SpeedButton1Click
  end
  object Label2: TLabel
    Left = 198
    Top = 392
    Width = 3
    Height = 13
    Visible = False
  end
  object Label3: TLabel
    Left = 74
    Top = 16
    Width = 97
    Height = 13
    AutoSize = False
    Caption = 'Factory '#24288': '
  end
  object Label4: TLabel
    Left = 74
    Top = 40
    Width = 97
    Height = 33
    AutoSize = False
    Caption = 'Marking Stage'#13#10#25490#29256#38542#27573': '
    WordWrap = True
  end
  object Label5: TLabel
    Left = 316
    Top = 40
    Width = 96
    Height = 33
    AutoSize = False
    Caption = 'Marker Type Cde'#13#10#22044#26550#39006#21029': '
    WordWrap = True
  end
  object SpeedButton2: TSpeedButton
    Left = 101
    Top = 392
    Width = 25
    Height = 25
    Hint = 'Export'
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
    OnClick = SpeedButton2Click
  end
  object Label6: TLabel
    Left = 486
    Top = 8
    Width = 3
    Height = 13
    Visible = False
  end
  object Label7: TLabel
    Left = 24
    Top = 16
    Width = 48
    Height = 13
    AutoSize = False
    Caption = 'Step 1.0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 24
    Top = 40
    Width = 48
    Height = 13
    AutoSize = False
    Caption = 'Step 2.1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 264
    Top = 40
    Width = 48
    Height = 13
    AutoSize = False
    Caption = 'Step 2.2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 24
    Top = 72
    Width = 48
    Height = 13
    AutoSize = False
    Caption = 'Step 3.0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton
    Left = 552
    Top = 39
    Width = 25
    Height = 25
    Hint = 'Fix Marker Ttl'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = ComboBox1Change
  end
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 120
    Width = 257
    Height = 233
    Color = 11927551
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = SpeedButton1Click
    Columns = <
      item
        EditButtons = <>
        FieldName = 'prjno'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #35009#21106#27969#31243#35672#21029#30908' / Cutting Flow ID#'
        Width = 242
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Edit1: TEdit
    Left = 186
    Top = 71
    Width = 169
    Height = 21
    CharCase = ecUpperCase
    ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
    TabOrder = 2
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object ComboBox1: TComboBox
    Left = 186
    Top = 16
    Width = 57
    Height = 21
    ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
    ItemIndex = 0
    TabOrder = 0
    Text = 'ALL'
    Items.Strings = (
      'ALL'
      'SL'
      'RX'
      'CL')
  end
  object ComboBox2: TComboBox
    Left = 186
    Top = 40
    Width = 57
    Height = 21
    ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
    TabOrder = 1
    Text = 'ALL'
    Items.Strings = (
      'ALL'
      'PU'
      'PD')
  end
  object ComboBox3: TComboBox
    Left = 418
    Top = 40
    Width = 113
    Height = 21
    ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
    TabOrder = 4
    Text = 'ALL'
    OnEnter = ComboBox3Enter
    Items.Strings = (
      'ALL'
      '1 = CU or PU'
      '2 = CU + TP'
      '3 = CU + PP'
      '4 = CU + TP + PP')
  end
  object cxGrid1: TcxGrid
    Left = 24
    Top = 104
    Width = 561
    Height = 273
    TabOrder = 5
    object cxView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxView1prjno
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxView1prjno: TcxGridDBColumn
        Caption = 'CF_ID#'#13#10#35009#31243#35672#21029#30908
        DataBinding.FieldName = 'prjno'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle1
        Width = 148
      end
      object cxView1gch: TcxGridDBColumn
        Caption = 'Proj#'#13#10#24037#31243#34399
        DataBinding.FieldName = 'gch'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle1
        Width = 170
      end
      object cxView1fcrq: TcxGridDBColumn
        Caption = 'CF_ID'#13#10'Create dd'#13#10#21109#24314#26085#26399
        DataBinding.FieldName = 'fcrq'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle1
        Width = 76
      end
      object cxView1rq: TcxGridDBColumn
        Caption = 'Marker'#13#10'Create dd'#13#10#22044#26550#13#10#21109#24314#26085#26399
        DataBinding.FieldName = 'rq'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle1
        Width = 75
      end
      object cxView1mjh_ttl: TcxGridDBColumn
        Caption = 'CAD Marker'#13#10'Ttl'#13#10#22044#26550#32317#25976
        DataBinding.FieldName = 'mjh_ttl'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object cxView1dued: TcxGridDBColumn
        Caption = 'Due'#13#10'days'#13#10#26399#38480
        DataBinding.FieldName = 'dued'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle1
        Width = 46
      end
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0'
          Kind = skCount
          Column = cxGrid1DBBandedTableView1Column1
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      Bands = <
        item
          Caption = 'CF_ID '#35009#31243#35672#21029
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Marker '#22044#26550
          HeaderAlignmentVert = vaTop
        end>
      object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
        Caption = '#'
        DataBinding.FieldName = 'prjno'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle1
        Width = 145
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn
        Caption = 'Proj#'#13#10#24037#31243#34399
        DataBinding.FieldName = 'gch'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle1
        Width = 165
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn
        Caption = 'Create dd'#13#10#24314#31435#26085#26399
        DataBinding.FieldName = 'fcrq'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle1
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn
        Caption = 'Create dd'#13#10#24314#31435#26085#26399
        DataBinding.FieldName = 'rq'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle1
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn
        Caption = 'Create Ttl days'#13#10#24314#31435#32317#22825#25976
        DataBinding.FieldName = 'dued'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle1
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 306
    Top = 376
  end
  object clientdataset2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 336
    Top = 232
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'prjno'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 274
    Top = 376
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 280
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 11927551
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 392
    Top = 65528
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    object Reviewhistory1: TMenuItem
      Caption = 'Review history'
      ShortCut = 16505
      Visible = False
      OnClick = Reviewhistory1Click
    end
  end
end
