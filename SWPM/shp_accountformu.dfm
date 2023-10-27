object frmShp_Account: TfrmShp_Account
  Left = 0
  Top = 0
  Caption = 'Shipment Report - Account'
  ClientHeight = 374
  ClientWidth = 815
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 566
    object Label1: TLabel
      Left = 40
      Top = 8
      Width = 95
      Height = 13
      Caption = 'Transit Date  From  '
    end
    object Label2: TLabel
      Left = 271
      Top = 8
      Width = 18
      Height = 13
      Caption = 'To  '
    end
    object DateEdit1: TRzDateTimeEdit
      Left = 136
      Top = 8
      Width = 121
      Height = 21
      FirstDayOfWeek = fdowMonday
      EditType = etDate
      TabOrder = 0
    end
    object DateEdit2: TRzDateTimeEdit
      Left = 287
      Top = 8
      Width = 121
      Height = 21
      FirstDayOfWeek = fdowMonday
      EditType = etDate
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 456
      Top = 8
      Width = 75
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 815
    Height = 292
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 566
    ExplicitHeight = 196
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1EXFTY: TcxGridDBColumn
        Caption = 'Ex-fty Date'
        DataBinding.FieldName = 'EXFTY'
        HeaderAlignmentHorz = taCenter
        Width = 62
      end
      object cxGrid1DBTableView1ONDT: TcxGridDBColumn
        Caption = 'Transit Date'
        DataBinding.FieldName = 'ONDT'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1INV: TcxGridDBColumn
        Caption = 'Invoice No.'
        DataBinding.FieldName = 'INV'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1CUST: TcxGridDBColumn
        Caption = 'Cust Code'
        DataBinding.FieldName = 'CUST'
        HeaderAlignmentHorz = taCenter
        Width = 55
      end
      object cxGrid1DBTableView1T4QTY: TcxGridDBColumn
        Caption = 'Actual Shpt Qty'
        DataBinding.FieldName = 'T4QTY'
        HeaderAlignmentHorz = taCenter
        Width = 81
      end
      object cxGrid1DBTableView1UPRC55: TcxGridDBColumn
        Caption = 'Unit Price'
        DataBinding.FieldName = 'UPRC55'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.000'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object cxGrid1DBTableView1CURN40: TcxGridDBColumn
        Caption = 'Curr'
        DataBinding.FieldName = 'CURN40'
        HeaderAlignmentHorz = taCenter
        Width = 26
      end
      object cxGrid1DBTableView1TPRC1: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'TPRC1'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
      object cxGrid1DBTableView1EXRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'EXRATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.0000'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1TPRC: TcxGridDBColumn
        Caption = 'Amount (HK$)'
        DataBinding.FieldName = 'TPRC'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 89
      end
      object cxGrid1DBTableView1J_NO: TcxGridDBColumn
        Caption = 'Project No.'
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Width = 68
      end
      object cxGrid1DBTableView1PDN: TcxGridDBColumn
        Caption = 'Manifest No.'
        DataBinding.FieldName = 'PDN'
        HeaderAlignmentHorz = taCenter
        Width = 107
      end
      object cxGrid1DBTableView1SOPNO: TcxGridDBColumn
        Caption = 'SO No.'
        DataBinding.FieldName = 'SOPNO'
        HeaderAlignmentHorz = taCenter
        Width = 48
      end
      object cxGrid1DBTableView1J2_JOB: TcxGridDBColumn
        Caption = 'WO No.'
        DataBinding.FieldName = 'J2_JOB'
        HeaderAlignmentHorz = taCenter
        Width = 52
      end
      object cxGrid1DBTableView1CSTYLE: TcxGridDBColumn
        Caption = 'Cust Style No.'
        DataBinding.FieldName = 'CSTYLE'
        HeaderAlignmentHorz = taCenter
        Width = 132
      end
      object cxGrid1DBTableView1HSNAME: TcxGridDBColumn
        Caption = 'Name of Product'
        DataBinding.FieldName = 'HSNAME'
        HeaderAlignmentHorz = taCenter
        Width = 214
      end
      object cxGrid1DBTableView1UNITPX: TcxGridDBColumn
        Caption = #27599#20214#22577#38364#21934#20729' (HK$)'
        DataBinding.FieldName = 'UNITPX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.000'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 107
      end
      object cxGrid1DBTableView1TTLPX: TcxGridDBColumn
        Caption = #22577#38364#32317#20729' (HK$)'
        DataBinding.FieldName = 'TTLPX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 83
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 333
    Width = 815
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 237
    ExplicitWidth = 566
    object BitBtn5: TBitBtn
      Left = 24
      Top = 6
      Width = 105
      Height = 25
      Caption = 'Export2XLS'
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
      TabOrder = 0
      OnClick = BitBtn5Click
    end
    object BitBtn2: TBitBtn
      Left = 128
      Top = 6
      Width = 81
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
    CommandText = 'select * from tbl_pdn_shpadvice2 where pdn='#39'1710-43-ET'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 160
    Top = 96
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 240
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 96
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 600
    Top = 328
  end
end
