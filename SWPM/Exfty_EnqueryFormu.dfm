object frmexfty_enquery: Tfrmexfty_enquery
  Left = 0
  Top = 0
  Caption = #36008#29289#20986#38272#26781#35352#37636#26597#35426
  ClientHeight = 393
  ClientWidth = 817
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
  object cxGrid1: TcxGrid
    Left = 8
    Top = 8
    Width = 801
    Height = 329
    TabOrder = 0
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
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1EX_NO: TcxGridDBColumn
        Caption = #32232#34399
        DataBinding.FieldName = 'EX_NO'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGrid1DBTableView1EX_DT: TcxGridDBColumn
        Caption = #20986#36008#26085#26399
        DataBinding.FieldName = 'EX_DT'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1EX_TRUCK: TcxGridDBColumn
        Caption = #36008#36554#34399
        DataBinding.FieldName = 'EX_TRUCK'
        HeaderAlignmentHorz = taCenter
        Width = 107
      end
      object cxGrid1DBTableView1EX_BOX: TcxGridDBColumn
        Caption = #36008#21697#31665#25976
        DataBinding.FieldName = 'EX_BOX'
        HeaderAlignmentHorz = taCenter
        Width = 53
      end
      object cxGrid1DBTableView1EX_BOX1: TcxGridDBColumn
        Caption = #23614#31665#25976
        DataBinding.FieldName = 'EX_BOX1'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object cxGrid1DBTableView1EX_COUNT: TcxGridDBColumn
        Caption = #21253#35037#37096#40670#25976#20154
        DataBinding.FieldName = 'EX_COUNT'
        HeaderAlignmentHorz = taCenter
        Width = 77
      end
      object cxGrid1DBTableView1EX_SIGN: TcxGridDBColumn
        Caption = #32317#21209#37096#40670#25976#20154
        DataBinding.FieldName = 'EX_SIGN'
        HeaderAlignmentHorz = taCenter
        Width = 77
      end
      object cxGrid1DBTableView1EX_SECU: TcxGridDBColumn
        Caption = #20445#23433#31805#21517
        DataBinding.FieldName = 'EX_SECU'
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGrid1DBTableView1EX_SHPNO: TcxGridDBColumn
        Caption = 'Shipping Advice#'
        DataBinding.FieldName = 'EX_SHPNO'
        HeaderAlignmentHorz = taCenter
        Width = 250
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 352
    Width = 81
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
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 352
    Width = 81
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_exit'
    FieldDefs = <
      item
        Name = 'EX_NO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EX_DT'
        DataType = ftDate
      end
      item
        Name = 'EX_TRUCK'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EX_BOX'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'EX_BOX1'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'EX_COUNT'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EX_SIGN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EX_SECU'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EX_SHPNO'
        DataType = ftWideString
        Size = 200
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 32
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 64
    Top = 65528
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
    Left = 96
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 128
    Top = 65528
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 528
    Top = 88
  end
end
