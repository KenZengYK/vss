object frmwzxz: Tfrmwzxz
  Left = 263
  Top = 200
  BorderIcons = [biSystemMenu]
  Caption = #37327#24230#20301#32622#36984#25799
  ClientHeight = 373
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 184
    Width = 3
    Height = 13
    Visible = False
  end
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 57
    Height = 13
    Caption = #37327#24230#20301#32622'   '
  end
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 48
    Width = 441
    Height = 281
    Color = 11927551
    DataSource = DataSource1
    Flat = False
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = BitBtn1Click
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cde'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22294#20301#32622#20195#30908
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'cmeas'
        Footers = <>
        ReadOnly = True
        Title.Caption = #37327#24230#20301#32622
        Width = 351
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 338
    Width = 73
    Height = 25
    Caption = 'OK'
    DoubleBuffered = True
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 88
    Top = 338
    Width = 73
    Height = 25
    Caption = 'Cancel'
    DoubleBuffered = True
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333333333333333333FFF33FF333FFF339993370733
      999333777FF37FF377733339993000399933333777F777F77733333399970799
      93333333777F7377733333333999399933333333377737773333333333990993
      3333333333737F73333333333331013333333333333777FF3333333333910193
      333333333337773FF3333333399000993333333337377737FF33333399900099
      93333333773777377FF333399930003999333337773777F777FF339993370733
      9993337773337333777333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Edit1: TEdit
    Left = 80
    Top = 16
    Width = 137
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 48
    Width = 441
    Height = 281
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
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
      object cxGrid1DBTableView1cde: TcxGridDBColumn
        Caption = #22294#20301#32622#20195#30908
        DataBinding.FieldName = 'cde'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 51
      end
      object cxGrid1DBTableView1cmeas: TcxGridDBColumn
        Caption = #37327#24230#20301#32622
        DataBinding.FieldName = 'cmeas'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 364
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object xh1: TCheckBox
    Left = 224
    Top = 344
    Width = 121
    Height = 17
    Caption = #21482#26356#26032#37327#24230#20301#32622
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 64
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select cde,cmeas,emeas,uom,methd,tolerence from sz_bastbl'
    FieldDefs = <
      item
        Name = 'cde'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'cmeas'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'emeas'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'uom'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'methd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'tolerence'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'cmeas'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 148
    Top = 64
  end
end
