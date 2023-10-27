object frmlogging: Tfrmlogging
  Left = 192
  Top = 114
  Width = 870
  Height = 640
  Caption = 'Logging Enquiry'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 565
    Width = 862
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
      TabOrder = 0
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
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      TabOrder = 1
      Kind = bkClose
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 862
    Height = 565
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1SEQ: TcxGridDBColumn
        Caption = 'SEQ #'
        DataBinding.FieldName = 'SEQ'
      end
      object cxGrid1DBTableView1IP: TcxGridDBColumn
        Caption = 'Client IP'
        DataBinding.FieldName = 'IP'
        Width = 122
      end
      object cxGrid1DBTableView1USR: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'USR'
      end
      object cxGrid1DBTableView1FRMID: TcxGridDBColumn
        Caption = 'Function'
        DataBinding.FieldName = 'FRMID'
        Width = 187
      end
      object cxGrid1DBTableView1STRDT: TcxGridDBColumn
        Caption = 'Start DateTime'
        DataBinding.FieldName = 'STRDT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Kind = ckDateTime
        Width = 144
      end
      object cxGrid1DBTableView1ENDDT: TcxGridDBColumn
        Caption = 'End DateTime'
        DataBinding.FieldName = 'ENDDT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Kind = ckDateTime
        Width = 144
      end
      object cxGrid1DBTableView1TTLTM: TcxGridDBColumn
        Caption = 'Total Time (Mins)'
        DataBinding.FieldName = 'TTLTM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        Width = 124
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 96
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_logging'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 32
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 64
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 168
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ShortCut = 116
      Visible = False
      OnClick = FormShow
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
end
