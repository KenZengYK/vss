object frmal_category: Tfrmal_category
  Left = 489
  Top = 164
  Caption = 'T1 Overdue cause T1 '#36978#26399#25104#22240
  ClientHeight = 337
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 826
    Height = 41
    Align = alBottom
    TabOrder = 0
    object SpeedButton2: TSpeedButton
      Left = 48
      Top = 5
      Width = 25
      Height = 25
      Hint = 'Delete'
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        F000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
        F000FF000000000FF000FF0FFFFFFF0FF000FF000000000FF000FFFFFFFFFFFF
        F000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
        F000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 74
      Top = 5
      Width = 25
      Height = 25
      Hint = 'Save'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 100
      Top = 5
      Width = 25
      Height = 25
      Hint = 'Export'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 126
      Top = 5
      Width = 25
      Height = 25
      Hint = 'Exit'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object SpeedButton1: TSpeedButton
      Left = 22
      Top = 5
      Width = 25
      Height = 25
      Hint = 'New'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 826
    Height = 296
    Align = alClient
    TabOrder = 1
    object cxView0: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsal_reason
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxView0al_cde: TcxGridDBColumn
        Caption = 'Cde'
        DataBinding.FieldName = 'al_cde'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object cxView0al_des_c: TcxGridDBColumn
        Caption = 'Description (CN)'
        DataBinding.FieldName = 'al_des_c'
        HeaderAlignmentHorz = taCenter
        Width = 437
      end
      object cxView0al_des_e: TcxGridDBColumn
        Caption = 'Description (EN)'
        DataBinding.FieldName = 'al_des_e'
        HeaderAlignmentHorz = taCenter
        Width = 469
      end
    end
    object cxView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsal_reason
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Cause Group '#25104#22240#32068#21029
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Cause Category '#25104#22240#39006#21029
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Solution Follow-up/'#35299#27770#26041#27861#36319#36914
          HeaderAlignmentVert = vaTop
          Visible = False
        end>
      object cxView1al_cde: TcxGridDBBandedColumn
        Caption = 'Cde'
        DataBinding.FieldName = 'al_cde'
        HeaderAlignmentHorz = taCenter
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1al_grp_c: TcxGridDBBandedColumn
        Caption = 'CN'
        DataBinding.FieldName = 'al_grp_c'
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1al_grp_e: TcxGridDBBandedColumn
        Caption = 'EN'
        DataBinding.FieldName = 'al_grp_e'
        HeaderAlignmentHorz = taCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1al_des_c: TcxGridDBBandedColumn
        Caption = 'CN'
        DataBinding.FieldName = 'al_des_c'
        HeaderAlignmentHorz = taCenter
        Width = 250
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1al_des_e: TcxGridDBBandedColumn
        Caption = 'EN'
        DataBinding.FieldName = 'al_des_e'
        HeaderAlignmentHorz = taCenter
        Width = 300
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1al_item_cde: TcxGridDBBandedColumn
        Caption = 'Cde'
        DataBinding.FieldName = 'al_item_cde'
        HeaderAlignmentHorz = taCenter
        Width = 30
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1al_item_c: TcxGridDBBandedColumn
        Caption = 'CN'
        DataBinding.FieldName = 'al_item_c'
        HeaderAlignmentHorz = taCenter
        Width = 200
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1al_item_e: TcxGridDBBandedColumn
        Caption = 'EN'
        DataBinding.FieldName = 'al_item_e'
        HeaderAlignmentHorz = taCenter
        Width = 350
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object cut_al_reason: TADODataSet
    Connection = frmmain.ADOConnection1
    AfterPost = cut_al_reasonAfterPost
    OnNewRecord = cut_al_reasonNewRecord
    CommandTimeout = 300
    IndexFieldNames = 'al_cde;al_item_cde'
    Parameters = <>
    Left = 288
    Top = 233
  end
  object dsal_reason: TDataSource
    DataSet = cut_al_reason
    Left = 316
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
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 576
    Top = 232
  end
end
