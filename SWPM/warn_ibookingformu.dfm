object frmwarn_ibooking: Tfrmwarn_ibooking
  Left = 192
  Top = 114
  Caption = 'Production Summary & Inspection Requisition - WARN'
  ClientHeight = 398
  ClientWidth = 610
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
  object sSheet1: TcxSpreadSheet
    Left = 336
    Top = 208
    Width = 297
    Height = 105
    Visible = False
    DefaultStyle.Font.Name = 'MS Sans Serif'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 610
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 111
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Factory'
    end
    object DBText1: TDBText
      Left = 56
      Top = 16
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'TPLANT'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 128
      Top = 16
      Width = 23
      Height = 13
      Caption = 'PDN'
    end
    object DBText2: TDBText
      Left = 160
      Top = 16
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'PDN'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 256
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Ex-fty'
    end
    object DBText3: TDBText
      Left = 288
      Top = 16
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'EXFTY'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 376
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Week'
    end
    object DBText4: TDBText
      Left = 408
      Top = 16
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'WK'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 504
      Top = 16
      Width = 85
      Height = 13
      Caption = 'Submission Date: '
    end
    object DateEdit1: TDateEdit
      Left = 592
      Top = 16
      Width = 113
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 610
    Height = 319
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
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SEASON'
        Footers = <>
        Title.Caption = 'Season'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'CUSTPO'
        Footers = <>
        Title.Caption = 'Warn PO'
        Width = 82
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Style No'
        Width = 94
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Color'
        Width = 28
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Order Qty'
        Width = 50
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'SQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Plan Ship Qty'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'ACDT'
        Footers = <>
        Title.Caption = 'AC Date'
        Width = 52
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'SHPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Ship Mode'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'SHPTO'
        Footers = <>
        Title.Caption = 'Ship To'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'BARDT'
        Footers = <>
        Title.Caption = 'Bulk Fabric / Trim Arrival Date'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'FARDT'
        Footers = <>
        Title.Caption = 'Foam Arrival Date'
      end
      item
        EditButtons = <>
        FieldName = 'CSTDT'
        Footers = <>
        Title.Caption = 'Star Cut / Knit Date'
      end
      item
        EditButtons = <>
        FieldName = 'CENDT'
        Footers = <>
        Title.Caption = 'End Cut / Knit Date'
      end
      item
        EditButtons = <>
        FieldName = 'RPTDT'
        Footers = <>
        Title.Caption = 'Output as of Report Date'
      end
      item
        EditButtons = <>
        FieldName = 'SSTDT'
        Footers = <>
        Title.Caption = 'Start Sew/Link Date'
      end
      item
        EditButtons = <>
        FieldName = 'SENDT'
        Footers = <>
        Title.Caption = 'End Sew/Link Date'
      end
      item
        EditButtons = <>
        FieldName = 'RPT1DT'
        Footers = <>
        Title.Caption = 'Output as of Report Date'
      end
      item
        EditButtons = <>
        FieldName = 'WSTDT'
        Footers = <>
        Title.Caption = 'Start Wash Date'
      end
      item
        EditButtons = <>
        FieldName = 'WENDT'
        Footers = <>
        Title.Caption = 'End Wash Date'
      end
      item
        EditButtons = <>
        FieldName = 'RPT2DT'
        Footers = <>
        Title.Caption = 'Output as of Report Date'
      end
      item
        EditButtons = <>
        FieldName = 'PSTDT'
        Footers = <>
        Title.Caption = 'Start Pack Date'
      end
      item
        EditButtons = <>
        FieldName = 'PENDT'
        Footers = <>
        Title.Caption = 'End Pack Date'
      end
      item
        EditButtons = <>
        FieldName = 'RPT3DT'
        Footers = <>
        Title.Caption = 'Output as of Report Date'
      end
      item
        EditButtons = <>
        FieldName = 'INNO'
        Footers = <>
        PickList.Strings = (
          '1st'
          '2nd'
          '3rd')
        Title.Caption = 'No of 1st / 2nd / 3rd'
      end
      item
        EditButtons = <>
        FieldName = 'INDT'
        Footers = <>
        Title.Caption = 'OPA Insp Date'
      end
      item
        EditButtons = <>
        FieldName = 'IN1DT'
        Footers = <>
        Title.Caption = 'In-line Date'
      end
      item
        EditButtons = <>
        FieldName = 'INRST'
        Footers = <>
        Title.Caption = 'Inspection Result'
      end
      item
        EditButtons = <>
        FieldName = 'IN1NO'
        Footers = <>
        PickList.Strings = (
          '1st'
          '2nd'
          '3rd')
        Title.Caption = 'No of 1st / 2nd /3rd'
      end
      item
        EditButtons = <>
        FieldName = 'FINDT'
        Footers = <>
        Title.Caption = 'Final Date'
      end
      item
        EditButtons = <>
        FieldName = 'IN1RST'
        Footers = <>
        Title.Caption = 'Inspection Result'
      end
      item
        EditButtons = <>
        FieldName = 'TOPDT'
        Footers = <>
        Title.Caption = 'Top Sample Approval Date'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 360
    Width = 610
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = -38
    ExplicitWidth = 111
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
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 160
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Export'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 232
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 3
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_ibwarn'
    FieldDefs = <
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SEASON'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'CUSTPO'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'ACDT'
        DataType = ftDate
      end
      item
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SHPTO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BARDT'
        DataType = ftDate
      end
      item
        Name = 'FARDT'
        DataType = ftDate
      end
      item
        Name = 'CSTDT'
        DataType = ftDate
      end
      item
        Name = 'CENDT'
        DataType = ftDate
      end
      item
        Name = 'RPTDT'
        DataType = ftDate
      end
      item
        Name = 'SSTDT'
        DataType = ftDate
      end
      item
        Name = 'SENDT'
        DataType = ftDate
      end
      item
        Name = 'RPT1DT'
        DataType = ftDate
      end
      item
        Name = 'WSTDT'
        DataType = ftDate
      end
      item
        Name = 'WENDT'
        DataType = ftDate
      end
      item
        Name = 'RPT2DT'
        DataType = ftDate
      end
      item
        Name = 'PSTDT'
        DataType = ftDate
      end
      item
        Name = 'PENDT'
        DataType = ftDate
      end
      item
        Name = 'RPT3DT'
        DataType = ftDate
      end
      item
        Name = 'INNO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'INDT'
        DataType = ftDate
      end
      item
        Name = 'IN1DT'
        DataType = ftDate
      end
      item
        Name = 'INRST'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'IN1NO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FINDT'
        DataType = ftDate
      end
      item
        Name = 'IN1RST'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'TOPDT'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'seq;dseq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 256
    Top = 152
    object Query1SEQ: TIntegerField
      FieldName = 'SEQ'
      Required = True
    end
    object Query1DSEQ: TIntegerField
      FieldName = 'DSEQ'
      Required = True
    end
    object Query1J_NO: TWideStringField
      FieldName = 'J_NO'
    end
    object Query1SEASON: TWideStringField
      FieldName = 'SEASON'
      Size = 30
    end
    object Query1CUSTPO: TWideStringField
      FieldName = 'CUSTPO'
      Size = 30
    end
    object Query1CSTYLE: TWideStringField
      FieldName = 'CSTYLE'
      Size = 35
    end
    object Query1ACOL: TWideStringField
      FieldName = 'ACOL'
      Size = 10
    end
    object Query1QTY: TIntegerField
      FieldName = 'QTY'
    end
    object Query1SQTY: TIntegerField
      FieldName = 'SQTY'
    end
    object Query1ACDT: TDateField
      FieldName = 'ACDT'
    end
    object Query1SHPM: TWideStringField
      FieldName = 'SHPM'
    end
    object Query1SHPTO: TWideStringField
      FieldName = 'SHPTO'
    end
    object Query1BARDT: TDateField
      FieldName = 'BARDT'
    end
    object Query1FARDT: TDateField
      FieldName = 'FARDT'
    end
    object Query1CSTDT: TDateField
      FieldName = 'CSTDT'
    end
    object Query1CENDT: TDateField
      FieldName = 'CENDT'
    end
    object Query1RPTDT: TDateField
      FieldName = 'RPTDT'
    end
    object Query1SSTDT: TDateField
      FieldName = 'SSTDT'
    end
    object Query1SENDT: TDateField
      FieldName = 'SENDT'
    end
    object Query1RPT1DT: TDateField
      FieldName = 'RPT1DT'
    end
    object Query1WSTDT: TDateField
      FieldName = 'WSTDT'
    end
    object Query1WENDT: TDateField
      FieldName = 'WENDT'
    end
    object Query1RPT2DT: TDateField
      FieldName = 'RPT2DT'
    end
    object Query1PSTDT: TDateField
      FieldName = 'PSTDT'
    end
    object Query1PENDT: TDateField
      FieldName = 'PENDT'
    end
    object Query1RPT3DT: TDateField
      FieldName = 'RPT3DT'
    end
    object Query1INNO: TWideStringField
      FieldName = 'INNO'
      Size = 10
    end
    object Query1INDT: TDateField
      FieldName = 'INDT'
    end
    object Query1IN1DT: TDateField
      FieldName = 'IN1DT'
    end
    object Query1INRST: TWideStringField
      FieldName = 'INRST'
      Size = 30
    end
    object Query1IN1NO: TWideStringField
      FieldName = 'IN1NO'
      Size = 10
    end
    object Query1FINDT: TDateField
      FieldName = 'FINDT'
    end
    object Query1IN1RST: TWideStringField
      FieldName = 'IN1RST'
      Size = 30
    end
    object Query1TOPDT: TDateField
      FieldName = 'TOPDT'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 288
    Top = 152
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 320
    Top = 152
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 352
    Top = 152
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_d'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
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
        Name = 'ORDLINE'
        DataType = ftInteger
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
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'CFMTM'
        DataType = ftDateTime
      end
      item
        Name = 'SHPD'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'OSQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 384
    Top = 152
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls|*.*|*.*'
    Left = 416
    Top = 152
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 448
    Top = 152
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 480
    Top = 152
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 58738
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          07544269746D6170C28F0100424DC28F01000000000036000000280000007601
          00005B00000001001800000000008C8F01000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C0808080
          808080808080808080808080808080808080C0C0C0FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C08080808080808080808080808080
          80808080808080C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          003D3D3D0000000000000000000000000000000000000000003D3D3D00000080
          80803D3D3D3D3D3D0000003D3D3D000000000000000000000000000000000000
          0000000000000000000000000000003D3D3D0000000000003D3D3D0000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C00000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D0000000000000000
          00000000000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          00000000FEFEFEFEFEFEC0C0C000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          00000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE8080800000008080803D3D3D0000003D3D3D3D3D3D000000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEC0C0C03D3D3D00000000000000000000000000000000000000
          0000808080FEFEFEFEFEFEC0C0C0808080808080808080808080808080808080
          808080808080C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80
          8080808080808080808080808080808080808080808080808080C0C0C0FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C08080800000000000000000
          0000000000000000000000000000000000000000000000000000000000000080
          8080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE80808080808000000000000000000000000000000000
          0000000000000000000000000000000000808080C0C0C0FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000
          0000000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000808080FEFEFEFEFEFEFEFEFE000000000000000000000000000000
          000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFE808080000000000000000000000000000000000000000000000000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFE0000000000000000000000000000
          00000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFE0000000000000000000000000000000000000000000000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000808080FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE3D3D3D0000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000FEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080
          0000000000000000000000000000000000000000000000003D3D3DFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000000000
          000000000000000000808080FEFEFEFEFEFEFEFEFE0000000000000000000000
          00000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000
          0000000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000000000
          00000000000000000000808080FEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEC0C0C000000000000000000000000000000000000000000000000000
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C0000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE80808000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000808080
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE000000000000000000000000000000000000000000000000000000FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D0000000000000000000000
          00000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000
          00000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C000000000000000000000000000000000
          0000000000000000000000000000808080FEFEFEFEFEFEFEFEFE3D3D3D000000
          000000000000000000000000000000000000000000C0C0C0FEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE808080000000000000000000000000000000000000000000
          0000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000003D3D3DFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE3D3D3D00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE808080000000000000000000000000000000000000000000
          000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFE000000
          000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00
          0000000000000000000000000000000000000000000000808080FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFE8080
          80000000000000000000000000000000000000000000000000808080FEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000
          00000000000000808080FEFEFEFEFEFEFEFEFE80808000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000
          00000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FE000000000000000000000000000000000000000000000000FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFE000000000000000000000000000000000000000000000000808080FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000808080
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000
          0000000000000000000000C0C0C0FEFEFEFEFEFEC0C0C0000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0C0C0FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000
          00000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000
          00000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE00000000000000000000000000000000000000000000000080
          8080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D00000000000000
          0000000000000000000000000000000000000000000000000000808080FEFEFE
          FEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000000000
          00000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          000000000000000000000000000000FEFEFEFEFEFEFEFEFE0000000000000000
          0000000000000000000000000000000000000000000000000000000000000080
          80808080808080803D3D3D000000000000000000000000000000000000000000
          0000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C000000000000000000000000000000000
          00000000000000000000000000000000008080808080808080808080803D3D3D
          0000000000000000000000000000000000000000000000000000000000003D3D
          3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000
          000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00
          0000000000000000000000000000000000000000000000808080FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000000000
          000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          00000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000
          0000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          00000000000000000000000000000000FEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000000000000000000000000000FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          00000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000
          000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE00000000000000000000000000000000000000000000000000
          0000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE80808000000000000000000000000000000000000000000000000000
          00000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          808080000000000000000000000000000000000000000000000000C0C0C0FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000000000
          00000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D000000000000000000
          0000000000000000000000000000008080808080808080808080808080808080
          808080808080808080808080808080808080808080803D3D3D00000000000000
          0000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFE000000
          0000000000000000000000000000000000000000000000000000003D3D3DFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000
          0000000000000000000000000000000000000000000000000000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          00000000000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D000000000000000000000000000000
          0000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000808080FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEC0C0C0000000000000000000000000000000000000000000
          000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE3D3D3D000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000000FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000
          0000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE000000000000000000000000000000000000000000000000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D00
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000808080FEFEFEFEFEFE8080
          80000000000000000000000000000000000000000000000000000000808080FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFE3D3D3D0000000000000000000000000000000000000000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          00000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000
          00000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000FEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000000000
          00000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE8080800000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          00000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000
          000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000808080FEFEFEFE
          FEFE808080000000000000000000000000000000000000000000000000808080
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE80808000000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000
          0000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000808080
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D00000000000000000000
          0000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEC0C0C000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000
          00000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE80808000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFE0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FEFEFE
          FEFEFEFEFEFE0000000000000000000000000000000000000000000000000000
          00C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D000000000000000000000000000000
          000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000
          00000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          C0C0C0000000000000000000000000000000000000000000000000C0C0C0FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000
          000000000000000000000000000000000000000000000000808080FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000C0C0C0FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000
          0000000000000000000000000000000000000000000000808080FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE80808000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003D3D
          3DFEFEFEFEFEFEC0C0C000000000000000000000000000000000000000000000
          00003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C00000000000000000000000
          00000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00
          0000000000000000000000000000000000000000000000808080FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE8080800000000000000000000000000000000000000000003D
          3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080
          000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          00000000000000000000000000000000000000000000000000000000808080FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000808080FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE000000000000000000000000000000000000000000000000FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          808080000000000000000000000000000000000000000000000000FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000808080FEFEFEFEFEFE808080000000000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFE000000000000000000000000000000000000000000000000808080FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000000000000000
          000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE808080000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000000000000000
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE000000000000000000000000000000000000000000000000000000FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE80808000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000808080FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C0C0C0FEFEFEFEFEFE8080800000000000000000000000000000
          00000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080
          000000000000000000000000000000000000000000808080FEFEFEFEFEFEFEFE
          FEFEFEFEC0C0C0000000000000000000000000000000000000000000000000FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          00808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000000000000000000000000000000000000000000000000000008080808080
          803D3D3D8080803D3D3D8080808080803D3D3D80808000000000000000000000
          0000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE3D3D3D000000000000000000000000000000000000000000000000
          000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          00000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000
          0000000000000000000000000000000000808080808080808080808080808080
          8080808080808080808080808080800000000000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFE80808000000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE0000000000000000000000000000000000000000003D3D3DFEFEFEFE
          FEFEFEFEFEFEFEFE808080000000000000000000000000000000000000000000
          808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080
          000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE000000000000000000000000000000000000000000000000000000FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000808080808080FEFEFEFEFEFE808080FEFEFEFEFEFEFEFEFEFEFEFE
          8080800000000000000000000000000000000000000000000000000000000000
          00000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000
          0000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFE808080000000000000
          000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE000000000000000000000000000000000000000000000000
          FEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000
          00000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE808080FEFEFEFEFEFEFEFEFEFEFEFE000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000
          0000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE808080000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000000000
          000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE000000000000000000000000000000000000000000000000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000
          0000000000000000000000808080000000000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE3D3D3D000000000000000000000000000000000000000000000000FEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000
          000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFE8080800000
          00000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEC0C0C0C0C0C0808080C0C0C0C0C0C0FEFEFEC0C0
          C0C0C0C0FEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000000000000000
          0000000000000000FEFEFEFEFEFE000000FEFEFE808080808080FEFEFEFEFEFE
          C0C0C0000000808080FEFEFE8080800000008080808080803D3D3DC0C0C0FEFE
          FE000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000003D3D3D000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEC0C0C0000000000000000000000000000000FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C00000000000000000
          00000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000808080FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D0000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80
          8080000000000000000000000000000000000000000000000000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          000000000000000000000000000000FEFEFE0000000000000000000000000000
          00000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE808080000000000000000000000000000000000000000000000000
          C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000
          00000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFE80
          8080000000000000000000000000000000000000000000000000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000000000
          000000000000000000000000FEFEFEFEFEFE000000FEFEFE808080808080FEFE
          FEFEFEFE000000000000808080808080000000C0C0C0FEFEFEFEFEFE80808080
          8080FEFEFE000000000000000000000000000000000000000000808080FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000
          00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE000000000000000000000000000000808080FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFE808080000000000000000000000000000000000000000000000000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000FEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000
          00000000000000000000000000000000FEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000
          00000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000
          0000000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFE
          FEFEFE808080000000000000000000000000000000000000000000FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000
          00000000000000000000000000000000FEFEFEFEFEFE000000FEFEFE80808080
          8080FEFEFE808080808080000000808080808080000000FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000808080FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D00000000000000000000
          0000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          3D3D3D000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000003D3D3DFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C0000000000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE00000000000000000000000000000000000000000000000080
          8080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000000000808080FEFEFEFEFEFE000000000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000
          00000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D
          000000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE000000000000000000000000000000000000000000000000FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D00
          0000000000000000000000000000000000000000FEFEFEFEFEFE000000FEFEFE
          808080808080FEFEFE000000C0C0C0000000808080808080000000FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000FEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C0000000000000000000
          000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEC0C0C0000000000000000000000000808080FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D000000000000000000000000000000
          000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          000000000000000000000000000000000000000000003D3D3DFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEC0C0C0000000000000000000000000000000000000000000
          000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000C0C0C0FEFEFEFEFEFE808080000000000000
          0000000000000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFE0000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000000000
          000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE0000000000000000000000000000000000000000000000003D3D3DFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE3D3D3D000000000000000000000000000000000000
          000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          808080000000000000000000000000000000000000000000FEFEFEFEFEFE0000
          00FEFEFE8080803D3D3D000000808080FEFEFE000000808080808080000000FE
          FEFEFEFEFEFEFEFEC0C0C0FEFEFEFEFEFE000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000808080
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000
          00000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE000000000000000000000000808080FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          00000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE808080000000000000000000000000000000000000000000000000FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000
          00000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000FEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          000000000000000000000000000000000000FEFEFEFEFEFEFEFEFE0000000000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000808080FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000
          00000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE808080000000000000000000000000000000000000000000000000808080
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE808080000000000000000000000000000000000000000000FEFEFEFE
          FEFE000000FEFEFE808080000000000000FEFEFEFEFEFE000000808080808080
          000000808080FEFEFEFEFEFE808080808080FEFEFE0000000000000000000000
          00000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D00
          0000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          00000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE8080800000000000000000000000000000000000000000000000
          00C0C0C0FEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000000000000000
          0000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          008080808080808080808080808080808080808080808080808080808080803D
          3D3D000000000000000000000000000000000000000000000000000000000000
          3D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          00000000000000000000000000000000000000000000C0C0C0FEFEFE00000000
          0000000000000000000000000000000000000000000000000000FEFEFEFEFEFE
          FEFEFEFEFEFE0000000000000000000000000000000000000000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00
          0000000000000000000000000000000000000000000000808080FEFEFEFEFEFE
          FEFEFEFEFEFE8080800000000000000000000000000000000000000000000000
          00C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE808080000000000000000000000000000000000000000000
          FEFEFEFEFEFE000000FEFEFE808080000000FEFEFEFEFEFEFEFEFE0000008080
          80FEFEFE808080000000808080808080000000C0C0C0FEFEFE00000000000000
          0000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000000000000000000000000000000000000000003D3D3D000000FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000808080FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000
          000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000808080FEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000
          000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE3D3D3D0000000000000000000000000000000000
          00000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000FEFEFE3D3D3D
          0000000000000000000000000000000000000000000000003D3D3DFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE0000000000000000000000000000000000000000003D3D3DFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000
          000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000
          00000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C0FEFEFEFEFEFEFEFEFEFEFEFE000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE000000000000000000000000000000000000000000000000000000000000FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000
          00000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFE0000000000000000
          00000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000
          0000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE000000000000000000000000000000000000000000000000FEFE
          FE000000000000000000000000000000000000000000000000000000808080FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000FEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000
          00000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          00808080FEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000000000000000
          0000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080
          803D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000
          0000000000000000000000000000000000000000000000000000000000FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000
          00000000000000000000000000000000FEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          00000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000
          000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          00003D3D3D000000000000000000000000000000000000000000000000000000
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          00000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000000000
          000000000000808080FEFEFEFEFEFE8080800000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80
          8080000000000000000000000000000000000000000000000000C0C0C0FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000808080FEFEFEFEFEFEFEFEFEFEFEFEC0C0C0000000000000000000
          000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000808080FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE8080800000000000000000000000000000000000000000000000
          00000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEC0C0C0808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          3D3D3D0000000000000000000000000000000000000000000000000000000000
          00808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D00
          0000000000000000000000000000000000000000808080FEFEFEFEFEFE000000
          000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          00000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C00000000000000000000000
          00000000000000000000000000FEFEFEFEFEFE00000000000000000000000000
          00000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFE8080800000000000000000000000000000000000000000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000
          00000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE000000000000000000000000000000000000000000000000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE80808000000000000000000000000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE00000000000000000000000000000000000000000000000000000000
          0000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          808080000000000000000000000000000000000000000000000000FEFEFE8080
          80000000000000000000000000000000000000000000000000FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000808080808080000000000000000000
          000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          00000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00
          0000000000000000000000000000000000000000000000808080FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE80808000000000000000000000000000000000000000000000
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE000000000000000000000000000000000000000000000000
          0000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE000000000000000000000000000000000000000000000000C0
          C0C0808080000000000000000000000000000000000000000000808080FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE000000000000000000000000000000000000000000000000FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE0000000000000000000000000000000000000000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D
          0000000000000000000000000000000000000000008080808080800000000000
          00000000000000000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000
          0000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFE8080800000000000000000000000000000000000000000003D3D3DFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE3D3D3D000000000000000000000000000000000000
          0000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C00000000000000000000000000000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000000000
          00000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE3D3D3D000000000000000000000000000000000000
          000000808080000000000000000000000000000000000000000000000000C0C0
          C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000808080FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE8080800000000000000000000000000000000000000000003D3D3D3D3D3D00
          0000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D0000000000000000000000
          000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          0000000000000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEC0C0C000000000000000000000000000000000000000000000
          0000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEC0C0C00000000000000000000000000000000000
          00000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000808080FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000000000
          0000000000000000000000000000000000000000000000000000808080FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000000000000000000000
          0000000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE0000000000000000000000000000000000000000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000808080FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000
          0000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000
          0000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000C0C0C0FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000
          0000000000000000000000000000000000000000000000000000000000003D3D
          3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          000000000000000000000000000000000000000000000000808080FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEC0C0C00000000000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000808080FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C0000000
          000000000000000000000000000000000000000000000000000000C0C0C0FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00
          0000000000000000000000000000000000000000000000000000C0C0C0FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000
          00000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000
          000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000808080
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000
          00000000000000000000000000000000000000000000000000000000000000FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEC0C0C080808080808000000000000000000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE0000000000000000000000000000000000000000000000000000
          00000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE00000000000000000000000000000000000000000000000000000000000000
          00003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080
          000000000000000000000000000000000000000000000000000000808080FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D00000000
          0000000000000000000000000000000000000000000000C0C0C0FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000
          000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          00000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE000000000000000000000000000000000000000000000000
          000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFE0000000000
          00000000000000000000000000000000000000000000000000000000000000FE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C0
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE3D3D3D00000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE80808000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE8080800000000000000000000000000000000000000000
          00000000000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000000000
          000000000000000000000000000000000000003D3D3DFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC0
          C0C0000000000000000000000000000000000000000000000000000000000000
          0000000000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000808080FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80
          8080000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE80808000000000000000000000000000000000
          0000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000
          0000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE0000000000000000000000000000000000000000000000000000
          00000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000003D3D3DFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFE0000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003D3D3DFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000
          0000000000000000000000000000000000000000003D3D3DFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003D3D3D808080FEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000
          000000000000000000000000000000000000000000000000808080FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000808080FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE3D3D3D00000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FE3D3D3D00000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D00000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000003D3D3DC0C0C0FEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE80808000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEC0C0C000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3D3D3D0000000000
          00000000000000000000000000000000000000000000000000808080FEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFE0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000003D3D3DFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
          000000000000000000000000000000000000000000000000003D3D3DFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE0000000000000000000000000000000000000000000000008080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEC0C0C0000000000000000000000000000000
          000000000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE808080000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          8080803D3D3D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000808080FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE808080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE808080000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808000
          0000000000000000000000000000000000000000000000000000000000FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFE000000000000000000000000000000000000000000000000000000FEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000808080FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000000000000000
          00000000000000000000000000000000000000808080FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEC0C0C0C0C0C0C0C0C0FEFEFE808080808080808080C0C0C080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8080808080808080808080808080808080808080808080FEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE8080808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8080808080808080808080C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEC0C0C08080808080808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8080808080C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          C0C0C08080803D3D3D8080808080808080808080808080808080808080808080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          80808080808080808080808080808080808080808080FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFE8080808080808080808080808080808080808080808080808080
          80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFE808080808080808080808080808080808080
          808080808080C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808080808080
          8080808080808080808080808080808080808080808080C0C0C0FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE80808080
          8080000000000000000000000000000000000000000000000000000000808080
          808080C0C0C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE808080808080000000000000
          000000000000000000000000000000808080808080FEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFE0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFE0000}
        mmHeight = 7408
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 53711
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PRODUCTION SUMMARY & INSPECTION REQUISITION  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 3440
        mmTop = 7673
        mmWidth = 113750
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory Name:     PH Garment Mfg. Co. Ltd            '#65288' '#27803#24646#21046#34915#24288' '#65289'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 103188
        mmTop = 16933
        mmWidth = 67469
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Division: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 3440
        mmTop = 20638
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '24  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2582
        mmLeft = 18521
        mmTop = 20638
        mmWidth = 3556
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vendor: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 3440
        mmTop = 24342
        mmWidth = 8594
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '                 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2582
        mmLeft = 18521
        mmTop = 24342
        mmWidth = 10075
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 3440
        mmTop = 28046
        mmWidth = 3979
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QA Dept  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2582
        mmLeft = 18521
        mmTop = 28046
        mmWidth = 9652
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Attn: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 3440
        mmTop = 31750
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Kenny/Enzo  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2582
        mmLeft = 18521
        mmTop = 31750
        mmWidth = 13208
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Frm: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 3440
        mmTop = 35454
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Candy/Stellar/Kevin  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2582
        mmLeft = 18521
        mmTop = 35454
        mmWidth = 20997
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CC: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 3440
        mmTop = 39158
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Peter  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2582
        mmLeft = 18521
        mmTop = 39158
        mmWidth = 6477
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory Contact: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 103188
        mmTop = 20638
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stellar Yip   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2646
        mmLeft = 127794
        mmTop = 20638
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tel#: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 103188
        mmTop = 24342
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0769 - 86617980 - 6810     '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2646
        mmLeft = 127794
        mmTop = 24342
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fax#: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 103188
        mmTop = 28046
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0769 - 86609449  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2646
        mmLeft = 127794
        mmTop = 28046
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory Address: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 103188
        mmTop = 31750
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26481#33694#24066' '#30707#40845#37806' '#26032#32173#33457#22290#24037#26989#21312'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2646
        mmLeft = 127794
        mmTop = 31750
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27803#24646#21046#34915#24288'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2646
        mmLeft = 127794
        mmTop = 35454
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Country of origin: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 103188
        mmTop = 39158
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'China  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 2646
        mmLeft = 127794
        mmTop = 39158
        mmWidth = 7144
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 14817
        mmLeft = 1588
        mmTop = 44186
        mmWidth = 280723
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Season '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 2381
        mmTop = 45244
        mmWidth = 6816
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Warn PO#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 11906
        mmTop = 45244
        mmWidth = 9483
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 36513
        mmTop = 45244
        mmWidth = 4741
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Color  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 46831
        mmTop = 45244
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Order '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 55298
        mmTop = 45244
        mmWidth = 5334
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Plan  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 64294
        mmTop = 45244
        mmWidth = 4784
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AC Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 72231
        mmTop = 45244
        mmWidth = 7324
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ship  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 84402
        mmTop = 45244
        mmWidth = 4911
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 55298
        mmTop = 47890
        mmWidth = 3471
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ship  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 64294
        mmTop = 47890
        mmWidth = 4911
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 64294
        mmTop = 50536
        mmWidth = 3979
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mode  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 84402
        mmTop = 47890
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ship  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 94192
        mmTop = 45244
        mmWidth = 4911
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 94192
        mmTop = 47890
        mmWidth = 3260
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bulk  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 101865
        mmTop = 45244
        mmWidth = 4868
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'fabric  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 101865
        mmTop = 47890
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/trim  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 101865
        mmTop = 50536
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'arrival  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 101865
        mmTop = 53181
        mmWidth = 6308
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Foam  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 110596
        mmTop = 45244
        mmWidth = 5757
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'cup  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 110596
        mmTop = 47890
        mmWidth = 4191
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'arrival  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 110596
        mmTop = 50536
        mmWidth = 6308
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 110596
        mmTop = 53181
        mmWidth = 4657
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 101865
        mmTop = 55827
        mmWidth = 4657
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 118534
        mmTop = 45244
        mmWidth = 5038
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'cut  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 118534
        mmTop = 47890
        mmWidth = 3683
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/knit  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 118534
        mmTop = 50536
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 118534
        mmTop = 53446
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'End  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 126207
        mmTop = 45244
        mmWidth = 4403
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'cut  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 126207
        mmTop = 47890
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/knit  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 126207
        mmTop = 50536
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 126207
        mmTop = 53181
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Output  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 134144
        mmTop = 45244
        mmWidth = 6900
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'as of  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 134144
        mmTop = 47890
        mmWidth = 5165
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'report  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 134144
        mmTop = 50536
        mmWidth = 6138
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 134144
        mmTop = 53181
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 166688
        mmTop = 45244
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'wash  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 166688
        mmTop = 47890
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 166688
        mmTop = 50536
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'End  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 174361
        mmTop = 45244
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'wash  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 174361
        mmTop = 47890
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 174361
        mmTop = 50536
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Output  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 182298
        mmTop = 45244
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'as of  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 182298
        mmTop = 47890
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'report  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 182298
        mmTop = 50536
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 182298
        mmTop = 53181
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 142346
        mmTop = 45244
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'sew  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 142346
        mmTop = 47890
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/link  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 142346
        mmTop = 50536
        mmWidth = 4614
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 142346
        mmTop = 53181
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'End  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 150019
        mmTop = 45244
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'sew  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 150019
        mmTop = 47890
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label602'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/link  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 150019
        mmTop = 50536
        mmWidth = 4614
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 150019
        mmTop = 53181
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Output  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 157957
        mmTop = 45244
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'as of  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 157957
        mmTop = 47890
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'report  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 157957
        mmTop = 50536
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 157957
        mmTop = 53181
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 191030
        mmTop = 45244
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'pack  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 191030
        mmTop = 47890
        mmWidth = 5038
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 191030
        mmTop = 50536
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'End  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 198702
        mmTop = 45244
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'pack  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 198702
        mmTop = 47890
        mmWidth = 5038
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 198702
        mmTop = 50536
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Output  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 206111
        mmTop = 45244
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'as of  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 206111
        mmTop = 47890
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'report  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 206111
        mmTop = 50536
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 206111
        mmTop = 53181
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No of  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 214313
        mmTop = 45244
        mmWidth = 5588
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Insp  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 214313
        mmTop = 47890
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '1st  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 214313
        mmTop = 50536
        mmWidth = 3556
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/2nd  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 214313
        mmTop = 53181
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/3rd  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 214313
        mmTop = 55827
        mmWidth = 4276
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OPA  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 221457
        mmTop = 45244
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Insp  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 221457
        mmTop = 47890
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 221457
        mmTop = 50536
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'In-line  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 227807
        mmTop = 45244
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 227807
        mmTop = 47890
        mmWidth = 4657
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'result  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 235215
        mmTop = 47890
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Inspection  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 235215
        mmTop = 45244
        mmWidth = 9948
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No of  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 246328
        mmTop = 45244
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Insp  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 246328
        mmTop = 47890
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label1001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '1st  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 246328
        mmTop = 50536
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/2nd  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 246328
        mmTop = 53181
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/3rd  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 246328
        mmTop = 55827
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Final  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 253471
        mmTop = 45244
        mmWidth = 5207
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 253471
        mmTop = 47890
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'result  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 260086
        mmTop = 47890
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Inspection  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 260086
        mmTop = 45244
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label119'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Top  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 271992
        mmTop = 45244
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label120'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'sample  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 271992
        mmTop = 47890
        mmWidth = 7112
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label121'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'approval  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 271992
        mmTop = 50536
        mmWidth = 8424
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label122'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2117
        mmLeft = 271992
        mmTop = 53181
        mmWidth = 4763
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 11113
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 35454
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 46038
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 52917
        mmTop = 44450
        mmWidth = 2646
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 61648
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 71438
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 81756
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 92075
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 101071
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 109802
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 245534
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 252678
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 259292
        mmTop = 44450
        mmWidth = 2646
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 271198
        mmTop = 44450
        mmWidth = 2646
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 205317
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 213519
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 220663
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 227013
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 234421
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 157163
        mmTop = 44450
        mmWidth = 2646
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 165894
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 173567
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 181505
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 190236
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine42: TppLine
        UserName = 'Line42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 197909
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine51: TppLine
        UserName = 'Line51'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 117740
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine52: TppLine
        UserName = 'Line52'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 125413
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine53: TppLine
        UserName = 'Line53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 133350
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine54: TppLine
        UserName = 'Line54'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 141552
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLine55: TppLine
        UserName = 'Line55'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 149225
        mmTop = 44186
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OPA Factory:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 202407
        mmTop = 16933
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OPA Factory Contact: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 194734
        mmTop = 20638
        mmWidth = 22606
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tel#: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 211667
        mmTop = 24342
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fax#: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 211138
        mmTop = 28046
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OPA Address: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 202407
        mmTop = 31750
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label128'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date of submission: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 196321
        mmTop = 39158
        mmWidth = 20902
        BandType = 0
      end
      object dt001: TppLabel
        UserName = 'dt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2667
        mmLeft = 219869
        mmTop = 39158
        mmWidth = 20913
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 0
        mmWidth = 280723
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SEASON'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 2117
        mmTop = 794
        mmWidth = 7451
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUSTPO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 11906
        mmTop = 794
        mmWidth = 14139
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 36513
        mmTop = 794
        mmWidth = 4995
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ACOL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 46831
        mmTop = 794
        mmWidth = 3217
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ACDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yy-MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 72231
        mmTop = 794
        mmWidth = 4911
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHPM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 82550
        mmTop = 794
        mmWidth = 5038
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHPTO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 92604
        mmTop = 794
        mmWidth = 6096
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 56886
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 66675
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BARDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 101865
        mmTop = 794
        mmWidth = 6096
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FARDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 110596
        mmTop = 794
        mmWidth = 6011
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSTDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 118534
        mmTop = 794
        mmWidth = 6011
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CENDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 126207
        mmTop = 794
        mmWidth = 6138
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText102'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RPTDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 134144
        mmTop = 794
        mmWidth = 6011
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SSTDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 142346
        mmTop = 794
        mmWidth = 5927
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SENDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 150019
        mmTop = 794
        mmWidth = 6054
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RPT1DT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 157957
        mmTop = 794
        mmWidth = 6985
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WSTDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 166688
        mmTop = 794
        mmWidth = 6392
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WENDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 174361
        mmTop = 794
        mmWidth = 6519
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RPT2DT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 182298
        mmTop = 794
        mmWidth = 6985
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PSTDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 191030
        mmTop = 794
        mmWidth = 5927
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PENDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 198702
        mmTop = 794
        mmWidth = 6054
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RPT3DT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 206111
        mmTop = 794
        mmWidth = 6985
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'INDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 221457
        mmTop = 794
        mmWidth = 6604
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'IN1DT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 227807
        mmTop = 794
        mmWidth = 6858
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FINDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 253471
        mmTop = 794
        mmWidth = 5842
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TOPDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 271992
        mmTop = 794
        mmWidth = 6858
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'INNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 214313
        mmTop = 794
        mmWidth = 6096
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'INRST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 235215
        mmTop = 794
        mmWidth = 6096
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'IN1NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 246328
        mmTop = 794
        mmWidth = 6096
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'IN1RST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 260086
        mmTop = 794
        mmWidth = 6096
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 11113
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 35454
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 46038
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 52917
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 61648
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 71438
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 81756
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 92075
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 101071
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 109802
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 220663
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 227013
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine32: TppLine
        UserName = 'Line203'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 234421
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line204'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 245534
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine34: TppLine
        UserName = 'Line205'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 252678
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine35: TppLine
        UserName = 'Line206'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 259292
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine36: TppLine
        UserName = 'Line207'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 271198
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line208'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 157163
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line209'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 165894
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine45: TppLine
        UserName = 'Line2010'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line2011'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 181505
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line2012'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 190236
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine48: TppLine
        UserName = 'Line2013'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 197909
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine49: TppLine
        UserName = 'Line2014'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 213519
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine50: TppLine
        UserName = 'Line2015'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 205317
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine56: TppLine
        UserName = 'Line2016'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 117740
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine57: TppLine
        UserName = 'Line2017'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 125413
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine58: TppLine
        UserName = 'Line2018'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 133350
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine59: TppLine
        UserName = 'Line2019'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 141552
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine60: TppLine
        UserName = 'Line2020'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 149225
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppLabel23: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Standard inspection requirement  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 1852
        mmTop = 2117
        mmWidth = 39582
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 52123
        mmTop = 2646
        mmWidth = 8763
        BandType = 7
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '1) 6000 pcs or above - 2 in-line inspection (21 days and 14 days' +
          ' prior to AC date)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 3440
        mmTop = 7408
        mmWidth = 83058
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '2) 5999 pcs or below - 1 in-line inspection (14 days prior to AC' +
          ' date)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 3440
        mmTop = 11113
        mmWidth = 70231
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '3)                                  final inspection   (2 days p' +
          'rior to AC date)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 3440
        mmTop = 14817
        mmWidth = 65871
        BandType = 7
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '4) Factory must have complete garments for in-line inspection   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 3440
        mmTop = 18521
        mmWidth = 64474
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
