object frmEWsGAI: TfrmEWsGAI
  Left = 0
  Top = 0
  Caption = 'End Phase Sewing Workshop'#39's Weekly GAI'
  ClientHeight = 471
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PopupMenu = pm1
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 820
    Height = 41
    Align = alTop
    PopupMenu = pm1
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Fty: '
    end
    object Label2: TLabel
      Left = 301
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Date from: '
    end
    object Label3: TLabel
      Left = 493
      Top = 8
      Width = 17
      Height = 13
      Caption = 'to: '
    end
    object Label4: TLabel
      Left = 156
      Top = 8
      Width = 22
      Height = 13
      Caption = 'Ws: '
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 8
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'SL'
      OnChange = ComboBox1Change
      Items.Strings = (
        'SL'
        'RX'
        'CL')
    end
    object BitBtn1: TBitBtn
      Left = 696
      Top = 5
      Width = 73
      Height = 25
      Caption = 'OK'
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
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object ComboBox2: TComboBox
      Left = 188
      Top = 8
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnEnter = ComboBox2Enter
      Items.Strings = (
        '3A'
        '4A'
        '4B'
        '1H'
        '2R'
        '3R'
        'CL1'
        'CL2'
        'CL3')
    end
    object DTEdit1: TDateEdit
      Left = 360
      Top = 8
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
      OnChange = DTEdit1Change
    end
    object DTEdit2: TDateEdit
      Left = 512
      Top = 8
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
      OnChange = DTEdit2Change
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 820
    Height = 389
    Align = alClient
    PopupMenu = pm1
    TabOrder = 1
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
      OptionsView.BandHeaderHeight = 32
      Styles.OnGetContentStyle = cxView1StylesGetContentStyle
      Bands = <
        item
          Caption = 'Source'#13#10'frm AL'#13#10#28304#33258#13#10#32068#35037#13#10#32218
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Weekly Figure /'#27599#36913#36039#26009
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Styles.Header = cxStyle1
        end
        item
          Caption = 'Every Working date & their Figure / '#27599#20491#24037#20316#26085#26399#21450#36039#26009
          HeaderAlignmentVert = vaTop
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Def/Adj Ttl'#13#10#38928#35373'/'#20462#35330#32317#25976
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 4
          Styles.Header = cxStyle1
        end
        item
          Caption = 'Act Accu '#13#10#32047#35336#23526#27841#25976
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 5
          Styles.Header = worksheet1.cxStyle1
        end
        item
          Caption = '2021/08/02'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = '2021/08/03'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 1
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = '2021/08/04'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 2
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = '2021/08/05'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 3
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = '2021/08/06'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 4
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = '2021/08/07'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 5
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = '2021/08/08'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 6
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Def Sect Hr '#38928#35373#31680#26178' = 22'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 5
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Def Sect Hr = 22'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 6
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Def Sect Hr = 22'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 7
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Def Sect Hr = 22'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Def Sect Hr = 22'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 9
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Def Sect Hr = 18'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 10
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Def Sect Hr = 0'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 11
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Adj Time'#13#10#20462#35330#31680#26178
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 12
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'GAI Qty '#25351#37341#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 12
          Position.ColIndex = 1
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Adj'#13#10'Time'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 13
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'GAI Qty'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 13
          Position.ColIndex = 1
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Adj'#13#10'Time'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 14
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'GAI Qty'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 14
          Position.ColIndex = 1
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Adj'#13#10'Time'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 15
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'GAI Qty'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 15
          Position.ColIndex = 1
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Adj'#13#10'Time'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 16
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'GAI Qty'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 16
          Position.ColIndex = 1
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Adj'#13#10'Time'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 17
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'GAI Qty'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 17
          Position.ColIndex = 1
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Adj'#13#10'Time'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 18
          Position.ColIndex = 0
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'GAI Qty'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 18
          Position.ColIndex = 1
          Styles.Header = worksheet1.cxStyle5
        end
        item
          Caption = 'Cust Code'#13#10#23458#25142#34399
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 0
          Styles.Header = cxStyle1
        end
        item
          Caption = '# of'#13#10'Proj'#13#10#24037#31243#25976
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 1
          Styles.Header = cxStyle1
        end
        item
          Caption = '# of'#13#10'Style'#13#10#27454#25976
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 2
          Styles.Header = cxStyle1
        end
        item
          Caption = '# of'#13#10'QN'#13#10#25976#38913#13#10#24373#25976
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 3
          Styles.Header = cxStyle1
        end>
      object cxGrid1View1PLINE: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'PLINE'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1CUST: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'CUST'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 75
        Position.BandIndex = 33
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1PRJ: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'PRJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 45
        Position.BandIndex = 34
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1STYLE: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'STYLE'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 45
        Position.BandIndex = 35
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1LWO: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'LWO'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 45
        Position.BandIndex = 36
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1D1_ADJ: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'D1_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 55
        Position.BandIndex = 19
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1D1_EQTY: TcxGridDBBandedColumn
        Caption = 'Def.'#13#10#38928#35373
        DataBinding.FieldName = 'D1_EQTY'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 20
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object D1_EQTY1: TcxGridDBBandedColumn
        Caption = 'Def/'#13#10'Adj'
        DataBinding.FieldName = 'D1_EQTY1'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 20
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object D1_ACT: TcxGridDBBandedColumn
        Caption = 'Act'#13#10#23526#27841
        DataBinding.FieldName = 'D1_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 40
        Position.BandIndex = 20
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1View1D2_ADJ: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'D2_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 38
        Position.BandIndex = 21
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1D2_EQTY: TcxGridDBBandedColumn
        Caption = 'Def.'
        DataBinding.FieldName = 'D2_EQTY'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 22
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object D2_EQTY1: TcxGridDBBandedColumn
        Caption = 'Def/'#13#10'Adj'
        DataBinding.FieldName = 'D2_EQTY1'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 22
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object D2_ACT: TcxGridDBBandedColumn
        Caption = 'Act'
        DataBinding.FieldName = 'D2_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 40
        Position.BandIndex = 22
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1View1D3_ADJ: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'D3_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 38
        Position.BandIndex = 23
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1D3_EQTY: TcxGridDBBandedColumn
        Caption = 'Def.'
        DataBinding.FieldName = 'D3_EQTY'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 24
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object D3_EQTY1: TcxGridDBBandedColumn
        Caption = 'Def/'#13#10'Adj'
        DataBinding.FieldName = 'D3_EQTY1'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 24
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object D3_ACT: TcxGridDBBandedColumn
        Caption = 'Act'
        DataBinding.FieldName = 'D3_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 40
        Position.BandIndex = 24
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1View1D4_ADJ: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'D4_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 38
        Position.BandIndex = 25
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1D4_EQTY: TcxGridDBBandedColumn
        Caption = 'Def.'
        DataBinding.FieldName = 'D4_EQTY'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 26
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object D4_EQTY1: TcxGridDBBandedColumn
        Caption = 'Def/'#13#10'Adj'
        DataBinding.FieldName = 'D4_EQTY1'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 26
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object D4_ACT: TcxGridDBBandedColumn
        Caption = 'Act'
        DataBinding.FieldName = 'D4_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 40
        Position.BandIndex = 26
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1View1D5_ADJ: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'D5_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 38
        Position.BandIndex = 27
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1D5_EQTY: TcxGridDBBandedColumn
        Caption = 'Def.'
        DataBinding.FieldName = 'D5_EQTY'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 28
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object D5_EQTY1: TcxGridDBBandedColumn
        Caption = 'Def/'#13#10'Adj'
        DataBinding.FieldName = 'D5_EQTY1'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 28
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object D5_ACT: TcxGridDBBandedColumn
        Caption = 'Act'
        DataBinding.FieldName = 'D5_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 40
        Position.BandIndex = 28
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1View1D6_ADJ: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'D6_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 38
        Position.BandIndex = 29
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1D6_EQTY: TcxGridDBBandedColumn
        Caption = 'Def.'
        DataBinding.FieldName = 'D6_EQTY'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 30
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object D6_EQTY1: TcxGridDBBandedColumn
        Caption = 'Def/'#13#10'Adj'
        DataBinding.FieldName = 'D6_EQTY1'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 30
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object D6_ACT: TcxGridDBBandedColumn
        Caption = 'Act'
        DataBinding.FieldName = 'D6_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 40
        Position.BandIndex = 30
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1View1D7_ADJ: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'D7_ADJ'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 38
        Position.BandIndex = 31
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1View1D7_EQTY: TcxGridDBBandedColumn
        Caption = 'Def.'
        DataBinding.FieldName = 'D7_EQTY'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 32
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object D7_EQTY1: TcxGridDBBandedColumn
        Caption = 'Def/'#13#10'Adj'
        DataBinding.FieldName = 'D7_EQTY1'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 32
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object D7_ACT: TcxGridDBBandedColumn
        Caption = 'Act'
        DataBinding.FieldName = 'D7_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 40
        Position.BandIndex = 32
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object TTL_EQTY: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'TTL_EQTY'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object TTL_ACT: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'TTL_ACT'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 50
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object prj_seq: TcxGridDBBandedColumn
        DataBinding.FieldName = 'prj_seq'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object SPSAH: TcxGridDBBandedColumn
        Caption = 'SAH'
        DataBinding.FieldName = 'SPSAH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ACT_QDIFF: TcxGridDBBandedColumn
        Caption = 'Diff'
        DataBinding.FieldName = 'ACT_QDIFF'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 50
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ACT_SAH: TcxGridDBBandedColumn
        Caption = 'SAH'
        DataBinding.FieldName = 'ACT_SAH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 50
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxACT_SDIFF: TcxGridDBBandedColumn
        Caption = 'Diff %'
        DataBinding.FieldName = 'ACT_SDIFF_P'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle1
        Width = 50
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxD1_DP: TcxGridDBBandedColumn
        Caption = 'WF D'#13#10'%'
        DataBinding.FieldName = 'D1_DP'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 20
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxD2_DP: TcxGridDBBandedColumn
        Caption = 'WF D'#13#10'%'
        DataBinding.FieldName = 'D2_DP'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 22
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxD3_DP: TcxGridDBBandedColumn
        Caption = 'WF D'#13#10'%'
        DataBinding.FieldName = 'D3_DP'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 24
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxD4_DP: TcxGridDBBandedColumn
        Caption = 'WF D'#13#10'%'
        DataBinding.FieldName = 'D4_DP'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 26
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxD5_DP: TcxGridDBBandedColumn
        Caption = 'WF D'#13#10'%'
        DataBinding.FieldName = 'D5_DP'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 28
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxD6_DP: TcxGridDBBandedColumn
        Caption = 'WF D'#13#10'%'
        DataBinding.FieldName = 'D6_DP'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 30
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxD7_DP: TcxGridDBBandedColumn
        Caption = 'WF D'#13#10'%'
        DataBinding.FieldName = 'D7_DP'
        HeaderAlignmentHorz = taCenter
        Styles.Header = worksheet1.cxStyle5
        Width = 40
        Position.BandIndex = 32
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 430
    Width = 820
    Height = 41
    Align = alBottom
    PopupMenu = pm1
    TabOrder = 2
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
    object BitBtn3: TBitBtn
      Left = 104
      Top = 8
      Width = 149
      Height = 25
      Caption = 'Detail (by Ws with QN)'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 252
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 384
      Top = 6
      Width = 75
      Height = 25
      Caption = 'BitBtn5'
      TabOrder = 3
      Visible = False
      OnClick = BitBtn5Click
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_e915_prj2 order by fty,ws,pline,prj_seq'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 144
    Top = 328
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 176
    Top = 328
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 328
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 272
    Top = 328
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 304
    Top = 328
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 576
    Top = 240
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 13164274
    end
    object TextStyle_G: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGreen
    end
    object TextStyle_R: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object BK_Style1: TcxStyle
      AssignedValues = [svColor]
      Color = 13499643
    end
    object BK_Style2: TcxStyle
      AssignedValues = [svColor]
      Color = 14728372
    end
    object cxStyle4: TcxStyle
    end
  end
  object pm1: TPopupMenu
    Left = 496
    Top = 264
    object MaintainEff1: TMenuItem
      Caption = 'Maintain Eff%'
      ShortCut = 49222
      Visible = False
      OnClick = BitBtn5Click
    end
    object Maintainproductivity1: TMenuItem
      Caption = 'Maintain productivity%'
      ShortCut = 24665
      Visible = False
      OnClick = Maintainproductivity1Click
    end
  end
end
