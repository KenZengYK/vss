object frmSAH_p2: TfrmSAH_p2
  Left = 0
  Top = 0
  Caption = 'How to calculate Ttl sect hr of diff Ws'
  ClientHeight = 476
  ClientWidth = 1200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 435
    Width = 1200
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
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
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1200
    Height = 435
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = worksheet1.DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.BandHeaderHeight = 32
      Bands = <
        item
          Caption = 'Proj#'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'QN#'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'B'#13#10'K'#13#10'U'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Style'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'QN'#13#10'Qty'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'AL#'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'LB'#13#10'Pro-'#13#10'cess'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Ws'#13#10'Flow'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'How to calculate Ttl sect hr of diff Ws'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Accumulation'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 5
        end
        item
          Caption = 'P'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 0
          Visible = False
        end
        item
          Caption = 'B'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 1
        end
        item
          Caption = 'F'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 2
          Visible = False
        end
        item
          Caption = 'E'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 4
        end
        item
          Caption = 'AL'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 3
        end
        item
          Caption = 'Code'
          Position.BandIndex = 7
          Position.ColIndex = 0
        end
        item
          Caption = 'Linkage sect hr'
          Position.BandIndex = 7
          Position.ColIndex = 1
        end>
      object cxView1proj: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1wo: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'CWONO1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 112
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1woc: TcxGridDBBandedColumn
        Caption = 'WO'#13#10'suffix'
        DataBinding.FieldName = 'CWO'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 33
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cxView1rwo: TcxGridDBBandedColumn
        Caption = 'RWO'#13#10'suffix'
        DataBinding.FieldName = 'RWO'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 33
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object cxView1qn: TcxGridDBBandedColumn
        Caption = 'QN'#13#10'suffix'
        DataBinding.FieldName = 'FCCS'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 33
        Position.BandIndex = 6
        Position.ColIndex = 2
        Position.RowIndex = 1
      end
      object cxView1line: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'PLINE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 42
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column1: TcxGridDBBandedColumn
        Caption = 'ERP'#13#10'Style#'
        DataBinding.FieldName = 'ARTNO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 65
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1Column2: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'DTA1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 42
        Position.BandIndex = 15
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column3: TcxGridDBBandedColumn
        Caption = 'GSD'#13#10'SAH'
        DataBinding.FieldName = 'Sah_ttl'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column4: TcxGridDBBandedColumn
        Caption = 'dWF'
        DataBinding.FieldName = 'Sah_ttlw'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 32
        Position.BandIndex = 9
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1Column5: TcxGridDBBandedColumn
        Caption = 'WF'#13#10'(adj.)'#13#10'if any'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 9
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1Column6: TcxGridDBBandedColumn
        Caption = 'Accu'#13#10'sect'#13#10'hr'
        DataBinding.FieldName = 'TTL_S1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 42
        Position.BandIndex = 9
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1Column7: TcxGridDBBandedColumn
        Caption = 'GSD'#13#10'SAH'#13#10'(P Ws'#13#10'part)'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column8: TcxGridDBBandedColumn
        Caption = 'WF'#13#10'(def.)'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 10
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1Column9: TcxGridDBBandedColumn
        Caption = 'Qty'#13#10'per'#13#10'Sect.'#13#10'hr.'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 10
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1Column10: TcxGridDBBandedColumn
        Caption = 'GSD'#13#10'SAH'
        DataBinding.FieldName = 'Sah_b'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
        Position.BandIndex = 11
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column11: TcxGridDBBandedColumn
        Caption = 'dWF'#13#10
        DataBinding.FieldName = 'Sah_bw'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 32
        Position.BandIndex = 11
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1Column12: TcxGridDBBandedColumn
        Caption = 'Qty/'#13#10'Sect.'#13#10'hr.'
        DataBinding.FieldName = 'Sah_bq'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 11
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1Column13: TcxGridDBBandedColumn
        Caption = 'GSD'#13#10'SAH'
        DataBinding.FieldName = 'PFSAH'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
        Position.BandIndex = 12
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column14: TcxGridDBBandedColumn
        Caption = 'dWF'#13#10
        DataBinding.FieldName = 'PFRS_A'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 32
        Position.BandIndex = 12
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1Column15: TcxGridDBBandedColumn
        Caption = 'Qty/'#13#10'Sect.'#13#10'hr.'
        DataBinding.FieldName = 'PFXJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 12
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1Column16: TcxGridDBBandedColumn
        Caption = 'GSD'#13#10'SAH'
        DataBinding.FieldName = 'ESAH'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
        Position.BandIndex = 13
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column17: TcxGridDBBandedColumn
        Caption = 'dWF'#13#10
        DataBinding.FieldName = 'EWF'
        HeaderAlignmentHorz = taCenter
        Width = 32
        Position.BandIndex = 13
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1Column18: TcxGridDBBandedColumn
        Caption = 'Qty/'#13#10'Sect.'#13#10'hr.'
        DataBinding.FieldName = 'EXJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 13
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1Column19: TcxGridDBBandedColumn
        Caption = 'Cust'#13#10'Style#'
        DataBinding.FieldName = 'cstyle'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 73
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column20: TcxGridDBBandedColumn
        Caption = 'GSD'#13#10'SAH'
        DataBinding.FieldName = 'asah'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
        Position.BandIndex = 14
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column21: TcxGridDBBandedColumn
        Caption = 'dWF'#13#10
        DataBinding.FieldName = 'AWF'
        HeaderAlignmentHorz = taCenter
        Width = 32
        Position.BandIndex = 14
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1Column22: TcxGridDBBandedColumn
        Caption = 'Qty/'#13#10'Sect.'#13#10'hr.'
        DataBinding.FieldName = 'ALXJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 14
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1Column23: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'FLAG6'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column24: TcxGridDBBandedColumn
        Caption = 'Default'
        DataBinding.FieldName = 'LK_S1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 43
        Position.BandIndex = 16
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column25: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'FLAG2'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column26: TcxGridDBBandedColumn
        Caption = 'Initial'#13#10'PLC'
        DataBinding.FieldName = 'LFLAG'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 31
        Position.BandIndex = 14
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1Column27: TcxGridDBBandedColumn
        Caption = 'Ttl'#13#10'sect'#13#10'hr'
        DataBinding.FieldName = 'B_S1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 38
        Position.BandIndex = 11
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1Column28: TcxGridDBBandedColumn
        Caption = 'Ttl'#13#10'sect'#13#10'hr'
        DataBinding.FieldName = 'F_S1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 38
        Position.BandIndex = 12
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1Column29: TcxGridDBBandedColumn
        Caption = 'Ttl'#13#10'sect'#13#10'hr'
        DataBinding.FieldName = 'E_S1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 38
        Position.BandIndex = 13
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1Column30: TcxGridDBBandedColumn
        Caption = 'Ttl'#13#10'sect'#13#10'hr'
        DataBinding.FieldName = 'YSZJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 38
        Position.BandIndex = 14
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxView1Column31: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'SCQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 42
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Column32: TcxGridDBBandedColumn
        Caption = 'Actual'
        DataBinding.FieldName = 'TTL_S2'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 43
        Position.BandIndex = 16
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 576
    Top = 240
  end
end
