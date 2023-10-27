object frmnewcap_1stchoice: Tfrmnewcap_1stchoice
  Left = 192
  Top = 114
  Caption = '1st Choice Setup'
  ClientHeight = 639
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 735
    Height = 533
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
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove]
    RowDetailPanel.Color = clBtnFace
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
        FieldName = 'SDESC'
        Footers = <>
        ReadOnly = True
        Title.Caption = ' '
        Visible = False
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'SDESC1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Item(s)'
        Width = 152
      end
      item
        DisplayFormat = '#,0.0000'
        EditButtons = <>
        FieldName = 'TTL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Total'
        Width = 75
      end
      item
        DisplayFormat = '#,0.0000'
        EditButtons = <>
        FieldName = 'W1'
        Footers = <>
        Title.Caption = 'Jan'
        Width = 75
      end
      item
        DisplayFormat = '#,0.0000'
        EditButtons = <>
        FieldName = 'W2'
        Footers = <>
        Title.Caption = 'Feb'
        Width = 75
      end
      item
        DisplayFormat = '#,0.0000'
        EditButtons = <>
        FieldName = 'W3'
        Footers = <>
        Title.Caption = 'Mar'
        Width = 75
      end
      item
        DisplayFormat = '#,0.0000'
        EditButtons = <>
        FieldName = 'W4'
        Footers = <>
        Title.Caption = 'Apr'
        Width = 75
      end
      item
        DisplayFormat = '#,0.0000'
        EditButtons = <>
        FieldName = 'W5'
        Footers = <>
        Title.Caption = 'May'
        Width = 75
      end
      item
        DisplayFormat = '#,0.0000'
        EditButtons = <>
        FieldName = 'W6'
        Footers = <>
        Width = 75
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 735
    Height = 533
    Align = alClient
    TabOrder = 3
    object cxView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxView1CustomDrawCell
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.HeaderAutoHeight = True
      object GRP1: TcxGridDBColumn
        Caption = 'Class'
        DataBinding.FieldName = 'GRP1'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object SEQ1: TcxGridDBColumn
        DataBinding.FieldName = 'SEQ1'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object SDESC1: TcxGridDBColumn
        Caption = 'Item(s)'
        DataBinding.FieldName = 'SDESC1'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 152
      end
      object TTL: TcxGridDBColumn
        Caption = 'Def.'
        DataBinding.FieldName = 'TTL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.0000'
        Properties.ReadOnly = True
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 82
      end
      object WFP: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'WFP'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00;-0.00;'#39#39
        Properties.ReadOnly = True
        Options.Editing = False
        Width = 48
      end
      object W1: TcxGridDBColumn
        DataBinding.FieldName = 'W1'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.0000'
        Options.Filtering = False
        Options.Sorting = False
        Width = 75
        OnHeaderClick = W1HeaderClick
      end
      object W2: TcxGridDBColumn
        DataBinding.FieldName = 'W2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.0000'
        Options.Filtering = False
        Options.Sorting = False
        Width = 75
        OnHeaderClick = W2HeaderClick
      end
      object W3: TcxGridDBColumn
        DataBinding.FieldName = 'W3'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.0000'
        Options.Filtering = False
        Options.Sorting = False
        Width = 75
        OnHeaderClick = W3HeaderClick
      end
      object W4: TcxGridDBColumn
        DataBinding.FieldName = 'W4'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.0000'
        Options.Filtering = False
        Options.Sorting = False
        Width = 75
        OnHeaderClick = W4HeaderClick
      end
      object W5: TcxGridDBColumn
        DataBinding.FieldName = 'W5'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.0000'
        Options.Filtering = False
        Options.Sorting = False
        Width = 75
        OnHeaderClick = W5HeaderClick
      end
      object W6: TcxGridDBColumn
        DataBinding.FieldName = 'W6'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.0000'
        Options.Filtering = False
        Options.Sorting = False
        Width = 75
        OnHeaderClick = W6HeaderClick
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 40
      Width = 47
      Height = 13
      Caption = 'For month'
    end
    object Label3: TLabel
      Left = 176
      Top = 40
      Width = 73
      Height = 13
      Caption = 'Choose Option '
    end
    object Label1: TLabel
      Left = 419
      Top = 40
      Width = 3
      Height = 13
    end
    object Label4: TLabel
      Left = 520
      Top = 40
      Width = 71
      Height = 13
      Caption = 'Time Calendar '
    end
    object Label5: TLabel
      Left = 24
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Factory  '
    end
    object Label6: TLabel
      Left = 224
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Year '
    end
    object SpinEdit1: TSpinEdit
      Left = 88
      Top = 40
      Width = 57
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 0
      Value = 1
      OnChange = SpinEdit1Change
    end
    object ComboBox2: TComboBox
      Left = 256
      Top = 40
      Width = 145
      Height = 21
      TabOrder = 1
      OnChange = ComboBox2Change
      OnEnter = ComboBox2Enter
    end
    object ComboBox1: TComboBox
      Left = 600
      Top = 40
      Width = 65
      Height = 21
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
    object ComboBox3: TComboBox
      Left = 88
      Top = 16
      Width = 81
      Height = 21
      TabOrder = 3
      OnChange = ComboBox2Change
      OnEnter = ComboBox2Enter
      Items.Strings = (
        'SL'
        'RX'
        'CL')
    end
    object SpinEdit2: TSpinEdit
      Left = 256
      Top = 16
      Width = 65
      Height = 22
      MaxValue = 2030
      MinValue = 2011
      TabOrder = 4
      Value = 2011
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 598
    Width = 735
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 24
      Top = 8
      Width = 73
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
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 96
      Top = 8
      Width = 153
      Height = 25
      Caption = 'Confirm Chose and Save'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 248
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Un-Confirmed'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 96
      Top = 8
      Width = 96
      Height = 25
      Caption = 'Sub-contract'
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
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn5: TBitBtn
      Left = 344
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 191
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Refresh'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 255
      Top = 8
      Width = 146
      Height = 25
      Caption = 'Lock balance for budget'
      NumGlyphs = 2
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 400
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 7
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_ftyelements_wk'
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'YR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'M1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SDESC'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'SEQ1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SDESC1'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'W1'
        DataType = ftFloat
      end
      item
        Name = 'W2'
        DataType = ftFloat
      end
      item
        Name = 'W3'
        DataType = ftFloat
      end
      item
        Name = 'W4'
        DataType = ftFloat
      end
      item
        Name = 'W5'
        DataType = ftFloat
      end
      item
        Name = 'W6'
        DataType = ftFloat
      end
      item
        Name = 'SEQ2'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftFloat
      end
      item
        Name = 'GRP1'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FCHOICE'
        DataType = ftBoolean
      end
      item
        Name = 'CFMD'
        DataType = ftBoolean
      end
      item
        Name = 'APPR'
        DataType = ftBoolean
      end
      item
        Name = 'WFP'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;seq;seq2;seq1'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 152
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 144
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 216
    Top = 144
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 248
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 144
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ShortCut = 49268
      Visible = False
      OnClick = Refresh1Click
    end
    object Expand1: TMenuItem
      Caption = 'Expand'
      ShortCut = 49221
      Visible = False
      OnClick = Expand1Click
    end
    object Collapse1: TMenuItem
      Caption = 'Collapse'
      ShortCut = 49219
      Visible = False
      OnClick = Collapse1Click
    end
    object Copytonew1: TMenuItem
      Caption = 'Copy to new'
      ShortCut = 49241
      Visible = False
      OnClick = Copytonew1Click
    end
    object Updateto9991: TMenuItem
      Caption = 'Update to 999'
      ShortCut = 32888
      Visible = False
    end
    object DetailWorksheet1: TMenuItem
      Caption = 'Detail Worksheet'
      OnClick = DetailWorksheet1Click
    end
    object UpdateBalance21: TMenuItem
      Caption = 'Update Balance2'
      ShortCut = 32887
      Visible = False
    end
    object UpdateBudget1: TMenuItem
      Caption = 'Update Budget'
      ShortCut = 32885
      Visible = False
    end
    object UpdateBalance31: TMenuItem
      Caption = 'Update Balance3'
      ShortCut = 32882
      Visible = False
    end
    object DeleteBalancing1: TMenuItem
      Caption = 'Delete Balancing'
      ShortCut = 49240
      Visible = False
      OnClick = DeleteBalancing1Click
    end
    object OnhanddWFpresent1: TMenuItem
      Caption = 'On-hand dWF (present)'
      OnClick = OnhanddWFpresent1Click
    end
  end
end
