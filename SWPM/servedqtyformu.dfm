object frmservedqty: Tfrmservedqty
  Left = 191
  Top = 114
  Caption = 'QN - Served Qty'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 108
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 862
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
      Width = 27
      Height = 13
      Caption = 'RWO'
    end
    object Label3: TLabel
      Left = 328
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label4: TLabel
      Left = 408
      Top = 8
      Width = 23
      Height = 13
      Caption = 'QN#'
    end
    object Label5: TLabel
      Left = 512
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
      Left = 264
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
      Left = 448
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
      Left = 544
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
      Left = 48
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
    object lblcs: TLabel
      Left = 16
      Top = 40
      Width = 63
      Height = 13
      Caption = 'The first time '
    end
    object Label9: TLabel
      Left = 136
      Top = 40
      Width = 60
      Height = 13
      Caption = 'Served Date'
    end
    object DateEdit1: TDateEdit
      Left = 200
      Top = 40
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 320
      Top = 40
      Width = 137
      Height = 21
      Date = 39098.703133310200000000
      Time = 39098.703133310200000000
      TabOrder = 1
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = -41
    Width = 108
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 565
    ExplicitWidth = 862
    object Label8: TLabel
      Left = 552
      Top = 16
      Width = 3
      Height = 13
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Prior'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 80
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Next'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 144
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
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 224
      Top = 8
      Width = 81
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 108
    Height = 500
    Align = alClient
    AllowedOperations = [alopInsertEh, alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
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
        FieldName = 'PSIZ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'RWO Qty'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'PQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN Qty'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'TQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Picked Qty'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'TTQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Transit 1 Qty'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'T1B'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Served|Total '
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'Q01'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Served|Qty'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CMPT1B'
        Footers = <>
        Title.Caption = 'Complete'
        Width = 51
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo_t1bqty'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 320
    Top = 32
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 376
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 348
    Top = 32
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 404
    Top = 32
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 432
    Top = 32
  end
end
