object frmcoretech: Tfrmcoretech
  Left = 192
  Top = 114
  Caption = 'LWPM - Core Tech Ws'
  ClientHeight = 444
  ClientWidth = 680
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 688
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object DateEdit1: TDateEdit
      Left = 48
      Top = 16
      Width = 113
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnChange = DateEdit1Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 403
    Width = 680
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 405
    ExplicitWidth = 688
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Schedule'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Copy'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 168
      Top = 8
      Width = 73
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
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 240
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 312
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 680
    Height = 362
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
    FrozenCols = 7
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEnter = DBGridEh1Enter
    Columns = <
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'PLINE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Line'
        Width = 39
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'DT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Date'
      end
      item
        EditButtons = <>
        FieldName = 'ZB'
        Footers = <>
        Title.Caption = 'Group'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'XM'
        Footers = <>
        Title.Caption = 'Name'
        Width = 93
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Project'
        Width = 77
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WO #'
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust Style'
        Width = 96
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'RWO #'
        Width = 50
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Clr Code'
        Width = 43
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'FCCS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN #'
        Width = 39
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'PSIZ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
        Visible = False
        Width = 35
      end
      item
        Color = 13499643
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WO Qty'
        Width = 47
      end
      item
        Color = 13499643
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'BAL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Balance'
        Width = 48
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'OPT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Operation|Code'
        Width = 46
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'OPTD'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Operation|Description'
        Width = 343
      end
      item
        Color = 13499643
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'TMU'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SAH'
        Width = 50
      end
      item
        Color = 13499643
        DisplayFormat = '0.00000'
        EditButtons = <>
        FieldName = 'DJ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit Price'
        Width = 48
      end
      item
        Color = 13499643
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'XJS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Output / Sect hr'
        Width = 49
      end
      item
        Color = 13499643
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'DSECT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Default Sect Hrs'
        Width = 54
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'CSECT'
        Footers = <>
        Title.Caption = 'Curr Sect Hrs'
        Width = 51
      end
      item
        Color = 13499643
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'MBCL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Target Output'
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'SJCL'
        Footers = <>
        Title.Caption = 'Curr Output'
      end
      item
        Color = 13499643
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'XC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Diff'
      end
      item
        Color = 13499643
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'EFF'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Eff %'
      end
      item
        Color = 13499643
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'JE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Salary'
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SH1'
        Footers = <>
        Title.Caption = 'Consolid Lost|Material'
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SH2'
        Footers = <>
        Title.Caption = 'Consolid Lost|Machine'
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SH3'
        Footers = <>
        Title.Caption = 'Consolid Lost|Help'
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SH4'
        Footers = <>
        Title.Caption = 'Consolid Lost|Re-do'
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SH5'
        Footers = <>
        Title.Caption = 'Consolid Lost|Other'
      end
      item
        Color = 13499643
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'ZSH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Consolid Lost|Total'
      end
      item
        EditButtons = <>
        FieldName = 'BZ'
        Footers = <>
        Title.Caption = 'Remarks'
        Width = 90
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_coretech_d'
    FieldDefs = <
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'ZB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'XM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FCCS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'OPT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'OPTD'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TMU'
        DataType = ftFloat
      end
      item
        Name = 'DJ'
        DataType = ftFloat
      end
      item
        Name = 'XJS'
        DataType = ftFloat
      end
      item
        Name = 'DSECT'
        DataType = ftFloat
      end
      item
        Name = 'CSECT'
        DataType = ftFloat
      end
      item
        Name = 'MBCL'
        DataType = ftFloat
      end
      item
        Name = 'SJCL'
        DataType = ftFloat
      end
      item
        Name = 'XC'
        DataType = ftFloat
      end
      item
        Name = 'EFF'
        DataType = ftFloat
      end
      item
        Name = 'JE'
        DataType = ftFloat
      end
      item
        Name = 'SH1'
        DataType = ftFloat
      end
      item
        Name = 'SH2'
        DataType = ftFloat
      end
      item
        Name = 'SH3'
        DataType = ftFloat
      end
      item
        Name = 'SH4'
        DataType = ftFloat
      end
      item
        Name = 'SH5'
        DataType = ftFloat
      end
      item
        Name = 'ZSH'
        DataType = ftFloat
      end
      item
        Name = 'BZ'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Expression = 'exfty;pline;seq;did;opt;dseq'
        Options = [ixExpression]
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 32
    Top = 96
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 64
    Top = 96
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 96
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 96
  end
end
