object frmwl_pb: Tfrmwl_pb
  Left = 0
  Top = 0
  Caption = 'Items standby, sample approval & Prdn kick off command'
  ClientHeight = 460
  ClientWidth = 1181
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1181
    Height = 419
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = worksheet1.DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 15856062
        EditButtons = <>
        FieldName = 'TSHOP'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Ws'
        Width = 49
      end
      item
        Color = 15856062
        EditButtons = <>
        FieldName = 'PLINE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Line'
        Width = 42
      end
      item
        Color = 15856062
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Proj#'
        Width = 85
      end
      item
        Color = 15856062
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WO#'
      end
      item
        Color = 15856062
        EditButtons = <>
        FieldName = 'CWO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WO-'#13#10'suffix'
        Width = 35
      end
      item
        Color = 15856062
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'RWO-'#13#10'suffix'
        Width = 35
      end
      item
        Color = 15856062
        EditButtons = <>
        FieldName = 'FCCS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN-'#13#10'suffix'
        Width = 40
      end
      item
        Color = 15856062
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Clr'#13#10'Code'
        Width = 30
      end
      item
        Color = 15856062
        EditButtons = <>
        FieldName = 'SCQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN'#13#10'Qty'
        Width = 56
      end
      item
        Color = 15856062
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'CFKSRQ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sewing'#13#10'Start dd'
        Width = 45
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'WL_JHDT'
        Footers = <>
        Title.Caption = 'Itemsl standby|Plan'#13#10'-ning'
        Width = 45
      end
      item
        DisplayFormat = '0.00;-0.00;'#39#39
        EditButtons = <>
        FieldName = 'WL_JHP'
        Footers = <>
        Title.Caption = 'Items standby|%'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'WL_WC'
        Footers = <>
        Title.Caption = 'Itemsl standby|Finish'#13#10'-ed'
      end
      item
        DisplayFormat = '0.00;-0.00;'#39#39
        EditButtons = <>
        FieldName = 'WL_WCP'
        Footers = <>
        Title.Caption = 'Items standby|%'
        Width = 45
      end
      item
        Color = 15856062
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust Style'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'FYFS'
        Footers = <>
        Title.Caption = 'Sample approval|Type'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'JHRS'
        Footers = <>
        Title.Caption = 'Sample approval|Where make it?'
        Width = 45
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'PB_JHDT'
        Footers = <>
        Title.Caption = 'Sample approval|Plan'#13#10'-ning'
        Width = 45
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'LBL_SDT'
        Footers = <>
        Title.Caption = 'Sample approval|Appr'#13#10'-oval'
        Width = 45
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'LBL_ADT'
        Footers = <>
        Title.Caption = 'Sample approval|In-'#13#10'hand?'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'KHZL1'
        Footers = <>
        Title.Caption = 'Prdn'#13#10'Kick off'#13#10'Command'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'PRTWO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Printed WO'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'ITEM_FM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Full'#13#10'/Maj'
        Width = 28
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'ITEM_DT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Spec.'#13#10'items'#13#10'stand'#13#10'-by'
        Width = 40
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 419
    Width = 1181
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 88
      Top = 8
      Width = 96
      Height = 25
      Caption = 'QN Approval'
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
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 183
      Top = 8
      Width = 66
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 264
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Waiting for approval'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 352
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Printed'
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
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn13: TBitBtn
      Left = 489
      Top = 8
      Width = 80
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
      TabOrder = 5
      OnClick = BitBtn13Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1181
    Height = 419
    Align = alClient
    TabOrder = 2
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
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxView1FCCS
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1SCQTY
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.BandHeaderHeight = 60
      OptionsView.BandHeaderLineCount = 4
      Bands = <
        item
          Caption = 'Fty'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Ws'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Line'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Proj#'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'QN#'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'WO-'#13#10'suffix'
          HeaderAlignmentVert = vaTop
          Visible = False
        end
        item
          Caption = 'RWO-'#13#10'suffix'
          HeaderAlignmentVert = vaTop
          Visible = False
        end
        item
          Caption = 'QN-'#13#10'suffix'
          HeaderAlignmentVert = vaTop
          Visible = False
        end
        item
          Caption = 'ERP'#13#10'Clr'#13#10'code'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'QN'#13#10'Qty'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Sewing'#13#10'start dd'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Items standby'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Cust Style'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Sample approval'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Prdn'#13#10'kick-off'#13#10'command'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Printed'#13#10'WO'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Full'#13#10'/Maj'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Spec.'#13#10'items'#13#10'stand'#13#10'-by'
          HeaderAlignmentVert = vaTop
          Visible = False
        end>
      object cxView1TSHOP: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'TSHOP'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 49
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1PLINE: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'PLINE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 42
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1J_NO: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 85
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1J2_JOB: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'CWONO1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 112
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1CWO: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'CWO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1RWO: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'RWO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1FCCS: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'FCCS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1ACOL: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'ACOL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1SCQTY: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'SCQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 56
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1CFKSRQ: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'CFKSRQ'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1WL_JHDT: TcxGridDBBandedColumn
        Caption = 'Plan'#13#10'-ning'
        DataBinding.FieldName = 'WL_JHDT'
        HeaderAlignmentHorz = taCenter
        Width = 45
        Position.BandIndex = 11
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1WL_JHP: TcxGridDBBandedColumn
        Caption = '%'
        DataBinding.FieldName = 'WL_JHP'
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 11
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1WL_WC: TcxGridDBBandedColumn
        Caption = 'Finish'#13#10'-ed'
        DataBinding.FieldName = 'WL_WC'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 11
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1WL_WCP: TcxGridDBBandedColumn
        Caption = '%'
        DataBinding.FieldName = 'WL_WCP'
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 11
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1CSTYLE: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'CSTYLE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 86
        Position.BandIndex = 12
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1FYFS: TcxGridDBBandedColumn
        Caption = 'Type'
        DataBinding.FieldName = 'FYFS'
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 13
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1JHRS: TcxGridDBBandedColumn
        Caption = 'Where'#13#10'make it?'
        DataBinding.FieldName = 'JHRS'
        HeaderAlignmentHorz = taCenter
        Width = 45
        Position.BandIndex = 13
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1PB_JHDT: TcxGridDBBandedColumn
        Caption = 'Plan'#13#10'-ning'
        DataBinding.FieldName = 'PB_JHDT'
        HeaderAlignmentHorz = taCenter
        Width = 45
        Position.BandIndex = 13
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1LBL_SDT: TcxGridDBBandedColumn
        Caption = 'Appr'#13#10'-oval'
        DataBinding.FieldName = 'LBL_SDT'
        HeaderAlignmentHorz = taCenter
        Width = 45
        Position.BandIndex = 13
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1LBL_ADT: TcxGridDBBandedColumn
        Caption = 'In-'#13#10'hand?'
        DataBinding.FieldName = 'LBL_ADT'
        HeaderAlignmentHorz = taCenter
        Width = 45
        Position.BandIndex = 13
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxView1KHZL1: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'KHZL1'
        HeaderAlignmentHorz = taCenter
        Width = 52
        Position.BandIndex = 14
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1PRTWO: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'PRTWO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
        Position.BandIndex = 15
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1ITEM_FM: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'ITEM_FM'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
        Position.BandIndex = 16
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1ITEM_DT: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'ITEM_DT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 42
        Position.BandIndex = 17
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TPLANT: TcxGridDBBandedColumn
        Caption = '-'
        DataBinding.FieldName = 'TPLANT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 32
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule_plc'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 400
    Top = 240
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule_plc'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 344
    Top = 240
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule where pline='#39'T003U'#39' and flag3='#39'1s'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 288
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet3
    Left = 320
    Top = 200
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 384
    Top = 192
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 448
    Top = 184
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36554#38291#21046#21934#31805#25910#30906#35469#34920
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5122
        mmLeft = 39158
        mmTop = 1852
        mmWidth = 108215
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 6879
        mmLeft = 3440
        mmTop = 11641
        mmWidth = 190236
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36554#38291
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 3969
        mmTop = 13494
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25289#21517
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 15875
        mmTop = 13494
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#31243#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 30427
        mmTop = 13494
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27454#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 51858
        mmTop = 13494
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#21934
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 81492
        mmTop = 13494
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38991#33394
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 100806
        mmTop = 13494
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976#37327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 115094
        mmTop = 13494
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31805#21517#30906#35469
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 137054
        mmTop = 13494
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31805#25910#26085#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 165365
        mmTop = 13494
        mmWidth = 27781
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 15346
        mmTop = 11642
        mmWidth = 1852
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 29898
        mmTop = 11642
        mmWidth = 1852
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 51329
        mmTop = 11642
        mmWidth = 1852
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 80963
        mmTop = 11642
        mmWidth = 1852
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 100277
        mmTop = 11642
        mmWidth = 1852
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 114565
        mmTop = 11642
        mmWidth = 1852
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 136525
        mmTop = 11642
        mmWidth = 1852
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 164836
        mmTop = 11642
        mmWidth = 1852
        BandType = 0
      end
      object dtperiod001: TppLabel
        UserName = 'dtperiod001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 5556
        mmTop = 7938
        mmWidth = 54504
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25171#21360#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 149490
        mmTop = 7938
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 161661
        mmTop = 7938
        mmWidth = 15081
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 6085
        mmLeft = 3440
        mmTop = 0
        mmWidth = 190236
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSHOP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 3969
        mmTop = 1323
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PLINE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 15875
        mmTop = 1323
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 30427
        mmTop = 1323
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 51858
        mmTop = 1323
        mmWidth = 28840
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 81492
        mmTop = 1323
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ACOL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 100806
        mmTop = 1323
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SCQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 115094
        mmTop = 1323
        mmWidth = 21167
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 15346
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 29898
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 51329
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 80963
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 100277
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 114565
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 136525
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 164836
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object siLang1: TsiLang
    Version = '6.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    LangDelim = 1
    LangNames.Strings = (
      'English'
      'Traditional Chinese')
    Language = 'English'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields')
    Left = 536
    Top = 184
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0077006C005F0070006200010049007400
      65006D00730020007300740061006E006400620079002C002000730061006D00
      70006C006500200061007000700072006F00760061006C002000260020005000
      720064006E0020006B00690063006B0020006F0066006600200063006F006D00
      6D0061006E0064000100855F287599650B7AA65E2C00200079627F67C560C16C
      8C548B95A88C0763E44E01000D000A00420069007400420074006E0031000100
      53006100760065000100DD4F585B01000D000A00420069007400420074006E00
      320001004C0057004F00200041007000700072006F00760061006C000100BA78
      8D8A7865019801000D000A00420069007400420074006E003300010045007800
      6900740001000090FA5101000D000A00420069007400420074006E0034000100
      570061006900740069006E006700200066006F00720020006100700070007200
      6F00760061006C000100855FBA788D8A1752688801000D000A00420069007400
      420074006E00350001005000720069006E007400650064000100536270530100
      0D000A00700070004C006100620065006C0031000100CA8E93953652AE553D7C
      3665BA788D8A68880100CA8E93953652AE553D7C3665BA788D8A688801000D00
      0A00700070004C006100620065006C0032000100CA8E93950100CA8E93950100
      0D000A00700070004C006100620065006C0033000100C9620D540100C9620D54
      01000D000A00700070004C006100620065006C0034000100E55D0B7A5F860100
      E55D0B7A5F8601000D000A00700070004C006100620065006C00350001003E6B
      5F8601003E6B5F8601000D000A00700070004C006100620065006C0036000100
      3652AE5501003652AE5501000D000A00700070004C006100620065006C003700
      01004F98728201004F98728201000D000A00700070004C006100620065006C00
      380001007865CF9101007865CF9101000D000A00700070004C00610062006500
      6C00390001003D7C0D54BA788D8A01003D7C0D54BA788D8A01000D000A007000
      70004C006100620065006C003100300001003D7C3665E5651F6701003D7C3665
      E5651F6701000D000A00700070004C006100620065006C003100320001005362
      7053E5651F672000010053627053E5651F67200001000D000A00420069007400
      420074006E003100330001004500780070006F007200740001000E5CFA510100
      0D000A0063007800560069006500770031005400530048004F00500001002D00
      010001000D000A00630078005600690065007700310050004C0049004E004500
      01002D00010001000D000A0063007800560069006500770031004A005F004E00
      4F0001002D00010001000D000A0063007800560069006500770031004A003200
      5F004A004F00420001002D00010001000D000A00630078005600690065007700
      3100430057004F0001002D00010001000D000A00630078005600690065007700
      3100520057004F0001002D00010001000D000A00630078005600690065007700
      3100460043004300530001002D00010001000D000A0063007800560069006500
      77003100410043004F004C0001002D00010001000D000A006300780056006900
      6500770031005300430051005400590001002D00010001000D000A0063007800
      56006900650077003100430046004B0053005200510001002D00010001000D00
      0A00630078005600690065007700310057004C005F004A004800440054000100
      50006C0061006E0019001A002D006E0069006E0067000100088A835219001A00
      E5651F6701000D000A00630078005600690065007700310057004C005F004A00
      4800500001002500010001000D000A0063007800560069006500770031005700
      4C005F00570043000100460069006E0069007300680019001A002D0065006400
      01008C5B106201000D000A00630078005600690065007700310057004C005F00
      57004300500001002500010001000D000A006300780056006900650077003100
      43005300540059004C00450001002D00010001000D000A006300780056006900
      65007700310046005900460053000100540079007000650001007F672E7A5E98
      01000D000A0063007800560069006500770031004A0048005200530001005700
      680065007200650019001A006D0061006B0065002000690074003F0001003D7E
      E89019001A0036525C4F3F0001000D000A006300780056006900650077003100
      500042005F004A00480044005400010050006C0061006E0019001A002D006E00
      69006E0067000100088A835219001A00E5651F6701000D000A00630078005600
      69006500770031004C0042004C005F0053004400540001004100700070007200
      19001A002D006F00760061006C00010079627F6719001A00E5651F6701000D00
      0A0063007800560069006500770031004C0042004C005F004100440054000100
      49006E002D0019001A00680061006E0064003F0001003665305219001A00E565
      1F6701000D000A0063007800560069006500770031004B0048005A004C003100
      01002D00010001000D000A006300780056006900650077003100500052005400
      57004F0001002D00010001000D000A0063007800560069006500770031004900
      540045004D005F0046004D0001002D00010001000D000A006300780056006900
      6500770031004900540045004D005F004400540001002D00010001000D000A00
      6300780056006900650077003100540050004C0041004E00540001002D000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      72006D0077006C005F007000620001005400610068006F006D0061000100B065
      307D0E66D49A01000D000A00700070004C006100620065006C00310001005400
      610068006F006D0061000100B065307D0E66D49A01000D000A00700070004C00
      6100620065006C00320001005400610068006F006D0061000100B065307D0E66
      D49A01000D000A00700070004C006100620065006C0033000100540061006800
      6F006D0061000100B065307D0E66D49A01000D000A00700070004C0061006200
      65006C00340001005400610068006F006D0061000100B065307D0E66D49A0100
      0D000A00700070004C006100620065006C00350001005400610068006F006D00
      61000100B065307D0E66D49A01000D000A00700070004C006100620065006C00
      360001005400610068006F006D0061000100B065307D0E66D49A01000D000A00
      700070004C006100620065006C00370001005400610068006F006D0061000100
      B065307D0E66D49A01000D000A00700070004C006100620065006C0038000100
      5400610068006F006D0061000100B065307D0E66D49A01000D000A0070007000
      4C006100620065006C00390001005400610068006F006D0061000100B065307D
      0E66D49A01000D000A00700070004C006100620065006C003100300001005400
      610068006F006D0061000100B065307D0E66D49A01000D000A00640074007000
      6500720069006F00640030003000310001005400610068006F006D0061000100
      B065307D0E66D49A01000D000A00700070004C006100620065006C0031003200
      01005400610068006F006D0061000100B065307D0E66D49A01000D000A007000
      7000530079007300740065006D005600610072006900610062006C0065003100
      01005400610068006F006D0061000100B065307D0E66D49A01000D000A007000
      7000440042005400650078007400310001005400610068006F006D0061000100
      B065307D0E66D49A01000D000A00700070004400420054006500780074003200
      01005400610068006F006D0061000100B065307D0E66D49A01000D000A007000
      7000440042005400650078007400330001005400610068006F006D0061000100
      B065307D0E66D49A01000D000A00700070004400420054006500780074003400
      01005400610068006F006D0061000100B065307D0E66D49A01000D000A007000
      7000440042005400650078007400350001005400610068006F006D0061000100
      B065307D0E66D49A01000D000A00700070004400420054006500780074003600
      01005400610068006F006D0061000100B065307D0E66D49A01000D000A007000
      7000440042005400650078007400370001005400610068006F006D0061000100
      B065307D0E66D49A01000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074004400
      6C0067007300430061007000740069006F006E0073005F0055006E0069006300
      6F00640065000D000A005700610072006E0069006E0067000100570061007200
      6E0069006E006700010001000D000A004500720072006F007200010045007200
      72006F007200010001000D000A0049006E0066006F0072006D00610074006900
      6F006E00010049006E0066006F0072006D006100740069006F006E0001000100
      0D000A0043006F006E006600690072006D00010043006F006E00660069007200
      6D00010001000D000A0059006500730001002600590065007300010001000D00
      0A004E006F00010026004E006F00010001000D000A004F004B0001004F004B00
      010001000D000A00430061006E00630065006C000100430061006E0063006500
      6C00010001000D000A00410062006F007200740001002600410062006F007200
      7400010001000D000A0052006500740072007900010026005200650074007200
      7900010001000D000A00490067006E006F007200650001002600490067006E00
      6F0072006500010001000D000A0041006C006C000100260041006C006C000100
      01000D000A004E006F00200054006F00200041006C006C0001004E0026006F00
      200074006F00200041006C006C00010001000D000A0059006500730020005400
      6F00200041006C006C000100590065007300200074006F002000260041006C00
      6C00010001000D000A00480065006C00700001002600480065006C0070000100
      01000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0043006C00
      690065006E007400440061007400610053006500740032002E0043006F006D00
      6D0061006E00640054006500780074000100730065006C006500630074002000
      2A002000660072006F006D002000740062006C00730068006500640075006C00
      65005F0070006C006300010001000D000A0043006C00690065006E0074004400
      61007400610053006500740032002E00500072006F0076006900640065007200
      4E0061006D00650001006400730070007300630068006500640075006C006500
      010001000D000A0043006C00690065006E007400440061007400610053006500
      740031002E0043006F006D006D0061006E006400540065007800740001007300
      65006C0065006300740020002A002000660072006F006D002000740062006C00
      730068006500640075006C0065005F0070006C006300010001000D000A004300
      6C00690065006E007400440061007400610053006500740031002E0050007200
      6F00760069006400650072004E0061006D006500010064007300700073006300
      68006500640075006C006500010001000D000A0043006C00690065006E007400
      440061007400610053006500740033002E0043006F006D006D0061006E006400
      54006500780074000100730065006C0065006300740020002A00200066007200
      6F006D002000740062006C00730068006500640075006C006500200077006800
      650072006500200070006C0069006E0065003D00270054003000300033005500
      2700200061006E006400200066006C006100670033003D002700310073002700
      010001000D000A0043006C00690065006E007400440061007400610053006500
      740033002E00500072006F00760069006400650072004E0061006D0065000100
      6400730070007300630068006500640075006C006500010001000D000A007000
      70004400420050006900700065006C0069006E00650031002E00550073006500
      72004E0061006D00650001004400420050006900700065006C0069006E006500
      3100010001000D000A00700070005200650070006F007200740031002E004400
      6500760069006300650054007900700065000100530063007200650065006E00
      010001000D000A00700070004C006100620065006C0031002E00550073006500
      72004E0061006D00650001004C006100620065006C003100010001000D000A00
      700070005300680061007000650031002E0055007300650072004E0061006D00
      65000100530068006100700065003100010001000D000A00700070004C006100
      620065006C0032002E0055007300650072004E0061006D00650001004C006100
      620065006C003200010001000D000A00700070004C006100620065006C003300
      2E0055007300650072004E0061006D00650001004C006100620065006C003300
      010001000D000A00700070004C006100620065006C0034002E00550073006500
      72004E0061006D00650001004C006100620065006C003400010001000D000A00
      700070004C006100620065006C0035002E0055007300650072004E0061006D00
      650001004C006100620065006C003500010001000D000A00700070004C006100
      620065006C0036002E0055007300650072004E0061006D00650001004C006100
      620065006C003600010001000D000A00700070004C006100620065006C003700
      2E0055007300650072004E0061006D00650001004C006100620065006C003700
      010001000D000A00700070004C006100620065006C0038002E00550073006500
      72004E0061006D00650001004C006100620065006C003800010001000D000A00
      700070004C006100620065006C0039002E0055007300650072004E0061006D00
      650001004C006100620065006C003900010001000D000A00700070004C006100
      620065006C00310030002E0055007300650072004E0061006D00650001004C00
      6100620065006C0031003000010001000D000A00700070004C0069006E006500
      31002E0055007300650072004E0061006D00650001004C0069006E0065003100
      010001000D000A00700070004C0069006E00650032002E005500730065007200
      4E0061006D00650001004C0069006E0065003200010001000D000A0070007000
      4C0069006E00650033002E0055007300650072004E0061006D00650001004C00
      69006E0065003300010001000D000A00700070004C0069006E00650034002E00
      55007300650072004E0061006D00650001004C0069006E006500340001000100
      0D000A00700070004C0069006E00650035002E0055007300650072004E006100
      6D00650001004C0069006E0065003500010001000D000A00700070004C006900
      6E00650036002E0055007300650072004E0061006D00650001004C0069006E00
      65003600010001000D000A00700070004C0069006E00650037002E0055007300
      650072004E0061006D00650001004C0069006E0065003700010001000D000A00
      700070004C0069006E00650038002E0055007300650072004E0061006D006500
      01004C0069006E0065003800010001000D000A00640074007000650072006900
      6F0064003000300031002E0055007300650072004E0061006D00650001006400
      740070006500720069006F006400300030003100010001000D000A0070007000
      4C006100620065006C00310032002E0055007300650072004E0061006D006500
      01004C006100620065006C0031003200010001000D000A007000700053007900
      7300740065006D005600610072006900610062006C00650031002E0055007300
      650072004E0061006D0065000100530079007300740065006D00560061007200
      6900610062006C0065003100010001000D000A00700070005300680061007000
      650032002E0055007300650072004E0061006D00650001005300680061007000
      65003200010001000D000A007000700044004200540065007800740031002E00
      44006100740061004600690065006C00640001005400530048004F0050000100
      01000D000A007000700044004200540065007800740031002E00550073006500
      72004E0061006D00650001004400420054006500780074003100010001000D00
      0A007000700044004200540065007800740032002E0044006100740061004600
      690065006C006400010050004C0049004E004500010001000D000A0070007000
      44004200540065007800740032002E0055007300650072004E0061006D006500
      01004400420054006500780074003200010001000D000A007000700044004200
      540065007800740033002E0044006100740061004600690065006C0064000100
      4A005F004E004F00010001000D000A0070007000440042005400650078007400
      33002E0055007300650072004E0061006D006500010044004200540065007800
      74003300010001000D000A007000700044004200540065007800740034002E00
      44006100740061004600690065006C006400010043005300540059004C004500
      010001000D000A007000700044004200540065007800740034002E0055007300
      650072004E0061006D0065000100440042005400650078007400340001000100
      0D000A007000700044004200540065007800740035002E004400610074006100
      4600690065006C00640001004A0032005F004A004F004200010001000D000A00
      7000700044004200540065007800740035002E0055007300650072004E006100
      6D00650001004400420054006500780074003500010001000D000A0070007000
      44004200540065007800740036002E0044006100740061004600690065006C00
      64000100410043004F004C00010001000D000A00700070004400420054006500
      7800740036002E0055007300650072004E0061006D0065000100440042005400
      6500780074003600010001000D000A0070007000440042005400650078007400
      37002E0044006100740061004600690065006C00640001005300430051005400
      5900010001000D000A007000700044004200540065007800740037002E005500
      7300650072004E0061006D006500010044004200540065007800740037000100
      01000D000A00700070004C0069006E00650039002E0055007300650072004E00
      61006D00650001004C0069006E0065003900010001000D000A00700070004C00
      69006E006500310030002E0055007300650072004E0061006D00650001004C00
      69006E00650031003000010001000D000A00700070004C0069006E0065003100
      31002E0055007300650072004E0061006D00650001004C0069006E0065003100
      30003100010001000D000A00700070004C0069006E006500310032002E005500
      7300650072004E0061006D00650001004C0069006E0065003100320001000100
      0D000A00700070004C0069006E006500310033002E0055007300650072004E00
      61006D00650001004C0069006E00650031003300010001000D000A0070007000
      4C0069006E006500310034002E0055007300650072004E0061006D0065000100
      4C0069006E00650031003400010001000D000A00700070004C0069006E006500
      310035002E0055007300650072004E0061006D00650001004C0069006E006500
      31003500010001000D000A00700070004C0069006E006500310036002E005500
      7300650072004E0061006D00650001004C0069006E0065003100360001000100
      0D000A0053006100760065004400690061006C006F00670031002E0046006900
      6C0074006500720001002A002E0078006C0073007C002A002E0078006C007300
      010001000D000A00730074004C006F00630061006C00650073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      30005D002E005400690074006C0065002E00430061007000740069006F006E00
      0100570073000100CA8E939501000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B0031005D002E0054006900
      74006C0065002E00430061007000740069006F006E0001004C0069006E006500
      0100C96201000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0032005D002E005400690074006C0065002E00
      430061007000740069006F006E000100500072006F006A0023000100E55D0B7A
      5F8601000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B0033005D002E005400690074006C0065002E004300
      61007000740069006F006E00010057004F00230001003652AE555F8601000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0034005D002E005400690074006C0065002E004300610070007400
      69006F006E00010057004F002D0019001A007300750066006600690078000100
      3652AE552D0019001A008C5FB47D01000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0035005D002E005400
      690074006C0065002E00430061007000740069006F006E000100520057004F00
      2D0019001A0073007500660066006900780001002A8F3652AE552D0019001A00
      8C5FB47D01000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0036005D002E005400690074006C0065002E00
      430061007000740069006F006E00010051004E002D0019001A00730075006600
      6600690078000100786501982D0019001A008C5FB47D01000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      37005D002E005400690074006C0065002E00430061007000740069006F006E00
      010043006C00720019001A0043006F0064006500010072825F8601000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B0038005D002E005400690074006C0065002E0043006100700074006900
      6F006E00010051004E0019001A0051007400790001007865019819001A00F64E
      786501000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B0039005D002E005400690074006C0065002E004300
      61007000740069006F006E00010053006500770069006E00670019001A005300
      740061007200740020006400640001002B7E08548B95CB5919001A00E5651F67
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B00310030005D002E005400690074006C0065002E004300
      61007000740069006F006E0001004900740065006D0073006C00200073007400
      61006E006400620079007C0050006C0061006E0019001A002D006E0069006E00
      67000100855F287599650B7AA65E7C00088A8352E5651F6701000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B00310031005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001004900740065006D00730020007300740061006E00640062007900
      7C0025000100855F287599650B7AA65E7C00250001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003100
      32005D002E005400690074006C0065002E00430061007000740069006F006E00
      01004900740065006D0073006C0020007300740061006E006400620079007C00
      460069006E0069007300680019001A002D00650064000100855F287599650B7A
      A65E7C008C5B106201000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B00310033005D002E00540069007400
      6C0065002E00430061007000740069006F006E0001004900740065006D007300
      20007300740061006E006400620079007C0025000100855F287599650B7AA65E
      7C00250001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B00310034005D002E005400690074006C006500
      2E00430061007000740069006F006E0001004300750073007400200053007400
      79006C0065000100A25B3E6B5F8601000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B00310035005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010053006100
      6D0070006C006500200061007000700072006F00760061006C007C0054007900
      70006500010079627F67C560C16C7C007F672E7A5E9801000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      310036005D002E005400690074006C0065002E00430061007000740069006F00
      6E000100530061006D0070006C006500200061007000700072006F0076006100
      6C007C005700680065007200650020006D0061006B0065002000690074003F00
      010079627F67C560C16C7C003D7EE89036525C4F3F0001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      310037005D002E005400690074006C0065002E00430061007000740069006F00
      6E000100530061006D0070006C006500200061007000700072006F0076006100
      6C007C0050006C0061006E0019001A002D006E0069006E006700010079627F67
      C560C16C7C00088A8352E5651F6701000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B00310038005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010053006100
      6D0070006C006500200061007000700072006F00760061006C007C0041007000
      7000720019001A002D006F00760061006C00010079627F67C560C16C7C007962
      7F67E5651F6701000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B00310039005D002E005400690074006C00
      65002E00430061007000740069006F006E000100530061006D0070006C006500
      200061007000700072006F00760061006C007C0049006E002D0019001A006800
      61006E0064003F00010079627F67C560C16C7C0036653052E5651F6701000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B00320030005D002E005400690074006C0065002E00430061007000
      740069006F006E0001005000720064006E0019001A004B00690063006B002000
      6F006600660019001A0043006F006D006D0061006E00640001008B95A88C1900
      1A000763E44E01000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B00320031005D002E005400690074006C00
      65002E00430061007000740069006F006E0001005000720069006E0074006500
      6400200057004F000100F25D175270533652AE5501000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003200
      32005D002E005400690074006C0065002E00430061007000740069006F006E00
      0100460075006C006C0019001A002F004D0061006A00010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B00320033005D002E005400690074006C0065002E0043006100700074006900
      6F006E00010053007000650063002E0019001A006900740065006D0073001900
      1A007300740061006E00640019001A002D0062007900010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B0030005D002E00
      430061007000740069006F006E0001004600740079000100B05301000D000A00
      63007800560069006500770031002E00420061006E00640073005B0031005D00
      2E00430061007000740069006F006E000100570073000100CA8E939501000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003200
      5D002E00430061007000740069006F006E0001004C0069006E0065000100C962
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B0033005D002E00430061007000740069006F006E000100500072006F006A00
      23000100E55D0B7A5F8601000D000A0063007800560069006500770031002E00
      420061006E00640073005B0034005D002E00430061007000740069006F006E00
      010051004E00230001003652AE555F8601000D000A0063007800560069006500
      770031002E00420061006E00640073005B0035005D002E004300610070007400
      69006F006E00010057004F002D0019001A007300750066006600690078000100
      3652AE552D0019001A008C5FB47D01000D000A00630078005600690065007700
      31002E00420061006E00640073005B0036005D002E0043006100700074006900
      6F006E000100520057004F002D0019001A007300750066006600690078000100
      2A8F3652AE552D0019001A008C5FB47D01000D000A0063007800560069006500
      770031002E00420061006E00640073005B0037005D002E004300610070007400
      69006F006E00010051004E002D0019001A007300750066006600690078000100
      786501982D0019001A008C5FB47D01000D000A00630078005600690065007700
      31002E00420061006E00640073005B0038005D002E0043006100700074006900
      6F006E00010045005200500019001A0043006C00720019001A0063006F006400
      6500010072825F8601000D000A0063007800560069006500770031002E004200
      61006E00640073005B0039005D002E00430061007000740069006F006E000100
      51004E0019001A0051007400790001007865019819001A00F64E786501000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003100
      30005D002E00430061007000740069006F006E00010053006500770069006E00
      670019001A007300740061007200740020006400640001002B7E08548B95CB59
      19001A00E5651F6701000D000A0063007800560069006500770031002E004200
      61006E00640073005B00310031005D002E00430061007000740069006F006E00
      01004900740065006D00730020007300740061006E006400620079000100855F
      287599650B7AA65E01000D000A0063007800560069006500770031002E004200
      61006E00640073005B00310032005D002E00430061007000740069006F006E00
      0100430075007300740020005300740079006C0065000100A25B3E6B5F860100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      310033005D002E00430061007000740069006F006E000100530061006D007000
      6C006500200061007000700072006F00760061006C00010079627F67C560C16C
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B00310034005D002E00430061007000740069006F006E000100500072006400
      6E0019001A006B00690063006B002D006F006600660019001A0063006F006D00
      6D0061006E00640001008B95A88C19001A000763E44E01000D000A0063007800
      560069006500770031002E00420061006E00640073005B00310035005D002E00
      430061007000740069006F006E0001005000720069006E007400650064001900
      1A0057004F000100F25D175270533652AE5501000D000A006300780056006900
      6500770031002E00420061006E00640073005B00310036005D002E0043006100
      7000740069006F006E000100460075006C006C0019001A002F004D0061006A00
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B00310037005D002E00430061007000740069006F006E00010053007000
      650063002E0019001A006900740065006D00730019001A007300740061006E00
      640019001A002D0062007900010001000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      72006D0077006C005F00700062000100440045004600410055004C0054005F00
      430048004100520053004500540001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C0031000100440045004600410055004C0054005F004300
      48004100520053004500540001004300480049004E0045005300450042004900
      470035005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C0032000100440045004600410055004C0054005F0043004800
      4100520053004500540001004300480049004E00450053004500420049004700
      35005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C0033000100440045004600410055004C0054005F00430048004100
      520053004500540001004300480049004E004500530045004200490047003500
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C0034000100440045004600410055004C0054005F004300480041005200
      53004500540001004300480049004E0045005300450042004900470035005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C0035000100440045004600410055004C0054005F0043004800410052005300
      4500540001004300480049004E0045005300450042004900470035005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      36000100440045004600410055004C0054005F00430048004100520053004500
      540001004300480049004E0045005300450042004900470035005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      01004300480049004E0045005300450042004900470035005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0038000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00390001004400
      45004600410055004C0054005F00430048004100520053004500540001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003100300001004400
      45004600410055004C0054005F00430048004100520053004500540001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      4500540001000D000A006400740070006500720069006F006400300030003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      01004300480049004E0045005300450042004900470035005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      01004300480049004E0045005300450042004900470035005F00430048004100
      520053004500540001000D000A0070007000530079007300740065006D005600
      610072006900610062006C00650031000100440045004600410055004C005400
      5F00430048004100520053004500540001004300480049004E00450053004500
      42004900470035005F00430048004100520053004500540001000D000A007000
      700044004200540065007800740031000100440045004600410055004C005400
      5F00430048004100520053004500540001004300480049004E00450053004500
      42004900470035005F00430048004100520053004500540001000D000A007000
      700044004200540065007800740032000100440045004600410055004C005400
      5F00430048004100520053004500540001004300480049004E00450053004500
      42004900470035005F00430048004100520053004500540001000D000A007000
      700044004200540065007800740033000100440045004600410055004C005400
      5F00430048004100520053004500540001004300480049004E00450053004500
      42004900470035005F00430048004100520053004500540001000D000A007000
      700044004200540065007800740034000100440045004600410055004C005400
      5F00430048004100520053004500540001004300480049004E00450053004500
      42004900470035005F00430048004100520053004500540001000D000A007000
      700044004200540065007800740035000100440045004600410055004C005400
      5F00430048004100520053004500540001004300480049004E00450053004500
      42004900470035005F00430048004100520053004500540001000D000A007000
      700044004200540065007800740036000100440045004600410055004C005400
      5F00430048004100520053004500540001004300480049004E00450053004500
      42004900470035005F00430048004100520053004500540001000D000A007000
      700044004200540065007800740037000100440045004600410055004C005400
      5F00430048004100520053004500540001004300480049004E00450053004500
      42004900470035005F00430048004100520053004500540001000D000A00}
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 640
    Top = 248
  end
end
