object frm3defects: Tfrm3defects
  Left = 0
  Top = 0
  Caption = #22235#22823#29781#30133'('#32218#38957'/'#27745#28460'/'#27833#28460'/'#27700#21360#25110#27700#30165#36321')'#20998#26512
  ClientHeight = 541
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 97
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 806
    object Label1: TLabel
      Left = 96
      Top = 8
      Width = 27
      Height = 13
      Caption = 'From '
    end
    object Label2: TLabel
      Left = 264
      Top = 8
      Width = 15
      Height = 13
      Caption = 'To '
    end
    object Label3: TLabel
      Left = 95
      Top = 35
      Width = 27
      Height = 13
      Caption = 'From '
    end
    object Label4: TLabel
      Left = 264
      Top = 35
      Width = 15
      Height = 13
      Caption = 'To '
    end
    object Label5: TLabel
      Left = 95
      Top = 64
      Width = 27
      Height = 13
      Caption = 'From '
    end
    object Label6: TLabel
      Left = 264
      Top = 64
      Width = 15
      Height = 13
      Caption = 'To '
    end
    object Label7: TLabel
      Left = 432
      Top = 35
      Width = 77
      Height = 13
      Caption = 'Customer Code '
    end
    object xh1: TCheckBox
      Left = 32
      Top = 8
      Width = 49
      Height = 17
      Caption = 'Daily'
      TabOrder = 0
      OnClick = xh1Click
    end
    object DateEdit1: TRzDateTimeEdit
      Left = 128
      Top = 8
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object DateEdit2: TRzDateTimeEdit
      Left = 285
      Top = 8
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 2
    end
    object xh2: TCheckBox
      Left = 32
      Top = 35
      Width = 57
      Height = 17
      Caption = 'Weekly'
      TabOrder = 3
      OnClick = xh2Click
    end
    object BitBtn1: TBitBtn
      Left = 617
      Top = 30
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
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object SpinEdit1: TSpinEdit
      Left = 128
      Top = 36
      Width = 66
      Height = 22
      MaxValue = 2030
      MinValue = 2015
      TabOrder = 5
      Value = 2016
    end
    object SpinEdit2: TSpinEdit
      Left = 200
      Top = 36
      Width = 49
      Height = 22
      MaxValue = 53
      MinValue = 1
      TabOrder = 6
      Value = 1
    end
    object SpinEdit3: TSpinEdit
      Left = 285
      Top = 36
      Width = 66
      Height = 22
      MaxValue = 2030
      MinValue = 2015
      TabOrder = 7
      Value = 2016
    end
    object SpinEdit4: TSpinEdit
      Left = 357
      Top = 36
      Width = 49
      Height = 22
      MaxValue = 53
      MinValue = 1
      TabOrder = 8
      Value = 1
    end
    object xh3: TCheckBox
      Left = 32
      Top = 64
      Width = 57
      Height = 17
      Caption = 'Monthly'
      TabOrder = 9
      OnClick = xh3Click
    end
    object SpinEdit5: TSpinEdit
      Left = 128
      Top = 65
      Width = 66
      Height = 22
      MaxValue = 2030
      MinValue = 2015
      TabOrder = 10
      Value = 2016
    end
    object SpinEdit6: TSpinEdit
      Left = 200
      Top = 65
      Width = 49
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 11
      Value = 1
    end
    object SpinEdit7: TSpinEdit
      Left = 285
      Top = 65
      Width = 66
      Height = 22
      MaxValue = 2030
      MinValue = 2015
      TabOrder = 12
      Value = 2016
    end
    object SpinEdit8: TSpinEdit
      Left = 357
      Top = 65
      Width = 49
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 13
      Value = 1
    end
    object BitBtn4: TBitBtn
      Left = 712
      Top = 30
      Width = 73
      Height = 25
      Caption = 'OK1'
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
      TabOrder = 14
      Visible = False
      OnClick = BitBtn4Click
    end
    object Edit1: TEdit
      Left = 512
      Top = 35
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 15
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 97
    Width = 963
    Height = 403
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 806
    ExplicitHeight = 395
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxView1: TcxGridDBBandedTableView
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
      Bands = <
        item
          Caption = 'Date'
        end
        item
          Caption = 'Week'
        end
        item
          Caption = 'Fty'
        end
        item
          Caption = 'Ws'
        end
        item
          Caption = 'Qty'
        end
        item
          Caption = #25972#39636#29781#30133#25976
        end
        item
          Caption = 'TH001 - '#32218#38957
        end
        item
          Caption = 'CL001 - '#27745#28460
        end
        item
          Caption = 'CL002 - '#27833#28460
        end
        item
          Caption = 'CL003 - '#27700#21360#25110#27700#30165#36321
        end>
      object cxView1DT: TcxGridDBBandedColumn
        Caption = ' '
        DataBinding.FieldName = 'DT'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1WK: TcxGridDBBandedColumn
        Caption = ' '
        DataBinding.FieldName = 'WK'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1FTY: TcxGridDBBandedColumn
        Caption = ' '
        DataBinding.FieldName = 'FTY'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 40
        OnCompareRowValuesForCellMerging = cxView1FTYCompareRowValuesForCellMerging
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1WS: TcxGridDBBandedColumn
        Caption = ' '
        DataBinding.FieldName = 'WS'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Qty: TcxGridDBBandedColumn
        Caption = ' '
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TDEF: TcxGridDBBandedColumn
        Caption = ' '
        DataBinding.FieldName = 'TDEF'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1D1QTY: TcxGridDBBandedColumn
        Caption = #29781#30133#25976
        DataBinding.FieldName = 'D1QTY'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1D1B: TcxGridDBBandedColumn
        Caption = #27604#29575'%'
        DataBinding.FieldName = 'D1B'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1D1R: TcxGridDBBandedColumn
        Caption = #25490#21517
        DataBinding.FieldName = 'D1R'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 6
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1D2QTY: TcxGridDBBandedColumn
        Caption = #29781#30133#25976
        DataBinding.FieldName = 'D2QTY'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1D2B: TcxGridDBBandedColumn
        Caption = #27604#29575'%'
        DataBinding.FieldName = 'D2B'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1D2R: TcxGridDBBandedColumn
        Caption = #25490#21517
        DataBinding.FieldName = 'D2R'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 7
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1D3QTY: TcxGridDBBandedColumn
        Caption = #29781#30133#25976
        DataBinding.FieldName = 'D3QTY'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1D3B: TcxGridDBBandedColumn
        Caption = #27604#29575'%'
        DataBinding.FieldName = 'D3B'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1D3R: TcxGridDBBandedColumn
        Caption = #25490#21517
        DataBinding.FieldName = 'D3R'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 8
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1D4QTY: TcxGridDBBandedColumn
        Caption = #29781#30133#25976
        DataBinding.FieldName = 'D4QTY'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1D4B: TcxGridDBBandedColumn
        Caption = #27604#29575'%'
        DataBinding.FieldName = 'D4B'
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 9
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1D4R: TcxGridDBBandedColumn
        Caption = #25490#21517
        DataBinding.FieldName = 'D4R'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 9
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 500
    Width = 963
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 492
    ExplicitWidth = 806
    object BitBtn2: TBitBtn
      Left = 22
      Top = 6
      Width = 75
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
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 96
      Top = 6
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
    CommandText = 'select * from tbl_aql_temp_3def'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftTimeStamp
      end
      item
        Name = 'DT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FTY'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'D1C'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'D2C'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'D3C'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'D1D'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'D2D'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'D3D'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'D1QTY'
        DataType = ftInteger
      end
      item
        Name = 'D2QTY'
        DataType = ftInteger
      end
      item
        Name = 'D3QTY'
        DataType = ftInteger
      end
      item
        Name = 'D1R'
        DataType = ftInteger
      end
      item
        Name = 'D2R'
        DataType = ftInteger
      end
      item
        Name = 'D3R'
        DataType = ftInteger
      end
      item
        Name = 'D1B'
        DataType = ftSingle
      end
      item
        Name = 'D2B'
        DataType = ftSingle
      end
      item
        Name = 'D3B'
        DataType = ftSingle
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
        Name = 'XH'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'XH1'
        DataType = ftInteger
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'TDEF'
        DataType = ftInteger
      end
      item
        Name = 'D4QTY'
        DataType = ftInteger
      end
      item
        Name = 'D4R'
        DataType = ftInteger
      end
      item
        Name = 'D4B'
        DataType = ftSingle
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    StoreDefs = True
    Left = 544
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 600
    Top = 208
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'FTY'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RPT_CNT'
        DataType = ftInteger
      end
      item
        Name = 'REJ_CNT'
        DataType = ftInteger
      end
      item
        Name = 'REJ_PER'
        DataType = ftFloat
      end
      item
        Name = 'REJ_REASON'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    StoreDefs = True
    Left = 112
    Top = 184
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 192
    Top = 192
  end
end
