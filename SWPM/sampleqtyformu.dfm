object frmsampleqty: Tfrmsampleqty
  Left = 0
  Top = 0
  Caption = 'Bulk Sample Breakdown'
  ClientHeight = 398
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 918
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 802
    object Label7: TLabel
      Left = 14
      Top = 8
      Width = 23
      Height = 13
      Caption = 'AL# '
    end
    object DBText7: TDBText
      Left = 36
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
    object Label1: TLabel
      Left = 92
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Proj# '
    end
    object DBText1: TDBText
      Left = 120
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
    object Label2: TLabel
      Left = 217
      Top = 8
      Width = 26
      Height = 13
      Caption = 'QN# '
    end
    object DBText2: TDBText
      Left = 249
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
    object Label9: TLabel
      Left = 305
      Top = 8
      Width = 10
      Height = 13
      Caption = ' - '
    end
    object DBText8: TDBText
      Left = 313
      Top = 8
      Width = 38
      Height = 13
      DataField = 'CWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 350
      Top = 8
      Width = 10
      Height = 13
      Caption = ' - '
    end
    object DBText3: TDBText
      Left = 358
      Top = 8
      Width = 38
      Height = 13
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
      Left = 403
      Top = 8
      Width = 38
      Height = 13
      DataField = 'FCCS'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 462
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Color '
    end
    object DBText5: TDBText
      Left = 491
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
    object Label4: TLabel
      Left = 394
      Top = 8
      Width = 10
      Height = 13
      Caption = ' - '
    end
    object Label6: TLabel
      Left = 736
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 918
    Height = 316
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    DrawMemoText = True
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    RowDetailPanel.Color = clBtnFace
    RowHeight = 4
    RowLines = 2
    RowSizingAllowed = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'S_TYPE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Bulk'#13#10'Sample'#13#10'Type'
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'Desc_en'
        Footers = <>
        Title.Caption = 'Description'
        Width = 164
      end
      item
        EditButtons = <>
        FieldName = 'S_FUN'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Purpose'
        Width = 317
        WordWrap = True
      end
      item
        EditButtons = <>
        FieldName = 'S_WS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Which Ws'#13#10'make it'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'S_FTY'
        Footers = <>
        Title.Caption = 'Where'#13#10'make it'
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'S_SPC'
        Footers = <>
        Title.Caption = 'Smpl'#13#10'Ord'#13#10'Need?'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'PSIZ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'S_QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Qty'
        Width = 30
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'S_DDT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Despatch dd|Def.'
        Width = 55
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'S_ADDT'
        Footers = <>
        Title.Caption = 'Despatch dd|Act.'
        Width = 55
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'S_ADT'
        Footers = <>
        Title.Caption = 'Approved dd'
        Visible = False
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'S_ORDER'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'C_ORDER'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'dept'
        Footers = <>
        Title.Caption = 'Keep on Where?|Dept'
        Width = 55
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'S_ADDT'
        Footers = <>
        Title.Caption = 'Keep on Where?|dd'
        Width = 55
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 357
    Width = 918
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 305
    ExplicitWidth = 802
    object BitBtn1: TBitBtn
      Left = 32
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
      Left = 104
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule_sample'
    FieldDefs = <
      item
        Name = 'PLINE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'S_TYPE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PSIZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'S_ORDER'
        DataType = ftInteger
      end
      item
        Name = 'C_ORDER'
        DataType = ftInteger
      end
      item
        Name = 'S_QTY'
        DataType = ftInteger
      end
      item
        Name = 'S_WS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'S_DDT'
        DataType = ftDate
      end
      item
        Name = 'S_ADDT'
        DataType = ftDate
      end
      item
        Name = 'S_ADT'
        DataType = ftDate
      end
      item
        Name = 'S_SWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'S_FTY'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'S_SPC'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'S_ADJDT'
        DataType = ftDate
      end
      item
        Name = 'S_FUN'
        DataType = ftWideString
        Size = 200
      end
      item
        Name = 'S_ADD'
        DataType = ftWideString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 's_ddt;s_type;s_ws;c_order;s_order'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 200
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 136
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PLINE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'S_TYPE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PSIZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'S_ORDER'
        DataType = ftInteger
      end
      item
        Name = 'C_ORDER'
        DataType = ftInteger
      end
      item
        Name = 'S_QTY'
        DataType = ftInteger
      end
      item
        Name = 'S_WS'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'S_DDT'
        DataType = ftDate
      end
      item
        Name = 'S_ADDT'
        DataType = ftDate
      end
      item
        Name = 'S_ADT'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 336
    Top = 120
  end
  object Query3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PLINE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'S_TYPE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PSIZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'S_ORDER'
        DataType = ftInteger
      end
      item
        Name = 'C_ORDER'
        DataType = ftInteger
      end
      item
        Name = 'S_QTY'
        DataType = ftInteger
      end
      item
        Name = 'S_WS'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'S_DDT'
        DataType = ftDate
      end
      item
        Name = 'S_ADDT'
        DataType = ftDate
      end
      item
        Name = 'S_ADT'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 336
    Top = 168
  end
end
