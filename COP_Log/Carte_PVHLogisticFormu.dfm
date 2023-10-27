object frmCarte_PVHLogistic: TfrmCarte_PVHLogistic
  Left = 0
  Top = 0
  Caption = 
    'PVH'#39's Logistics Information (Destination & Buyer / Consignee / S' +
    'hip to)'
  ClientHeight = 312
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 271
    Width = 703
    Height = 41
    Align = alBottom
    TabOrder = 0
    object RzBackground1: TRzBackground
      Left = 1
      Top = 1
      Width = 701
      Height = 39
      Active = True
      Align = alClient
      GradientColorStart = 14216405
      GradientColorStop = 16776176
      GradientDirection = gdVerticalEnd
      ImageStyle = isCenter
      ShowGradient = True
      ShowImage = False
      ShowTexture = False
      ExplicitLeft = 56
      ExplicitTop = 8
      ExplicitWidth = 200
      ExplicitHeight = 100
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 81
      Height = 25
      Caption = #26032#22686
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 8
      Width = 81
      Height = 25
      Caption = #21034#38500
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 184
      Top = 8
      Width = 81
      Height = 25
      Caption = #20445#23384
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
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn5: TBitBtn
      Left = 264
      Top = 8
      Width = 81
      Height = 25
      Caption = #23566#20986'Excel'
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
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 344
      Top = 8
      Width = 81
      Height = 25
      Caption = #38928#35261
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      Left = 424
      Top = 8
      Width = 81
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 5
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 703
    Height = 271
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.AlwaysShowEditor = True
      object cxGrid1DBTableView1class_g: TcxGridDBColumn
        Caption = 'Group'
        DataBinding.FieldName = 'class_g'
      end
      object cxGrid1DBTableView1class_g_d: TcxGridDBColumn
        DataBinding.FieldName = 'class_g_d'
      end
      object cxGrid1DBTableView1class: TcxGridDBColumn
        DataBinding.FieldName = 'class'
      end
      object cxGrid1DBTableView1class_d: TcxGridDBColumn
        DataBinding.FieldName = 'class_d'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsView.CellAutoHeight = True
      OptionsView.HeaderAutoHeight = True
      object cxGrid1div: TcxGridDBColumn
        Caption = #23458#32068#21029
        DataBinding.FieldName = 'div'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 57
      end
      object cxGrid1pvh_dest: TcxGridDBColumn
        Caption = #30446#30340#22320#22283#23478
        DataBinding.FieldName = 'pvh_dest'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 53
      end
      object cxGrid1port: TcxGridDBColumn
        Caption = #38626#23736#28207#21475
        DataBinding.FieldName = 'port'
        HeaderAlignmentHorz = taCenter
        Width = 103
      end
      object cxGrid1incoterm: TcxGridDBColumn
        Caption = 'Trade Term (Incoterm)'
        DataBinding.FieldName = 'incoterm'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1buyer: TcxGridDBColumn
        Caption = 'Buyer (Invoice Bill to)'
        DataBinding.FieldName = 'buyer'
        HeaderAlignmentHorz = taCenter
        Width = 217
      end
      object cxGrid1consignee: TcxGridDBColumn
        Caption = 'Consignee'
        DataBinding.FieldName = 'consignee'
        HeaderAlignmentHorz = taCenter
        Width = 224
      end
      object cxGrid1shipto: TcxGridDBColumn
        Caption = 'Ship to (Final Destination)'
        DataBinding.FieldName = 'shipto'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Width = 230
      end
      object cxGrid1costco: TcxGridDBColumn
        Caption = 'Costco (Y/N?)'
        DataBinding.FieldName = 'costco'
        HeaderAlignmentHorz = taCenter
        Width = 49
      end
      object cxGrid1retail: TcxGridDBColumn
        Caption = 'Wholesale / Retail'
        DataBinding.FieldName = 'retail'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
  end
  object ADODataSet1: TADODataSet
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from tbl_carte_pvhlogistic'
    CommandTimeout = 300
    IndexFieldNames = 'div;seq'
    Parameters = <>
    Left = 184
    Top = 64
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls|*.xlsx'
    Filter = 'Excel files|*.xls|*.xlsx'
    Left = 184
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 256
    Top = 64
  end
  object ADOQuery1: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 328
    Top = 64
  end
end
