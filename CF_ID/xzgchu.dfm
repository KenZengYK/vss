object frmxzgch: Tfrmxzgch
  Left = 192
  Top = 107
  Caption = #26597#38321#35009#31243#35672#21029#30908' Review CF_ID'
  ClientHeight = 339
  ClientWidth = 370
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
    Top = 48
    Width = 121
    Height = 25
    AutoSize = False
    Caption = #35009#31243#35672#21029#30908': '#13#10'CF_ID#'
  end
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 53
    Height = 13
    Caption = #24288' Factory '
  end
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 80
    Width = 329
    Height = 193
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = BitBtn1Click
    Columns = <
      item
        EditButtons = <>
        FieldName = 'prjno'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #35009#21106#27969#31243#35672#21029#30908' Cutting Flow ID#'
        Width = 181
      end
      item
        EditButtons = <>
        FieldName = 'gch'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24037#31243#34399' Proj#'
        Width = 94
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Edit1: TEdit
    Left = 144
    Top = 48
    Width = 153
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnChange = Edit1Change
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 296
    Width = 89
    Height = 25
    Caption = #36984#25799' Select'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 296
    Width = 81
    Height = 25
    Caption = #36864#20986' Exit'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object ComboBox1: TComboBox
    Left = 144
    Top = 16
    Width = 89
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'ALL'
    OnChange = ComboBox1Change
    Items.Strings = (
      'ALL'
      'SL'
      'RX'
      'CL')
  end
  object cxGrid1: TcxGrid
    Left = 24
    Top = 80
    Width = 329
    Height = 200
    TabOrder = 5
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1Column1
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #35009#31243#35672#21029#30908' CF_ID#'
        DataBinding.FieldName = 'prjno'
        HeaderAlignmentHorz = taCenter
        Width = 174
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #24037#31243#34399' Proj#'
        DataBinding.FieldName = 'gch'
        HeaderAlignmentHorz = taCenter
        Width = 119
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 48
  end
  object Query1: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'prjno'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 274
    Top = 376
  end
end
