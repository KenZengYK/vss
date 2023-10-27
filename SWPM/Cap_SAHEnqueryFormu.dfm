object frmCAP_SAHEnquery: TfrmCAP_SAHEnquery
  Left = 0
  Top = 0
  Caption = 'Cust Styles with SAH & Qty'
  ClientHeight = 373
  ClientWidth = 837
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 8
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 40
      Top = 14
      Width = 29
      Height = 13
      Caption = 'Year: '
    end
    object BitBtn1: TBitBtn
      Left = 256
      Top = 10
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
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object se1: TSpinEdit
      Left = 75
      Top = 13
      Width = 86
      Height = 22
      MaxValue = 2030
      MinValue = 2021
      TabOrder = 1
      Value = 2022
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 837
    Height = 291
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 40
    ExplicitTop = 48
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Fty'
        DataBinding.FieldName = 'tplant'
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Cust'
        DataBinding.FieldName = 'cust'
        HeaderAlignmentHorz = taCenter
        Width = 55
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Cust Style'
        DataBinding.FieldName = 'cstyle'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Prod'#13#10'Cat.'
        DataBinding.FieldName = 'flag6'
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'SAH'
        DataBinding.FieldName = 'sah'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.0000'
        HeaderAlignmentHorz = taCenter
        Width = 55
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Jan '#13#10'T3 Qty'
        DataBinding.FieldName = 'tw01'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = 'Jan'#13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah01'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = 'Feb'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw02'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah02'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        Caption = 'Mar'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw03'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column11: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah03'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column12: TcxGridDBColumn
        Caption = 'Apr'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw04'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column13: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah04'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column14: TcxGridDBColumn
        Caption = 'May'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw05'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column15: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah05'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column16: TcxGridDBColumn
        Caption = 'Jun'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw06'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column17: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah06'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column18: TcxGridDBColumn
        Caption = 'Jul'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw07'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column19: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah07'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column20: TcxGridDBColumn
        Caption = 'Aug'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw08'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column21: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah08'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column22: TcxGridDBColumn
        Caption = 'Sep'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw09'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column23: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah09'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column24: TcxGridDBColumn
        Caption = 'Oct'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw10'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column25: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah10'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column26: TcxGridDBColumn
        Caption = 'Nov'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw11'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column27: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah11'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column28: TcxGridDBColumn
        Caption = 'Dec'#13#10'T3 Qty'
        DataBinding.FieldName = 'tw12'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1Column29: TcxGridDBColumn
        Caption = #13#10'aT3 Qty'
        DataBinding.FieldName = 'tsah12'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 332
    Width = 837
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 136
    ExplicitTop = 256
    ExplicitWidth = 185
    object BitBtn13: TBitBtn
      Left = 34
      Top = 6
      Width = 75
      Height = 27
      Caption = 'Export'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn13Click
    end
    object BitBtn11: TBitBtn
      Left = 109
      Top = 6
      Width = 76
      Height = 27
      Caption = 'Exit'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkClose
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select tplant,cust,cstyle,flag6,sah,tw01,tsah01,tw02,tsah02,tw03' +
      ',tsah03,tw04,tsah04,tw05,tsah05,tw06,tsah06,tw07,tsah07,tw08,tsa' +
      'h08,tw09,tsah09,tw10,tsah10,tw11,tsah11,tw12,tsah12'#13#10'from tbl_ca' +
      'p_oa_style_new where yr=2022 and oldnew='#39'Flow'#39' order by tplant,c' +
      'ust,cstyle'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
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
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'ARTNO'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'AT3DT'
        DataType = ftDate
      end
      item
        Name = 'SAH'
        DataType = ftFloat
      end
      item
        Name = 'QTY1'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 144
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 88
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 416
    Top = 80
  end
end
