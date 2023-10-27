object frmdWFDeployBoard: TfrmdWFDeployBoard
  Left = 0
  Top = 0
  Caption = 'dWF Deploy Board'
  ClientHeight = 373
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 26
      Height = 16
      Caption = 'Fty: '
    end
    object Label2: TLabel
      Left = 224
      Top = 8
      Width = 35
      Height = 16
      Caption = 'Date: '
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 8
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 0
      Text = 'SL'
      Items.Strings = (
        'SL'
        'GG'
        'RX'
        'CL')
    end
    object DateEdit1: TDateEdit
      Left = 264
      Top = 8
      Width = 121
      Height = 24
      NumGlyphs = 2
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 472
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
    Width = 761
    Height = 291
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      Bands = <
        item
          Caption = 'Workshop'
        end
        item
          Caption = 'dWF'#13#10'?'
          Width = 38
        end
        item
          Caption = 'dWF related to SAH / IEBOO'
        end
        item
          Caption = 'dWF Raise'
          Position.BandIndex = 2
          Position.ColIndex = 0
        end
        item
          Caption = 'Present'
          Position.BandIndex = 2
          Position.ColIndex = 1
        end
        item
          Caption = 'In hand (1)'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Width = 70
        end
        item
          Caption = 'On duty (2)'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Width = 71
        end
        item
          Caption = 'In line (3)'
          Position.BandIndex = 4
          Position.ColIndex = 2
        end
        item
          Caption = 'Abs Notice (4)'
          Position.BandIndex = 4
          Position.ColIndex = 3
          Width = 87
        end>
      object cxGrid1DBBandedTableView1WS: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'WS'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WSD: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'WSD'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 85
        OnCompareRowValuesForCellMerging = cxGrid1DBBandedTableView1WSDCompareRowValuesForCellMerging
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WSL: TcxGridDBBandedColumn
        Caption = 'Loc.'
        DataBinding.FieldName = 'WSL'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 66
        OnCompareRowValuesForCellMerging = cxGrid1DBBandedTableView1WSLCompareRowValuesForCellMerging
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DWF: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'DWF'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 20
        OnCompareRowValuesForCellMerging = cxGrid1DBBandedTableView1DWFCompareRowValuesForCellMerging
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WFR_U: TcxGridDBBandedColumn
        Caption = 'Urgent'
        DataBinding.FieldName = 'WFR_U'
        HeaderAlignmentHorz = taCenter
        Width = 44
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WFR_F: TcxGridDBBandedColumn
        Caption = 'Future'
        DataBinding.FieldName = 'WFR_F'
        HeaderAlignmentHorz = taCenter
        Width = 42
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WF_H: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'WF_H'
        HeaderAlignmentHorz = taCenter
        Width = 20
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WF_D: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'WF_D'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 20
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WF_I1: TcxGridDBBandedColumn
        Caption = 'Planning'#13#10'(3a)'
        DataBinding.FieldName = 'WF_I1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 54
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WF_I2: TcxGridDBBandedColumn
        Caption = 'Replenish'#13#10'Request'#13#10'(3b)'
        DataBinding.FieldName = 'WF_I2'
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1WF_I3: TcxGridDBBandedColumn
        Caption = 'Allocated'#13#10'(3c)'
        DataBinding.FieldName = 'WF_I3'
        HeaderAlignmentHorz = taCenter
        Width = 57
        Position.BandIndex = 7
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1wf_i3_cfm: TcxGridDBBandedColumn
        Caption = 'Cfmd'
        DataBinding.FieldName = 'wf_i3_cfm'
        HeaderAlignmentHorz = taCenter
        Width = 35
        Position.BandIndex = 7
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1AN_Y: TcxGridDBBandedColumn
        Caption = 'Yes'
        DataBinding.FieldName = 'AN_Y'
        HeaderAlignmentHorz = taCenter
        Width = 26
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1AN_N: TcxGridDBBandedColumn
        Caption = 'No'
        DataBinding.FieldName = 'AN_N'
        HeaderAlignmentHorz = taCenter
        Width = 20
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 332
    Width = 761
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 32
      Top = 8
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
      Left = 106
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Save'
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 180
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object ADODataSet1: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    AfterOpen = ADODataSet1AfterOpen
    CommandText = 'select * from phdb..tbl_swpm_wfdeploy1'
    CommandTimeout = 300
    Parameters = <>
    Left = 672
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 720
    Top = 56
  end
  object ADOQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    CommandTimeout = 300
    Parameters = <>
    SQL.Strings = (
      'select * from [ph.lwpm.wp].dbo.basecode')
    Left = 688
    Top = 120
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 688
    Top = 176
  end
end
