object frmEWSGAI_Detail: TfrmEWSGAI_Detail
  Left = 0
  Top = 0
  Caption = 'Weekly GAI of End Phase workshop / '#24460#27573#24037#22580#27599#36913#29986#37327#36948#27161#25351#37341
  ClientHeight = 391
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 805
    Height = 350
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
      OnCellDblClick = cxView1CellDblClick
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
      OptionsView.BandHeaderHeight = 32
      Bands = <
        item
          Caption = 'Weekly GAI of End Phase workshop / '#24460#27573#24037#22580#27599#36913#29986#37327#36948#27161#25351#37341
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Data Download dd: '
          HeaderAlignmentHorz = taLeftJustify
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 0
          Position.ColIndex = 0
        end
        item
          Caption = 'Source'#13#10'frm AL'#13#10#28304#33258#13#10#32068#35037#13#10#32218
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          Caption = 'This week prdn data / '#26412#21608#29983#29986#25976#25818
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 1
          Styles.Header = cxStyle1
        end
        item
          Caption = 'E.Ws'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 2
          Styles.Header = cxStyle4
        end
        item
          Caption = 'Every working date & it'#39's prdn data / '#27599#20491#24037#20316#26085#20043#29983#29986#25976#25818
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 3
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Proj#'#13#10#24037#31243#34399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 3
          Position.ColIndex = 0
          Styles.Header = cxStyle1
        end
        item
          Caption = 'Cust Style / '#23458#27454
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 3
          Position.ColIndex = 1
          Styles.Header = cxStyle1
        end
        item
          Caption = 'QN / '#25976#38913
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 3
          Position.ColIndex = 2
          Styles.Header = cxStyle1
        end
        item
          Caption = 'Ws Sect Hr /'#24037#22580#31680#26178' & QNs'#39' GAI Qty /'#25976#38913#25351#37341#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 5
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Date'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 9
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 9
          Position.ColIndex = 1
          Styles.Header = cxStyle2
        end
        item
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 9
          Position.ColIndex = 2
          Styles.Header = cxStyle2
        end
        item
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 9
          Position.ColIndex = 3
          Styles.Header = cxStyle2
        end
        item
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 9
          Position.ColIndex = 4
          Styles.Header = cxStyle2
        end
        item
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 9
          Position.ColIndex = 5
          Styles.Header = cxStyle2
        end
        item
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 9
          Position.ColIndex = 6
          Styles.Header = cxStyle2
        end
        item
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 9
          Position.ColIndex = 7
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Steps'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 10
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Def'#13#10#38928#35373
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 11
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Adj'#13#10#20462#35330
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 11
          Position.ColIndex = 1
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Act'#13#10#23526#27841
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 11
          Position.ColIndex = 2
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Def/'#13#10'Adj'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 12
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Act'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 12
          Position.ColIndex = 1
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Def/'#13#10'Adj'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 13
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Act'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 13
          Position.ColIndex = 1
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Def/'#13#10'Adj'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 14
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Act'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 14
          Position.ColIndex = 1
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Def/'#13#10'Adj'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 15
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Act'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 15
          Position.ColIndex = 1
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Def/'#13#10'Adj'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 16
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Act'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 16
          Position.ColIndex = 1
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Def/'#13#10'Adj'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 17
          Position.ColIndex = 0
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Act'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 17
          Position.ColIndex = 1
          Styles.Header = cxStyle3
        end
        item
          Caption = 'QN#'#13#10#25976#38913#34399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 0
          Styles.Header = cxStyle1
        end
        item
          Caption = 'Qty'#13#10'(pcs)'#13#10#20214#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 2
          Styles.Header = cxStyle1
        end
        item
          Caption = 'GAI / '#36948#27161#25351#37341
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 3
          Styles.Header = cxStyle1
          Width = 320
        end
        item
          Caption = 'Def non-prdn'#13#10'planning Qty (pcs)'#13#10#38928#35373#19981#20316#13#10#29983#29986#35336#21123#20043#20214#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 4
          Styles.Header = cxStyle1
        end
        item
          Caption = 'T3'#13#10'dd'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 5
          Styles.Header = cxStyle1
        end
        item
          Caption = 'Def/Adj Ttl'#13#10#38928#35373'/'#20462#35330#32317#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 36
          Position.ColIndex = 0
          Styles.Header = cxStyle1
        end
        item
          Caption = 'Act Accu '#13#10#32047#35336#23526#27841#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 36
          Position.ColIndex = 1
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Ex-fty'#13#10'dd'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 6
          Styles.Header = cxStyle1
        end
        item
          Caption = 'Clr'#13#10'Cde'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 1
          Styles.Header = cxStyle1
        end>
      object cxColumn1: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'PLINE'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 42
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxColumn2: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 65
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxColumn3: TcxGridDBBandedColumn
        Caption = 'Style No. '#13#10#27454#34399
        DataBinding.FieldName = 'CSTYLE'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 70
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxColumn4: TcxGridDBBandedColumn
        Caption = 'SAH'#13#10'(E.Ws)'
        DataBinding.FieldName = 'ESAH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.0000'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 45
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxColumn5: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'CWONO1'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 110
        Position.BandIndex = 34
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxColumn6: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'SCQTY'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 45
        Position.BandIndex = 35
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object SPQTY: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'SPQTY'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 50
        Position.BandIndex = 39
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object SPSAH: TcxGridDBBandedColumn
        Caption = 'SAH'
        DataBinding.FieldName = 'SPSAH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 50
        Position.BandIndex = 39
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ACT_QTY: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'ACT_QTY'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 50
        Position.BandIndex = 40
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ACT_QDIFF: TcxGridDBBandedColumn
        Caption = 'Diff'
        DataBinding.FieldName = 'ACT_QDIFF'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 50
        Position.BandIndex = 40
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ACT_SAH: TcxGridDBBandedColumn
        Caption = 'SAH'
        DataBinding.FieldName = 'ACT_SAH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 50
        Position.BandIndex = 40
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ACT_SDIFF: TcxGridDBBandedColumn
        Caption = 'Diff %'
        DataBinding.FieldName = 'ACT_SDIFF_P'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 50
        Position.BandIndex = 40
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxColumn13: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'SP_QDIFF'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 95
        Position.BandIndex = 37
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxColumn14: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'T3DT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 40
        Position.BandIndex = 38
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object WS1: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'WS1'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle4
        Width = 38
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxColumn16: TcxGridDBBandedColumn
        Caption = 'S.Hr'
        DataBinding.FieldName = 'GAI'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 40
        Position.BandIndex = 18
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object D1_DEF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D1_DEF'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 38
        Position.BandIndex = 19
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D1_ADJ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D1_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 38
        Position.BandIndex = 20
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D1_ACT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D1_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 38
        Position.BandIndex = 21
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D2_ADJ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D2_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 38
        Position.BandIndex = 22
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D2_ACT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D2_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 38
        Position.BandIndex = 23
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D3_ADJ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D3_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 38
        Position.BandIndex = 24
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D3_ACT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D3_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 38
        Position.BandIndex = 25
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D4_ADJ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D4_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 38
        Position.BandIndex = 26
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D4_ACT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D4_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 38
        Position.BandIndex = 27
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D5_ADJ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D5_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 38
        Position.BandIndex = 28
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D5_ACT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D5_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 38
        Position.BandIndex = 29
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D6_ADJ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D6_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 38
        Position.BandIndex = 30
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D6_ACT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D6_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 38
        Position.BandIndex = 31
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D7_ADJ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D7_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 38
        Position.BandIndex = 32
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object D7_ACT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D7_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 38
        Position.BandIndex = 33
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object e915_seq: TcxGridDBBandedColumn
        DataBinding.FieldName = 'E915_SEQ'
        Visible = False
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object D1_DT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D1_DT'
        Visible = False
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object D2_DT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D2_DT'
        Visible = False
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object D3_DT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D3_DT'
        Visible = False
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object D4_DT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D4_DT'
        Visible = False
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object D5_DT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D5_DT'
        Visible = False
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object D6_DT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D6_DT'
        Visible = False
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object D7_DT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D7_DT'
        Visible = False
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object EX_DT: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'EX_DT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 40
        Position.BandIndex = 41
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxACOL: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'ACOL'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 30
        Position.BandIndex = 42
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1RK_F: TcxGridDBBandedColumn
        Caption = ' '
        DataBinding.FieldName = 'RK_F'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle3
        Width = 20
        Position.BandIndex = 40
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 350
    Width = 805
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 24
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Export'
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
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 104
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Remarks'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 192
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 2
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 13164274
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 120
    Top = 65528
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 16776415
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 208
    Top = 65520
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 14479568
    end
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 16
    Top = 65520
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = 8435700
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_e915_wkprj2 order by e915_seq,fty,ws,pline,seq'
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'e915_seq;fty;ws;pline;seq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    Left = 120
    Top = 248
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 248
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 176
    Top = 248
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 248
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 280
    Top = 248
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 576
    Top = 240
  end
end
