object frmoutstandingsample: Tfrmoutstandingsample
  Left = 0
  Top = 0
  Caption = 'Outstanding Sample Qty without PDN'
  ClientHeight = 411
  ClientWidth = 623
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 623
    Height = 370
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 8
    ExplicitWidth = 250
    ExplicitHeight = 200
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
      object cxGrid1DBTableView1PLINE: TcxGridDBColumn
        Caption = 'Assembly Line'
        DataBinding.FieldName = 'PLINE'
        HeaderAlignmentHorz = taCenter
        Width = 56
      end
      object cxGrid1DBTableView1J_NO: TcxGridDBColumn
        Caption = 'Project No.'
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Width = 81
      end
      object cxGrid1DBTableView1J2_JOB: TcxGridDBColumn
        Caption = 'WO No.'
        DataBinding.FieldName = 'J2_JOB'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1CSTYLE: TcxGridDBColumn
        Caption = 'Cust Style No.'
        DataBinding.FieldName = 'CSTYLE'
        HeaderAlignmentHorz = taCenter
        Width = 122
      end
      object cxGrid1DBTableView1RWO: TcxGridDBColumn
        Caption = 'RWO No.'
        DataBinding.FieldName = 'RWO'
        HeaderAlignmentHorz = taCenter
        Width = 53
      end
      object cxGrid1DBTableView1ACOL: TcxGridDBColumn
        Caption = 'Clr Code'
        DataBinding.FieldName = 'ACOL'
        HeaderAlignmentHorz = taCenter
        Width = 45
      end
      object cxGrid1DBTableView1PSIZ: TcxGridDBColumn
        Caption = 'Size'
        DataBinding.FieldName = 'PSIZ'
        HeaderAlignmentHorz = taCenter
        Width = 42
      end
      object cxGrid1DBTableView1SP: TcxGridDBColumn
        Caption = 'Sample Qty'
        DataBinding.FieldName = 'SP'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object cxGrid1DBTableView1SP_DT: TcxGridDBColumn
        Caption = 'Date'
        DataBinding.FieldName = 'SP_DT'
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 623
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 24
    ExplicitTop = 264
    ExplicitWidth = 185
    object BitBtn1: TBitBtn
      Left = 17
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Export to Excel'
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
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 129
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
    CommandText = 'select * from tbl_lwo_sample_withoutpdn'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
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
        Name = 'RWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PSIZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SP'
        DataType = ftInteger
      end
      item
        Name = 'SP_DT'
        DataType = ftDate
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 64
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 56
  end
  object Query6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 240
    Top = 56
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 56
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 288
    Top = 56
  end
end
