object frmFRN_Choose: TfrmFRN_Choose
  Left = 184
  Top = 85
  Width = 818
  Height = 564
  Caption = 'Choose FRN to Create Cutting Flow ID#'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 32
    Height = 13
    Caption = 'FRN# '
  end
  object Label2: TLabel
    Left = 224
    Top = 16
    Width = 63
    Height = 13
    Caption = 'Marker Type '
  end
  object Label3: TLabel
    Left = 384
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Factory  '
  end
  object Label4: TLabel
    Left = 512
    Top = 16
    Width = 18
    Height = 13
    Caption = 'Lot '
  end
  object Edit1: TEdit
    Left = 56
    Top = 16
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 488
    Width = 81
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
    OnClick = BitBtn1Click
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
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 488
    Width = 81
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
    Kind = bkClose
  end
  object ComboBox1: TComboBox
    Left = 288
    Top = 16
    Width = 65
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'PU'
      'TP'
      'PP'
      'CU')
  end
  object ComboBox2: TComboBox
    Left = 424
    Top = 16
    Width = 57
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'SL'
      'RX'
      'CL')
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 48
    Width = 777
    Height = 433
    TabOrder = 5
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsfrn_detail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1FRN_ID: TcxGridDBColumn
        DataBinding.FieldName = 'FRN_ID'
      end
      object cxGrid1DBTableView1FRN_DID: TcxGridDBColumn
        DataBinding.FieldName = 'FRN_DID'
      end
      object cxGrid1DBTableView1PRJNO: TcxGridDBColumn
        DataBinding.FieldName = 'PRJNO'
      end
      object cxGrid1DBTableView1WONO: TcxGridDBColumn
        DataBinding.FieldName = 'WONO'
      end
      object cxGrid1DBTableView1SOLINE: TcxGridDBColumn
        DataBinding.FieldName = 'SOLINE'
      end
      object cxGrid1DBTableView1STYLNO: TcxGridDBColumn
        DataBinding.FieldName = 'STYLNO'
      end
      object cxGrid1DBTableView1CLR: TcxGridDBColumn
        DataBinding.FieldName = 'CLR'
      end
      object cxGrid1DBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
      end
      object cxGrid1DBTableView1EXDT: TcxGridDBColumn
        DataBinding.FieldName = 'EXDT'
      end
      object cxGrid1DBTableView1FWDT: TcxGridDBColumn
        DataBinding.FieldName = 'FWDT'
      end
      object cxGrid1DBTableView1MATTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'MATTYPE'
      end
      object cxGrid1DBTableView1ITEMCODE: TcxGridDBColumn
        DataBinding.FieldName = 'ITEMCODE'
      end
      object cxGrid1DBTableView1SUPPREF: TcxGridDBColumn
        DataBinding.FieldName = 'SUPPREF'
      end
      object cxGrid1DBTableView1CACYY: TcxGridDBColumn
        DataBinding.FieldName = 'CACYY'
      end
      object cxGrid1DBTableView1WASTAGE: TcxGridDBColumn
        DataBinding.FieldName = 'WASTAGE'
      end
      object cxGrid1DBTableView1FRN_YY: TcxGridDBColumn
        DataBinding.FieldName = 'FRN_YY'
      end
      object cxGrid1DBTableView1FRN_WST: TcxGridDBColumn
        DataBinding.FieldName = 'FRN_WST'
      end
      object cxGrid1DBTableView1FRN_TTLYY: TcxGridDBColumn
        DataBinding.FieldName = 'FRN_TTLYY'
      end
      object cxGrid1DBTableView1DIFF_YY: TcxGridDBColumn
        DataBinding.FieldName = 'DIFF_YY'
      end
      object cxGrid1DBTableView1DIFFP: TcxGridDBColumn
        DataBinding.FieldName = 'DIFFP'
      end
      object cxGrid1DBTableView1MAT_SEQ: TcxGridDBColumn
        DataBinding.FieldName = 'MAT_SEQ'
      end
      object cxGrid1DBTableView1MAT_I: TcxGridDBColumn
        DataBinding.FieldName = 'MAT_I'
      end
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsfrn_detail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'WO Info'
        end
        item
          Caption = 'Mat'#39'l Info'
        end
        item
          Caption = 'Color Info'
        end
        item
          Caption = 'Yield'
          Visible = False
        end
        item
          Caption = 'CAC'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Visible = False
        end
        item
          Caption = 'FRN'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Visible = False
        end
        item
          Caption = 'Diff'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Visible = False
        end>
      object cxGrid1DBBandedTableView1PRJNO: TcxGridDBBandedColumn
        Caption = 'Proj#'
        DataBinding.FieldName = 'PRJNO'
        HeaderAlignmentHorz = taCenter
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WONO: TcxGridDBBandedColumn
        Caption = 'WO#'
        DataBinding.FieldName = 'WONO'
        HeaderAlignmentHorz = taCenter
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1STYLNO: TcxGridDBBandedColumn
        Caption = 'Style#'
        DataBinding.FieldName = 'STYLNO'
        HeaderAlignmentHorz = taCenter
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WO_QTY: TcxGridDBBandedColumn
        Caption = 'WO Qty'
        DataBinding.FieldName = 'WO_QTY'
        HeaderAlignmentHorz = taCenter
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1FWDT: TcxGridDBBandedColumn
        Caption = 'FWS dd'
        DataBinding.FieldName = 'FWDT'
        HeaderAlignmentHorz = taCenter
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1EXDT: TcxGridDBBandedColumn
        Caption = 'Ex-fty dd'
        DataBinding.FieldName = 'EXDT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1MATTYPE: TcxGridDBBandedColumn
        Caption = 'Type'
        DataBinding.FieldName = 'MATTYPE'
        HeaderAlignmentHorz = taCenter
        Width = 48
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ITEMCODE: TcxGridDBBandedColumn
        Caption = 'ERP Cde'
        DataBinding.FieldName = 'ITEMCODE'
        HeaderAlignmentHorz = taCenter
        Width = 85
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1SUPPREF: TcxGridDBBandedColumn
        Caption = 'Supp. Ref.'
        DataBinding.FieldName = 'SUPPREF'
        HeaderAlignmentHorz = taCenter
        Width = 84
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1CLR: TcxGridDBBandedColumn
        Caption = 'Clr Cde'
        DataBinding.FieldName = 'CLR'
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1QTY: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1CACYY: TcxGridDBBandedColumn
        Caption = 'Yield'
        DataBinding.FieldName = 'CACYY'
        HeaderAlignmentHorz = taCenter
        Width = 65
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WASTAGE: TcxGridDBBandedColumn
        Caption = 'Wastage%'
        DataBinding.FieldName = 'WASTAGE'
        HeaderAlignmentHorz = taCenter
        Width = 65
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1FRN_YY: TcxGridDBBandedColumn
        Caption = 'Yield'
        DataBinding.FieldName = 'FRN_YY'
        HeaderAlignmentHorz = taCenter
        Width = 65
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1FRN_WST: TcxGridDBBandedColumn
        Caption = 'Wastage Mtr.'
        DataBinding.FieldName = 'FRN_WST'
        HeaderAlignmentHorz = taCenter
        Width = 67
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1FRN_TTLYY: TcxGridDBBandedColumn
        Caption = 'Total'
        DataBinding.FieldName = 'FRN_TTLYY'
        HeaderAlignmentHorz = taCenter
        Width = 65
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DIFF_YY: TcxGridDBBandedColumn
        Caption = 'Diff Yield'
        DataBinding.FieldName = 'DIFF_YY'
        HeaderAlignmentHorz = taCenter
        Width = 65
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DIFFP: TcxGridDBBandedColumn
        Caption = '%'
        DataBinding.FieldName = 'DIFFP'
        HeaderAlignmentHorz = taCenter
        Width = 65
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object BitBtn3: TBitBtn
    Left = 168
    Top = 16
    Width = 22
    Height = 22
    Hint = 'Review existed FRN#'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object SpinEdit1: TRzSpinEdit
    Left = 536
    Top = 16
    Width = 47
    Height = 21
    Max = 9.000000000000000000
    TabOrder = 7
  end
  object frn_master: TADODataSet
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 288
    Top = 233
  end
  object dsfrn_master: TDataSource
    DataSet = frn_master
    OnDataChange = dsfrn_masterDataChange
    Left = 316
    Top = 232
  end
  object frn_detail: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from phgdb..cut_frn_detail'
    CommandTimeout = 300
    IndexFieldNames = 'ITEMCODE;PRJNO;WONO;CLR'
    Parameters = <>
    Left = 344
    Top = 233
  end
  object dsfrn_detail: TDataSource
    DataSet = frn_detail
    Left = 372
    Top = 232
  end
  object ADOQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 468
    Top = 313
  end
  object ADOQuery2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 508
    Top = 313
  end
end
