object frmnewcap_salesbudget: Tfrmnewcap_salesbudget
  Left = 0
  Top = 0
  Caption = 'Sales Projection - Budget'
  ClientHeight = 362
  ClientWidth = 782
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
    Left = 153
    Top = 41
    Width = 2
    Height = 280
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Factory '
    end
    object Label2: TLabel
      Left = 152
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Year '
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 8
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 0
      Text = 'SL'
      Items.Strings = (
        'CHINA'
        'BD')
    end
    object SpinEdit1: TSpinEdit
      Left = 184
      Top = 8
      Width = 57
      Height = 22
      MaxValue = 2020
      MinValue = 2008
      TabOrder = 1
      Value = 2008
    end
    object BitBtn1: TBitBtn
      Left = 288
      Top = 8
      Width = 73
      Height = 25
      Caption = 'OK'
      DoubleBuffered = True
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
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 321
    Width = 782
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 56
      Top = 8
      Width = 81
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
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 136
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 41
    Width = 153
    Height = 280
    Align = alLeft
    BevelInner = bvNone
    BevelOuter = bvNone
    Indent = 19
    ReadOnly = True
    SortType = stText
    TabOrder = 2
    OnChange = TreeView1Change
  end
  object DBGridEh1: TDBGridEh
    Left = 155
    Top = 41
    Width = 627
    Height = 280
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 2
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CUST1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust Code'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'FLAG6'
        Footer.Value = 'Ttl:'
        Footer.ValueType = fvtStaticText
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Prod Code'
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = 'Q01'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Jan|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U01'
        Footers = <>
        Title.Caption = 'Jan|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S01'
        Footers = <>
        Title.Caption = 'Jan|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q02'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Feb|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U02'
        Footers = <>
        Title.Caption = 'Feb|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S02'
        Footers = <>
        Title.Caption = 'Feb|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q03'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Mar|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U03'
        Footers = <>
        Title.Caption = 'Mar|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S03'
        Footers = <>
        Title.Caption = 'Mar|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q04'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Apr|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U04'
        Footers = <>
        Title.Caption = 'Apr|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S04'
        Footers = <>
        Title.Caption = 'Apr|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q05'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'May|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U05'
        Footers = <>
        Title.Caption = 'May|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S05'
        Footers = <>
        Title.Caption = 'May|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q06'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Jun|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U06'
        Footers = <>
        Title.Caption = 'Jun|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S06'
        Footers = <>
        Title.Caption = 'Jun|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q07'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Jul|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U07'
        Footers = <>
        Title.Caption = 'Jul|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S07'
        Footers = <>
        Title.Caption = 'Jul|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q08'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Aug|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U08'
        Footers = <>
        Title.Caption = 'Aug|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S08'
        Footers = <>
        Title.Caption = 'Aug|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q09'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Sep|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U09'
        Footers = <>
        Title.Caption = 'Sep|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S09'
        Footers = <>
        Title.Caption = 'Sep|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q10'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Oct|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U10'
        Footers = <>
        Title.Caption = 'Oct|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S10'
        Footers = <>
        Title.Caption = 'Oct|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q11'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Nov|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U11'
        Footers = <>
        Title.Caption = 'Nov|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S11'
        Footers = <>
        Title.Caption = 'Nov|SAH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Q12'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Dec|Qty'
        Width = 55
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'U12'
        Footers = <>
        Title.Caption = 'Dec|Upx'
        Width = 50
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'S12'
        Footers = <>
        Title.Caption = 'Dec|SAH'
        Width = 50
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'TU'
        Footer.DisplayFormat = '#0'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Ttl Value'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oa_budget'
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
        Name = 'BI'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'VER'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'GRP'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CUST1'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FLAG6'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'Q01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftFloat
      end
      item
        Name = 'Q02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftFloat
      end
      item
        Name = 'Q03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftFloat
      end
      item
        Name = 'Q04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftFloat
      end
      item
        Name = 'Q05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftFloat
      end
      item
        Name = 'Q06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftFloat
      end
      item
        Name = 'Q07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftFloat
      end
      item
        Name = 'Q08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftFloat
      end
      item
        Name = 'Q09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftFloat
      end
      item
        Name = 'Q10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftFloat
      end
      item
        Name = 'Q11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftFloat
      end
      item
        Name = 'Q12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftFloat
      end
      item
        Name = 'TU'
        DataType = ftFloat
      end
      item
        Name = 'CUST'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'S01'
        DataType = ftFloat
      end
      item
        Name = 'S02'
        DataType = ftFloat
      end
      item
        Name = 'S03'
        DataType = ftFloat
      end
      item
        Name = 'S04'
        DataType = ftFloat
      end
      item
        Name = 'S05'
        DataType = ftFloat
      end
      item
        Name = 'S06'
        DataType = ftFloat
      end
      item
        Name = 'S07'
        DataType = ftFloat
      end
      item
        Name = 'S08'
        DataType = ftFloat
      end
      item
        Name = 'S09'
        DataType = ftFloat
      end
      item
        Name = 'S10'
        DataType = ftFloat
      end
      item
        Name = 'S11'
        DataType = ftFloat
      end
      item
        Name = 'S12'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;grp;cust1;flag6'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 160
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 104
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 224
    Top = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 256
    Top = 104
  end
end
