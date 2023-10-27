object frmlockedqn: Tfrmlockedqn
  Left = 0
  Top = 0
  Caption = 'AL'#39's Locked QN data'
  ClientHeight = 414
  ClientWidth = 948
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 948
    Height = 373
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxView1CustomDrawCell
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
      OptionsView.BandHeaderHeight = 30
      Bands = <
        item
          Caption = 'Order Information'
          HeaderAlignmentVert = vaTop
          Styles.Header = worksheet1.cxStyle1
        end
        item
          Caption = 'AL#'
          HeaderAlignmentVert = vaTop
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Locked QN'#39's Day diff'
          HeaderAlignmentVert = vaTop
          Styles.Header = worksheet1.cxStyle1
        end
        item
          Caption = 'Issued '#13#10'dd'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle1
        end
        item
          Caption = 'QN'#39's SW'#13#10'Start dd'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 1
          Styles.Header = worksheet1.cxStyle1
        end
        item
          Caption = 'Day diff'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 2
          Styles.Header = worksheet1.cxStyle1
        end
        item
          Caption = 'Do variance column (a) affect below 3 points?'
          HeaderAlignmentVert = vaTop
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Smpl'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 6
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'FW Start dd'#13#10'(Full Mat'#39'l Standby)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 6
          Position.ColIndex = 1
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Ex-fty dd'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 6
          Position.ColIndex = 2
          Styles.Header = worksheet1.cxStyle5
        end>
      object cxView1PLINE: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'PLINE'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 37
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1LOCKCFKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOCKCFKS'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1J_NO: TcxGridDBBandedColumn
        Caption = 'Proj#'
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1J2_JOB: TcxGridDBBandedColumn
        Caption = 'WO#'
        DataBinding.FieldName = 'J2_JOB'
        HeaderAlignmentHorz = taCenter
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1CSTYLE: TcxGridDBBandedColumn
        Caption = 'Cust Style'
        DataBinding.FieldName = 'CSTYLE'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1ACOL: TcxGridDBBandedColumn
        Caption = 'PH'#13#10'Clr'#13#10'Code'
        DataBinding.FieldName = 'ACOL'
        HeaderAlignmentHorz = taCenter
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxView1RWO: TcxGridDBBandedColumn
        Caption = 'RWO'#13#10'Suffix'
        DataBinding.FieldName = 'RWO'
        HeaderAlignmentHorz = taCenter
        Width = 33
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxView1FCCS: TcxGridDBBandedColumn
        Caption = 'QN'#13#10'Suffix'
        DataBinding.FieldName = 'FCCS'
        HeaderAlignmentHorz = taCenter
        Width = 33
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxView1LOCK_DT: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'LOCK_DT'
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1LOCK_GAP: TcxGridDBBandedColumn
        Caption = 'Locked'
        DataBinding.FieldName = 'LOCK_GAP'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle2
        Width = 39
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1CFKSRQ: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'CFKSRQ'
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1KDJS: TcxGridDBBandedColumn
        Caption = 'Variance'#13#10'(a)'
        DataBinding.FieldName = 'KDJS'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle2
        Width = 50
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1S_DEF: TcxGridDBBandedColumn
        Caption = 'Def.'
        DataBinding.FieldName = 'S_DEF'
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1S_BUFF: TcxGridDBBandedColumn
        Caption = 'Buffer'#13#10'(last dd)'
        DataBinding.FieldName = 'S_BUFF'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle4
        Width = 45
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1FW_DEF: TcxGridDBBandedColumn
        Caption = 'Def.'
        DataBinding.FieldName = 'FW_DEF'
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1FW_ADJ: TcxGridDBBandedColumn
        Caption = 'Adj.'
        DataBinding.FieldName = 'FW_ADJ'
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1FW_ACT: TcxGridDBBandedColumn
        Caption = 'Act.'
        DataBinding.FieldName = 'FW_ACT'
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 8
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1FW_BUFF: TcxGridDBBandedColumn
        Caption = 'Buffer'#13#10'(last dd)'
        DataBinding.FieldName = 'FW_BUFF'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle4
        Width = 45
        Position.BandIndex = 8
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1EX_DEF: TcxGridDBBandedColumn
        Caption = 'Def.'
        DataBinding.FieldName = 'EX_DEF'
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1EX_ADJ: TcxGridDBBandedColumn
        Caption = 'Adj.'
        DataBinding.FieldName = 'EX_ADJ'
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 9
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1EX_BUFF: TcxGridDBBandedColumn
        Caption = 'Buffer'#13#10'(last dd)'
        DataBinding.FieldName = 'EX_BUFF'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle4
        Width = 45
        Position.BandIndex = 9
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 373
    Width = 948
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 41
      Top = 6
      Width = 80
      Height = 27
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
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 120
      Top = 6
      Width = 81
      Height = 27
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lockqn order by seq'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query1AfterOpen
    Left = 176
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 160
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 360
    Top = 160
  end
end
