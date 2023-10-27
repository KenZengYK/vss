object frmibooking: Tfrmibooking
  Left = 154
  Top = 114
  Caption = 'Inspection Booking'
  ClientHeight = 402
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 802
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 116
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 23
      Height = 13
      Caption = 'PDN'
    end
    object DBText1: TDBText
      Left = 48
      Top = 16
      Width = 137
      Height = 17
      DataField = 'PDN'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Manifest '
    end
    object DBText2: TDBText
      Left = 248
      Top = 16
      Width = 137
      Height = 17
      DataField = 'VOYN'
      DataSource = frmvoyage.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 802
    Height = 320
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
        Color = 13365228
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Project'
        Width = 77
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WO'
        Width = 63
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'CUSTPO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust PO#'
        Width = 70
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust Style'
        Width = 68
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Clr Code'
        Width = 43
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'CNAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust Clr Code/Name'
        Width = 66
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'SQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PDN Ttl Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'LQCDT'
        Footers = <>
        Title.Caption = 'In Line QC Date'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'FQCDT'
        Footers = <>
        Title.Caption = 'Final QC Inspection Date'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'FQCDT1'
        Footers = <>
        Title.Caption = '2nd Final QC Inspection Date'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DT01'
        Footers = <>
        Title.Caption = 'Pack Dept Finish T3 Date'
      end
      item
        EditButtons = <>
        FieldName = 'DT02'
        Footers = <>
        Title.Caption = 'QC Dept Finish AQL Date'
      end
      item
        EditButtons = <>
        FieldName = 'QCRST'
        Footers = <>
        Title.Caption = 'QC Result'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CNPH'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'PT2DT'
        Footers = <>
        Title.Caption = 'Planned T2 Date'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 361
    Width = 802
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = -41
    ExplicitWidth = 116
    object BitBtn1: TBitBtn
      Left = 24
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
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_pack'
    FieldDefs = <
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CUSTPO'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CNAME'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'BOX'
        DataType = ftFloat
      end
      item
        Name = 'WGHT'
        DataType = ftFloat
      end
      item
        Name = 'CBM'
        DataType = ftFloat
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'EXTM'
        DataType = ftTime
      end
      item
        Name = 'TRUCK'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'INDT'
        DataType = ftDate
      end
      item
        Name = 'INTM'
        DataType = ftTime
      end
      item
        Name = 'ONDT'
        DataType = ftDate
      end
      item
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'VESS'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'LPORT'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DEST'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'VOYN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'POQTY'
        DataType = ftInteger
      end
      item
        Name = 'AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'DP'
        DataType = ftFloat
      end
      item
        Name = 'RWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SHPQTY'
        DataType = ftInteger
      end
      item
        Name = 'SPQTY'
        DataType = ftInteger
      end
      item
        Name = 'WRITEOFF'
        DataType = ftInteger
      end
      item
        Name = 'BAL'
        DataType = ftInteger
      end
      item
        Name = 'MEMO1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'LQCDT'
        DataType = ftDate
      end
      item
        Name = 'FQCDT'
        DataType = ftDate
      end
      item
        Name = 'FQCDT1'
        DataType = ftDate
      end
      item
        Name = 'QCRST'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CNPH'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'RAIR'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'PKM'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'AIRRATE'
        DataType = ftFloat
      end
      item
        Name = 'OCHARGE'
        DataType = ftFloat
      end
      item
        Name = 'BCHARGE'
        DataType = ftFloat
      end
      item
        Name = 'RCHARGE'
        DataType = ftFloat
      end
      item
        Name = 'VWGHT'
        DataType = ftFloat
      end
      item
        Name = 'VWGHT1'
        DataType = ftFloat
      end
      item
        Name = 'RCODE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DT01'
        DataType = ftDate
      end
      item
        Name = 'DT02'
        DataType = ftDate
      end
      item
        Name = 'FOBCOST'
        DataType = ftFloat
      end
      item
        Name = 'FOBCOST1'
        DataType = ftFloat
      end
      item
        Name = 'PT2DT'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;acol'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 408
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 440
    Top = 8
  end
  object Query4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
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
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 536
    Top = 8
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 568
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
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
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 472
    Top = 8
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 504
    Top = 8
  end
end
