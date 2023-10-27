object frmqn_sample: Tfrmqn_sample
  Left = 246
  Top = 112
  Caption = 'Deduction Quantity by QN'
  ClientHeight = 309
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 727
    Height = 235
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
        Color = 13499643
        EditButtons = <>
        FieldName = 'PSIZ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
        Width = 59
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'PQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN Qty'
        Width = 45
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'TQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Picked Qty'
        Width = 45
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'T1_SP'
        Footers = <>
        Title.Caption = 'Cutting more Sample Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns7EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'T1_WR'
        Footers = <>
        Title.Caption = 'T1|Defect Qty'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'T1_LS'
        Footers = <>
        Title.Caption = 'T1|Lost Qty'
        Width = 45
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'T1USER'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'T1|User'
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'S_SP'
        Footers = <>
        Title.Caption = 'Sewn|Sample Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns7EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TST_SP'
        Footers = <>
        Title.Caption = 'Sewn|Washing Sample Qty'
        Visible = False
        Width = 48
        OnEditButtonClick = DBGridEh1Columns8EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'S_WR'
        Footers = <>
        Title.Caption = 'Sewn|Defect Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'S_LS'
        Footers = <>
        Title.Caption = 'Sewn|Lost Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'S2W'
        Footers = <>
        Title.Caption = 'Sewn|To Where?'
        Visible = False
        Width = 78
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'SUSER'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sewn|User'
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'AQ_SP'
        Footers = <>
        Title.Caption = 'AQL|Sample Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns7EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'ATST_SP'
        Footers = <>
        Title.Caption = 'AQL|Washing Sample Qty'
        Visible = False
        Width = 47
        OnEditButtonClick = DBGridEh1Columns14EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'AQ_WR'
        Footers = <>
        Title.Caption = 'AQL|Defect Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'AQ_LS'
        Footers = <>
        Title.Caption = 'AQL|Lost Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'AQUSER'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'AQL|User'
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'T2_SP'
        Footers = <>
        Title.Caption = 'i/cPack|Sample Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns7EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'T2_WR'
        Footers = <>
        Title.Caption = 'i/cPack|Defect Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'T2_LS'
        Footers = <>
        Title.Caption = 'i/cPack|Lost Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'T2USER'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'i/cPack|User'
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'T3_SP'
        Footers = <>
        Title.Caption = 'T3|Sample Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns7EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'T3_WR'
        Footers = <>
        Title.Caption = 'T3|Defect Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'T3_LS'
        Footers = <>
        Title.Caption = 'T3|Lost Qty'
        Width = 45
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'T3USER'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'T3|User'
      end
      item
        EditButtons = <>
        FieldName = 'PPSP'
        Footers = <>
        Title.Caption = 'PP Sample Qty'
        Visible = False
        Width = 48
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 268
    Width = 727
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 16
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
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 88
      Top = 8
      Width = 137
      Height = 25
      Caption = 'Sample Qty in CWO'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 224
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 104
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Project'
    end
    object Label2: TLabel
      Left = 224
      Top = 8
      Width = 26
      Height = 13
      Caption = 'CWO'
    end
    object Label3: TLabel
      Left = 360
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label4: TLabel
      Left = 424
      Top = 8
      Width = 26
      Height = 13
      Caption = 'QN# '
    end
    object Label5: TLabel
      Left = 520
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object Label6: TLabel
      Left = 608
      Top = 8
      Width = 41
      Height = 13
      Caption = 'QN QTY'
    end
    object DBText1: TDBText
      Left = 144
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'J_no'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 256
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'J2_job'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 368
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'RWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 464
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'FCCS'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 552
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Acol'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 664
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Scqty'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Line'
    end
    object DBText7: TDBText
      Left = 40
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Pline'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 320
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'CWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 312
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo_sample where j2_job='#39'W174869'#39
    FieldDefs = <
      item
        Name = 'PLINE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ORDLINE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'J2_JOB'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RWO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOL'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'DID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CUP'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SIZ'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PSIZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PQTY'
        DataType = ftInteger
      end
      item
        Name = 'TQTY'
        DataType = ftInteger
      end
      item
        Name = 'S_SP'
        DataType = ftInteger
      end
      item
        Name = 'S_WR'
        DataType = ftInteger
      end
      item
        Name = 'S_LS'
        DataType = ftInteger
      end
      item
        Name = 'T2_SP'
        DataType = ftInteger
      end
      item
        Name = 'T2_WR'
        DataType = ftInteger
      end
      item
        Name = 'T2_LS'
        DataType = ftInteger
      end
      item
        Name = 'AQ_SP'
        DataType = ftInteger
      end
      item
        Name = 'AQ_WR'
        DataType = ftInteger
      end
      item
        Name = 'AQ_LS'
        DataType = ftInteger
      end
      item
        Name = 'T3_SP'
        DataType = ftInteger
      end
      item
        Name = 'T3_WR'
        DataType = ftInteger
      end
      item
        Name = 'T3_LS'
        DataType = ftInteger
      end
      item
        Name = 'T1_SP'
        DataType = ftInteger
      end
      item
        Name = 'T1_WR'
        DataType = ftInteger
      end
      item
        Name = 'T1_LS'
        DataType = ftInteger
      end
      item
        Name = 'T1USER'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'SUSER'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'AQUSER'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'T2USER'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'T3USER'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'S2W'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'S_SP1'
        DataType = ftInteger
      end
      item
        Name = 'S_SP2'
        DataType = ftInteger
      end
      item
        Name = 'S_SP3'
        DataType = ftInteger
      end
      item
        Name = 'S_SP4'
        DataType = ftInteger
      end
      item
        Name = 'S_SP5'
        DataType = ftInteger
      end
      item
        Name = 'S_PDN1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'S_PDN2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'S_PDN3'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'S_PDN4'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'S_PDN5'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T2_SP1'
        DataType = ftInteger
      end
      item
        Name = 'T2_SP2'
        DataType = ftInteger
      end
      item
        Name = 'T2_SP3'
        DataType = ftInteger
      end
      item
        Name = 'T2_SP4'
        DataType = ftInteger
      end
      item
        Name = 'T2_SP5'
        DataType = ftInteger
      end
      item
        Name = 'T2_PDN1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T2_PDN2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T2_PDN3'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T2_PDN4'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T2_PDN5'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AQ_SP1'
        DataType = ftInteger
      end
      item
        Name = 'AQ_SP2'
        DataType = ftInteger
      end
      item
        Name = 'AQ_SP3'
        DataType = ftInteger
      end
      item
        Name = 'AQ_SP4'
        DataType = ftInteger
      end
      item
        Name = 'AQ_SP5'
        DataType = ftInteger
      end
      item
        Name = 'AQ_PDN1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AQ_PDN2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AQ_PDN3'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AQ_PDN4'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AQ_PDN5'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T3_SP1'
        DataType = ftInteger
      end
      item
        Name = 'T3_SP2'
        DataType = ftInteger
      end
      item
        Name = 'T3_SP3'
        DataType = ftInteger
      end
      item
        Name = 'T3_SP4'
        DataType = ftInteger
      end
      item
        Name = 'T3_SP5'
        DataType = ftInteger
      end
      item
        Name = 'T3_PDN1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T3_PDN2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T3_PDN3'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T3_PDN4'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T3_PDN5'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PPSP'
        DataType = ftInteger
      end
      item
        Name = 'S_LSREASON'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'S_WRREASON'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'T2_LSREASON'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'T2_WRREASON'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'AQ_LSREASON'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'AQ_WRREASON'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'T3_LSREASON'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'T3_WRREASON'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'TST_SP'
        DataType = ftInteger
      end
      item
        Name = 'TST_SP1'
        DataType = ftInteger
      end
      item
        Name = 'TST_SP2'
        DataType = ftInteger
      end
      item
        Name = 'TST_SP3'
        DataType = ftInteger
      end
      item
        Name = 'TST_SP4'
        DataType = ftInteger
      end
      item
        Name = 'TST_SP5'
        DataType = ftInteger
      end
      item
        Name = 'TST_PDN1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TST_PDN2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TST_PDN3'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TST_PDN4'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TST_PDN5'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'REPLENISH_QTY'
        DataType = ftFloat
      end
      item
        Name = 'ATST_SP'
        DataType = ftInteger
      end
      item
        Name = 'ATST_SP1'
        DataType = ftInteger
      end
      item
        Name = 'ATST_SP2'
        DataType = ftInteger
      end
      item
        Name = 'ATST_SP3'
        DataType = ftInteger
      end
      item
        Name = 'ATST_SP4'
        DataType = ftInteger
      end
      item
        Name = 'ATST_SP5'
        DataType = ftInteger
      end
      item
        Name = 'ATST_PDN1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ATST_PDN2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ATST_PDN3'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ATST_PDN4'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ATST_PDN5'
        DataType = ftWideString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'did'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 56
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 88
    Top = 128
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 120
    Top = 128
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 128
  end
  object ADOQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    CommandTimeout = 300
    Parameters = <>
    SQL.Strings = (
      
        'select distinct projectno,workorderno,customerstyleno,colorcode,' +
        'rwo,'
      'rtrim(custsize)+rtrim(custcup) as sizecup,sampleqty'
      
        'from [ph.rwo1]..view_woc_rwo where projectno='#39'MNSU-530'#39' and samp' +
        'leqty>0')
    Left = 192
    Top = 128
  end
end
