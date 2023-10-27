object frmnewcap_spwf_detail: Tfrmnewcap_spwf_detail
  Left = 0
  Top = 0
  Caption = 'Detail information by operation'
  ClientHeight = 257
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 873
    Height = 216
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    FooterRowCount = 1
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GRP'
        Footer.Value = 'Total:'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Team'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'WFID'
        Footers = <>
        Title.Caption = 'Workforce|ID'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'WFNAME'
        Footers = <>
        Title.Caption = 'Workforce|Name'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DT'
        Footers = <>
        Title.Caption = 'Date'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        Title.Caption = 'WO #'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'STYLE'
        Footers = <>
        Title.Caption = 'Cust Style'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        Title.Caption = 'Clr Code'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        Title.Caption = 'RWO # Suffix'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'FCCS'
        Footers = <>
        Title.Caption = 'QN # Suffix'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'OPT'
        Footers = <>
        Title.Caption = 'Operation|Seq'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'OPTNAME'
        Footers = <>
        Title.Caption = 'Operation|Description'
        Width = 272
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Qty'
        Width = 42
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'TMU'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'SAH / PC'
        Width = 48
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'TSAH'
        Footer.DisplayFormat = '0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Total SAH'
        Width = 52
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 216
    Width = 873
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 56
    ExplicitTop = 200
    ExplicitWidth = 185
    object BitBtn5: TBitBtn
      Left = 24
      Top = 6
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_spwf01'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'GRP'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'WFID'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'WFNAME'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'DT'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'STYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'RWO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'FCCS'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'OPT'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'OPTNAME'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'TMU'
        DataType = ftFloat
      end
      item
        Name = 'TSAH'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'grp;wfid;dt;j2_job;acol;rwo;fccs;opt'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 208
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 88
  end
end
