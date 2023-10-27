object frmtrans_rwo: Tfrmtrans_rwo
  Left = 192
  Top = 112
  Caption = 'Transit Flow by RWO'
  ClientHeight = 0
  ClientWidth = 108
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
    Width = 108
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 862
    object lblcs: TLabel
      Left = 24
      Top = 32
      Width = 63
      Height = 13
      Caption = 'The first time '
    end
    object Label6: TLabel
      Left = 112
      Top = 32
      Width = 61
      Height = 13
      Caption = 'Transit Date '
    end
    object Label7: TLabel
      Left = 424
      Top = 32
      Width = 26
      Height = 13
      Caption = 'PDN '
    end
    object Label8: TLabel
      Left = 608
      Top = 32
      Width = 53
      Height = 13
      Caption = 'Manifest # '
    end
    object Label9: TLabel
      Left = 288
      Top = 32
      Width = 26
      Height = 13
      Caption = 'Time '
    end
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Project '
    end
    object Label2: TLabel
      Left = 160
      Top = 8
      Width = 32
      Height = 13
      Caption = 'WO # '
    end
    object Label3: TLabel
      Left = 296
      Top = 8
      Width = 40
      Height = 13
      Caption = 'RWO # '
    end
    object Label4: TLabel
      Left = 424
      Top = 8
      Width = 66
      Height = 13
      Caption = 'Style Clr Code'
    end
    object DBText1: TDBText
      Left = 64
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
      Left = 200
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
      Left = 344
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
      Left = 504
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
    object Label10: TLabel
      Left = 560
      Top = 8
      Width = 49
      Height = 13
      Caption = 'RWO Qty '
    end
    object DBText5: TDBText
      Left = 616
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'QTY'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ltype: TLabel
      Left = 792
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object DateEdit1: TDateEdit
      Left = 176
      Top = 32
      Width = 105
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object Edit1: TComboBox
      Left = 456
      Top = 32
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnEnter = Edit1Enter
    end
    object Edit2: TComboBox
      Left = 664
      Top = 32
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnEnter = Edit2Enter
    end
    object TimeEdit1: TcxTimeEdit
      Left = 312
      Top = 32
      EditValue = 0d
      TabOrder = 3
      Width = 81
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 108
    Height = 510
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
    FooterRowCount = 1
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'PSIZ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'RWO Qty'
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Flow 1|Picked Qty'
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TTQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Flow 1|T1 Qty'
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TSQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Flow 2|Sewn Qty'
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TPQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Flow 2|T2 Qty'
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TEQTY'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TFQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'Q1'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CMPF'
        Footers = <>
        Title.Caption = 'CMP'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = -41
    Width = 108
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 567
    ExplicitWidth = 862
    object Label5: TLabel
      Left = 512
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Prior'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
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
      Caption = 'Next'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphRight
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
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 3
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_rtrs2'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
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
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'CUP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SIZ'
        DataType = ftString
        Size = 10
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
        Name = 'TQTY'
        DataType = ftInteger
      end
      item
        Name = 'TTQTY'
        DataType = ftInteger
      end
      item
        Name = 'TSQTY'
        DataType = ftInteger
      end
      item
        Name = 'TPQTY'
        DataType = ftInteger
      end
      item
        Name = 'TFQTY'
        DataType = ftInteger
      end
      item
        Name = 'TEQTY'
        DataType = ftInteger
      end
      item
        Name = 'TIQTY'
        DataType = ftInteger
      end
      item
        Name = 'CMPF'
        DataType = ftBoolean
      end
      item
        Name = 'CMPE'
        DataType = ftBoolean
      end
      item
        Name = 'CMPI'
        DataType = ftBoolean
      end
      item
        Name = 'TTYPE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Q1'
        DataType = ftInteger
      end
      item
        Name = 'Q2'
        DataType = ftInteger
      end
      item
        Name = 'Q3'
        DataType = ftInteger
      end
      item
        Name = 'Q4'
        DataType = ftInteger
      end
      item
        Name = 'Q5'
        DataType = ftInteger
      end
      item
        Name = 'Q6'
        DataType = ftInteger
      end
      item
        Name = 'Q7'
        DataType = ftInteger
      end
      item
        Name = 'Q8'
        DataType = ftInteger
      end
      item
        Name = 'Q9'
        DataType = ftInteger
      end
      item
        Name = 'Q10'
        DataType = ftInteger
      end
      item
        Name = 'DT1'
        DataType = ftDate
      end
      item
        Name = 'DT2'
        DataType = ftDate
      end
      item
        Name = 'DT3'
        DataType = ftDate
      end
      item
        Name = 'DT4'
        DataType = ftDate
      end
      item
        Name = 'DT5'
        DataType = ftDate
      end
      item
        Name = 'DT6'
        DataType = ftDate
      end
      item
        Name = 'DT7'
        DataType = ftDate
      end
      item
        Name = 'DT8'
        DataType = ftDate
      end
      item
        Name = 'DT9'
        DataType = ftDate
      end
      item
        Name = 'DT10'
        DataType = ftDate
      end
      item
        Name = 'TM1'
        DataType = ftTime
      end
      item
        Name = 'TM2'
        DataType = ftTime
      end
      item
        Name = 'TM3'
        DataType = ftTime
      end
      item
        Name = 'TM4'
        DataType = ftTime
      end
      item
        Name = 'TM5'
        DataType = ftTime
      end
      item
        Name = 'TM6'
        DataType = ftTime
      end
      item
        Name = 'TM7'
        DataType = ftTime
      end
      item
        Name = 'TM8'
        DataType = ftTime
      end
      item
        Name = 'TM9'
        DataType = ftTime
      end
      item
        Name = 'TM10'
        DataType = ftTime
      end
      item
        Name = 'PDN1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PDN2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PDN3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PDN4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PDN5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PDN6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PDN7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PDN8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PDN9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PDN10'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN10'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FLG'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;j_no;j2_job;rwo;acol;ttype;did'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 72
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 96
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 136
    Top = 96
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 96
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 96
  end
end
