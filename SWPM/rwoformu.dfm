object frmRWO: TfrmRWO
  Left = 192
  Top = 107
  Caption = 'Waiting for Create QN'
  ClientHeight = 444
  ClientWidth = 784
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 784
    Height = 346
    Align = alClient
    AllowedOperations = []
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    PopupMenu = PopupMenu1
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    OnTitleClick = DBGridEh1TitleClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SEL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Selection'
        Visible = False
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'PLINE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Line'
        Visible = False
        Width = 39
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'CUSTOMER'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Customer'
        Width = 61
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'SOPNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SO #'
        Width = 59
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'ORDLINE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SO Line'
        Width = 38
      end
      item
        Color = 14088905
        EditButtons = <>
        FieldName = 'STAT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Proj'#13#10'process'
        Title.Color = 14088905
        Width = 27
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Project #'
        Width = 70
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WO #'
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'CWO'
        Footers = <>
        Title.Caption = 'WO - Suffix'
        Width = 41
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 11795962
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CWO - Suffix'
        Width = 39
        OnEditButtonClick = DBGridEh1Columns8EditButtonClick
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'FLAG6'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Prod Category'
        Width = 35
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust Style'
        Width = 74
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Clr Code'
        Width = 31
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CWO Qty'
        Width = 46
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'IQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Scheduled Qty'
        Width = 55
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'RQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Rest Qty'
        Width = 45
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'CRDT'
        Footers = <>
        Title.Caption = 'RWO Creation Date'
        Width = 61
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'APPDT'
        Footers = <>
        Title.Caption = 'RWO Approval Date'
        Width = 61
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'FDT'
        Footers = <>
        Title.Caption = 'RWO FW Start Date'
        Width = 59
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'DDT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Delivery Date'
        Width = 60
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'EXFTY'
        Footers = <>
        Title.Caption = 'RWO Ex-fty Date'
        Width = 60
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Fty'
        Width = 43
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    PopupMenu = PopupMenu1
    TabOrder = 1
    object Label3: TLabel
      Left = 20
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Project'
    end
    object SpeedButton5: TSpeedButton
      Left = 456
      Top = 16
      Width = 65
      Height = 22
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
      NumGlyphs = 2
      Visible = False
      OnClick = SpeedButton5Click
    end
    object Label1: TLabel
      Left = 288
      Top = 16
      Width = 19
      Height = 13
      Caption = 'Line'
      Visible = False
    end
    object Label2: TLabel
      Left = 160
      Top = 16
      Width = 16
      Height = 13
      Caption = 'Fty'
    end
    object Edit3: TEdit
      Left = 64
      Top = 16
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit3KeyPress
    end
    object ComboBox1: TComboBox
      Left = 312
      Top = 16
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      Visible = False
    end
    object ComboBox2: TComboBox
      Left = 200
      Top = 16
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      Text = 'ALL'
      OnChange = SpeedButton5Click
      OnKeyPress = Edit3KeyPress
      Items.Strings = (
        'SL'
        'CL'
        'ALL')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 395
    Width = 784
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 600
      Top = 6
      Width = 68
      Height = 25
      Caption = 'Confirm'
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
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 28
      Top = 12
      Width = 68
      Height = 25
      Caption = 'Preview'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object Label4: TLabel
      Left = 496
      Top = 16
      Width = 88
      Height = 16
      Hint = 
        'Red Color - Not Scheduled with WOc & RWO # or Delivery Date in 3' +
        '0 Days'#13'Purple Color - Delivery Date in 60 Days'#13'Green Color - Del' +
        'ivery Date in 90 Days'
      Caption = 'Color Legend '
      Color = 13092603
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Visible = False
      OnMouseEnter = Label4MouseEnter
      OnMouseLeave = Label4MouseLeave
    end
    object BitBtn1: TBitBtn
      Left = 96
      Top = 12
      Width = 69
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
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 653
      Top = 6
      Width = 149
      Height = 25
      Caption = 'WO not yet create RWO'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      Visible = False
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 165
      Top = 12
      Width = 60
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 49
    Width = 784
    Height = 346
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0'
          Kind = skCount
          Column = cxGrid1DBTableView1Column4
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxGrid1DBTableView1Column9
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxGrid1DBTableView1Column11
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1Column16: TcxGridDBColumn
        Caption = 'Fty'
        DataBinding.FieldName = 'TPLANT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'CUSTOMER'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 55
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'WO'#13#10'pro-'#13#10'cess'
        DataBinding.FieldName = 'STAT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Header = worksheet1.cxStyle1
        Width = 30
        OnHeaderClick = cxGrid1DBTableView1Column2HeaderClick
      end
      object cxGrid1DBTableView1Column18: TcxGridDBColumn
        Caption = 'SO#'
        DataBinding.FieldName = 'SOPNO'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 61
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Proj#'
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'CWO#'
        DataBinding.FieldName = 'CWONO1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Prdt'#13#10'Cate-'#13#10'gory'
        DataBinding.FieldName = 'FLAG6'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Cust Style#'
        DataBinding.FieldName = 'CSTYLE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 65
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = 'ERP Style#'
        DataBinding.FieldName = 'ARTNO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = 'ERP'#13#10'Clr'#13#10'Code'
        DataBinding.FieldName = 'ACOL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
      end
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        Caption = 'CWO'#13#10'Qty'
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
      end
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        Caption = 'Created'#13#10'QN'#13#10'Qty'
        DataBinding.FieldName = 'IQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 47
      end
      object cxGrid1DBTableView1Column11: TcxGridDBColumn
        Caption = 'Rest'#13#10'Qty'
        DataBinding.FieldName = 'RQTY'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
      end
      object cxGrid1DBTableView1Column12: TcxGridDBColumn
        Caption = 'CWO'#13#10'Create'#13#10'dd'
        DataBinding.FieldName = 'CRDT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column13: TcxGridDBColumn
        Caption = 'CWO'#13#10'Cfm'#13#10'dd'
        DataBinding.FieldName = 'APPDT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column17: TcxGridDBColumn
        Caption = 'CWO'#13#10'FW Start'#13#10'dd'
        DataBinding.FieldName = 'FDT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column15: TcxGridDBColumn
        Caption = 'CWO'#13#10'Ex-fty'#13#10'dd'
        DataBinding.FieldName = 'EXFTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column14: TcxGridDBColumn
        Caption = 'WO'#13#10'Delivery'#13#10'dd'
        DataBinding.FieldName = 'DDT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object tblsop: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_sop'
    FieldDefs = <
      item
        Name = 'SOPNO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ORDLINE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CUSTOMER'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'J2_JOB'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FDT'
        DataType = ftDate
      end
      item
        Name = 'EXFTY'
        DataType = ftDateTime
      end
      item
        Name = 'DDT'
        DataType = ftDate
      end
      item
        Name = 'ARTNO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'ACOL'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'RQTY'
        DataType = ftInteger
      end
      item
        Name = 'RID'
        DataType = ftInteger
      end
      item
        Name = 'PLINE'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SEL'
        DataType = ftBoolean
      end
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FLAG1'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'STAT'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'IQTY'
        DataType = ftInteger
      end
      item
        Name = 'CWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'AMENDDATE'
        DataType = ftDate
      end
      item
        Name = 'CRDT'
        DataType = ftDate
      end
      item
        Name = 'APPDT'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;customer;ddt;j_no;ordline;acol'
      end
      item
        Name = 'idx2'
        Fields = 'tplant;ddt;customer;j_no;ordline;acol'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = tblsopAfterPost
    Left = 144
    Top = 328
  end
  object DataSource1: TDataSource
    DataSet = tblsop
    Left = 176
    Top = 328
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 208
    Top = 328
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 240
    Top = 328
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 272
    Top = 328
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 304
    Top = 328
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 336
    Top = 328
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 328
    object GetTMU1: TMenuItem
      Caption = 'Get TMU'
      Visible = False
    end
    object ModifyQty1: TMenuItem
      Caption = 'Modify Qty'
      Visible = False
    end
    object CompleteProject1: TMenuItem
      Caption = 'Complete Project'
      OnClick = CompleteProject1Click
    end
    object GetdatafromRWO1: TMenuItem
      Caption = 'Get data from CWO'
      OnClick = GetdatafromRWO1Click
    end
    object GetdatafromRWOII1: TMenuItem
      Caption = 'Get data from RWO II'
      Visible = False
      OnClick = GetdatafromRWOII1Click
    end
    object N1: TMenuItem
      Caption = 'Access RWO Data within 2 days'
      Visible = False
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #21462#26368#36817#20841#22825#30340#36650#21046#21934#20108#37096#36039#26009
      Visible = False
      OnClick = N2Click
    end
    object GetdataforPPWS1: TMenuItem
      Caption = 'Get data for Sample of PPWS'
      Visible = False
      OnClick = GetdataforPPWS1Click
    end
    object GetDatafromERP1: TMenuItem
      Caption = 'Get Data from ERP (Color Name, Style Cat, Unit Price, HS Code)'
      ShortCut = 24695
      Visible = False
      OnClick = GetDatafromERP1Click
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 400
    Top = 328
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 432
    Top = 328
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Waiting for Create QN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 99748
        mmTop = 3969
        mmWidth = 75406
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 10054
        mmLeft = 2646
        mmTop = 18521
        mmWidth = 261938
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 12435
        mmTop = 19579
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SO No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 26194
        mmTop = 3969
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Order '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 36777
        mmTop = 3969
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 36777
        mmTop = 8467
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 41275
        mmTop = 19579
        mmWidth = 7535
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 62177
        mmTop = 19579
        mmWidth = 7197
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 90223
        mmTop = 19579
        mmWidth = 11515
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Color'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 118534
        mmTop = 19579
        mmWidth = 5630
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 118534
        mmTop = 24077
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 128059
        mmTop = 19579
        mmWidth = 6181
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 241036
        mmTop = 19579
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Del dd '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 241036
        mmTop = 24077
        mmWidth = 7747
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 80433
        mmTop = 19579
        mmWidth = 5461
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 224632
        mmTop = 19579
        mmWidth = 6181
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty dd '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 224632
        mmTop = 24077
        mmWidth = 10541
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 3704
        mmTop = 19579
        mmWidth = 3302
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 29369
        mmTop = 19579
        mmWidth = 3937
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 198438
        mmTop = 12435
        mmWidth = 13208
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 213784
        mmTop = 12435
        mmWidth = 635
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 239184
        mmTop = 12435
        mmWidth = 6096
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 248444
        mmTop = 12435
        mmWidth = 635
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 153988
        mmTop = 19579
        mmWidth = 8340
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Process'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 29369
        mmTop = 24077
        mmWidth = 8255
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 128059
        mmTop = 24077
        mmWidth = 4530
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 155311
        mmTop = 24077
        mmWidth = 4530
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Created '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 138907
        mmTop = 19579
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 138907
        mmTop = 24077
        mmWidth = 8678
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Diff '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 257440
        mmTop = 24077
        mmWidth = 4487
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WOc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 71438
        mmTop = 19579
        mmWidth = 5080
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 166159
        mmTop = 19579
        mmWidth = 6181
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Create dd '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 166159
        mmTop = 24077
        mmWidth = 11303
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 186002
        mmTop = 19579
        mmWidth = 6181
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cfm dd '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 186002
        mmTop = 24077
        mmWidth = 8551
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 206111
        mmTop = 19579
        mmWidth = 6181
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FW Start dd '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 206111
        mmTop = 24077
        mmWidth = 13589
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ORDLINE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 70115
        mmTop = 8467
        mmWidth = 10054
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SOPNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 58738
        mmTop = 8467
        mmWidth = 7938
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUSTOMER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 12435
        mmTop = 794
        mmWidth = 12446
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 39158
        mmTop = 794
        mmWidth = 5757
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CWONO1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 59267
        mmTop = 794
        mmWidth = 10160
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 90223
        mmTop = 794
        mmWidth = 8297
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ACOL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 118534
        mmTop = 794
        mmWidth = 5927
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 130969
        mmTop = 794
        mmWidth = 4572
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 242094
        mmTop = 794
        mmWidth = 4741
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EXFTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 224632
        mmTop = 794
        mmWidth = 6943
        BandType = 4
      end
      object x002: TppDBText
        UserName = 'x002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 157163
        mmTop = 794
        mmWidth = 6096
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TPLANT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 3704
        mmTop = 794
        mmWidth = 8594
        BandType = 4
      end
      object x001: TppDBText
        UserName = 'x001'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'IQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 142611
        mmTop = 794
        mmWidth = 5503
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RWO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 81492
        mmTop = 794
        mmWidth = 5461
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'STAT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 31750
        mmTop = 794
        mmWidth = 5715
        BandType = 4
      end
      object x003: TppLabel
        UserName = 'x003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 261917
        mmTop = 794
        mmWidth = 550
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CWO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 72761
        mmTop = 794
        mmWidth = 5419
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'APPDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 186002
        mmTop = 794
        mmWidth = 7281
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CRDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 166159
        mmTop = 794
        mmWidth = 6096
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 206640
        mmTop = 794
        mmWidth = 4360
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 44186
      mmPrintPosition = 0
      object ttl001: TppLabel
        UserName = 'ttl001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 20087
        mmTop = 1058
        mmWidth = 550
        BandType = 7
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 6308
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 124354
        mmTop = 1058
        mmWidth = 11218
        BandType = 7
      end
      object x202: TppDBCalc
        UserName = 'x202'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 150548
        mmTop = 1058
        mmWidth = 12742
        BandType = 7
      end
      object ttl002: TppLabel
        UserName = 'ttl002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 206640
        mmTop = 1058
        mmWidth = 6879
        BandType = 7
      end
      object ttl003: TppLabel
        UserName = 'ttl003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 48419
        mmTop = 1058
        mmWidth = 550
        BandType = 7
      end
      object ttl004: TppLabel
        UserName = 'ttl004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 67204
        mmTop = 1058
        mmWidth = 550
        BandType = 7
      end
      object ttl005: TppLabel
        UserName = 'ttl005'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 100277
        mmTop = 1058
        mmWidth = 550
        BandType = 7
      end
      object ttl006: TppLabel
        UserName = 'ttl006'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 87577
        mmTop = 1058
        mmWidth = 550
        BandType = 7
      end
      object x102: TppDBCalc
        UserName = 'x102'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'IQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 136525
        mmTop = 1058
        mmWidth = 12150
        BandType = 7
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Visible = False
        mmHeight = 8731
        mmLeft = 2646
        mmTop = 33602
        mmWidth = 261938
        BandType = 7
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'China:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 3440
        mmTop = 34660
        mmWidth = 6900
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KB '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 4498
        mmTop = 41010
        mmWidth = 3641
        BandType = 7
      end
      object sl001: TppLabel
        UserName = 'sl001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 20087
        mmTop = 35719
        mmWidth = 550
        BandType = 7
      end
      object sl002: TppLabel
        UserName = 'sl002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 35169
        mmTop = 35719
        mmWidth = 550
        BandType = 7
      end
      object sl003: TppLabel
        UserName = 'sl003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 64008
        mmTop = 35719
        mmWidth = 550
        BandType = 7
      end
      object sl004: TppLabel
        UserName = 'sl004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 79354
        mmTop = 35719
        mmWidth = 550
        BandType = 7
      end
      object sl006: TppLabel
        UserName = 'sl006'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 99727
        mmTop = 35719
        mmWidth = 550
        BandType = 7
      end
      object sl005: TppLabel
        UserName = 'sl005'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 112427
        mmTop = 35719
        mmWidth = 550
        BandType = 7
      end
      object sl007: TppLabel
        UserName = 'sl007'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 137827
        mmTop = 35719
        mmWidth = 550
        BandType = 7
      end
      object sl008: TppLabel
        UserName = 'sl008'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 151056
        mmTop = 35719
        mmWidth = 550
        BandType = 7
      end
      object sl009: TppLabel
        UserName = 'sl009'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 165608
        mmTop = 35719
        mmWidth = 550
        BandType = 7
      end
      object kb001: TppLabel
        UserName = 'kb001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 20088
        mmTop = 41010
        mmWidth = 550
        BandType = 7
      end
      object kb002: TppLabel
        UserName = 'kb002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 35169
        mmTop = 41010
        mmWidth = 550
        BandType = 7
      end
      object kb003: TppLabel
        UserName = 'kb003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 64009
        mmTop = 41010
        mmWidth = 550
        BandType = 7
      end
      object kb004: TppLabel
        UserName = 'kb004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 79354
        mmTop = 41010
        mmWidth = 550
        BandType = 7
      end
      object kb006: TppLabel
        UserName = 'kb006'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 99727
        mmTop = 41010
        mmWidth = 550
        BandType = 7
      end
      object kb005: TppLabel
        UserName = 'kb005'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 112427
        mmTop = 41010
        mmWidth = 550
        BandType = 7
      end
      object kb007: TppLabel
        UserName = 'kb007'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 137827
        mmTop = 41010
        mmWidth = 550
        BandType = 7
      end
      object kb008: TppLabel
        UserName = 'kb008'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 151057
        mmTop = 41010
        mmWidth = 550
        BandType = 7
      end
      object kb009: TppLabel
        UserName = 'kb009'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 165609
        mmTop = 41010
        mmWidth = 550
        BandType = 7
      end
      object ttl010: TppLabel
        UserName = 'ttl010'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 77788
        mmTop = 1058
        mmWidth = 550
        BandType = 7
      end
      object sl010: TppLabel
        UserName = 'sl010'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 89938
        mmTop = 35719
        mmWidth = 550
        BandType = 7
      end
      object kb010: TppLabel
        UserName = 'kb010'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 89938
        mmTop = 41010
        mmWidth = 550
        BandType = 7
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Region: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 3440
        mmTop = 38100
        mmWidth = 9102
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 10583
        mmWidth = 266701
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '11.07'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 19579
            mmPrintPosition = 0
            object ppShape4: TppShape
              UserName = 'Shape4'
              mmHeight = 17198
              mmLeft = 2646
              mmTop = 2645
              mmWidth = 185473
              BandType = 1
            end
            object ppShape6: TppShape
              UserName = 'Shape6'
              Brush.Color = 15850183
              Pen.Style = psClear
              mmHeight = 12171
              mmLeft = 2910
              mmTop = 7408
              mmWidth = 184944
              BandType = 1
            end
            object ppShape5: TppShape
              UserName = 'Shape5'
              Brush.Color = 12615680
              Pen.Style = psClear
              mmHeight = 4498
              mmLeft = 2910
              mmTop = 2910
              mmWidth = 184944
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Waiting for Create QN Summary '#24453#24314#31435#25976#38913#25688#35201
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 6350
              mmTop = 3704
              mmWidth = 178065
              BandType = 1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 2646
              mmTop = 7408
              mmWidth = 185473
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Cust '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2963
              mmLeft = 15875
              mmTop = 8731
              mmWidth = 5503
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label43'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'CWO '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 41540
              mmTop = 8731
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label44'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'FW Start date '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2963
              mmLeft = 41540
              mmTop = 12171
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label41'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Bal Qty'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 62706
              mmTop = 8731
              mmWidth = 10848
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Bal  b/d of CWO Ex-fty dd by month'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 81492
              mmTop = 8731
              mmWidth = 99484
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label47'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Same'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 79375
              mmTop = 13494
              mmWidth = 10054
              BandType = 1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 25135
              mmTop = 7408
              mmWidth = 1588
              BandType = 1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 59002
              mmTop = 7408
              mmWidth = 1588
              BandType = 1
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 76200
              mmTop = 7408
              mmWidth = 1588
              BandType = 1
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 76200
              mmTop = 12435
              mmWidth = 111919
              BandType = 1
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 91546
              mmTop = 12435
              mmWidth = 2381
              BandType = 1
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 105569
              mmTop = 12435
              mmWidth = 2381
              BandType = 1
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 119592
              mmTop = 12435
              mmWidth = 2381
              BandType = 1
            end
            object ppLabel48: TppLabel
              UserName = 'Label48'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Next'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 93927
              mmTop = 13494
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label50'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Next 2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 107686
              mmTop = 13494
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel53: TppLabel
              UserName = 'Label53'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Next 3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 121444
              mmTop = 13494
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel54: TppLabel
              UserName = 'Label501'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Next 4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 134938
              mmTop = 13494
              mmWidth = 10054
              BandType = 1
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 133086
              mmTop = 12435
              mmWidth = 2381
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 146315
              mmTop = 12435
              mmWidth = 2381
              BandType = 1
            end
            object ppLabel55: TppLabel
              UserName = 'Label55'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Next 5'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 148432
              mmTop = 13494
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel56: TppLabel
              UserName = 'Label56'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Next 6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 162190
              mmTop = 13494
              mmWidth = 10054
              BandType = 1
            end
            object ppLine20: TppLine
              UserName = 'Line20'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 160073
              mmTop = 12435
              mmWidth = 2381
              BandType = 1
            end
            object ppLabel49: TppLabel
              UserName = 'Label49'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '(by month)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 41540
              mmTop = 15610
              mmWidth = 16669
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 40481
              mmTop = 7673
              mmWidth = 1588
              BandType = 1
            end
            object ppLabel51: TppLabel
              UserName = 'Label51'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Next 6+'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 175948
              mmTop = 13494
              mmWidth = 10054
              BandType = 1
            end
            object ppLine24: TppLine
              UserName = 'Line201'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 174096
              mmTop = 12700
              mmWidth = 2381
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label45'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '# of'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 26458
              mmTop = 8731
              mmWidth = 12435
              BandType = 1
            end
            object ppLabel52: TppLabel
              UserName = 'Label52'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'CWO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 26458
              mmTop = 12171
              mmWidth = 12435
              BandType = 1
            end
            object ppLine38: TppLine
              UserName = 'Line38'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 13494
              mmTop = 7408
              mmWidth = 1588
              BandType = 1
            end
            object ppLabel57: TppLabel
              UserName = 'Label57'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Fty'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 5027
              mmTop = 8731
              mmWidth = 6615
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              mmHeight = 4763
              mmLeft = 2646
              mmTop = 0
              mmWidth = 185473
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CUST'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2910
              mmLeft = 14288
              mmTop = 794
              mmWidth = 10583
              BandType = 4
            end
            object rqty000: TppDBText
              UserName = 'rqty000'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 67469
              mmTop = 794
              mmWidth = 6096
              BandType = 4
            end
            object fdt001: TppDBText
              UserName = 'fdt001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'FDT'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2910
              mmLeft = 41540
              mmTop = 794
              mmWidth = 16669
              BandType = 4
            end
            object rqty001: TppDBText
              UserName = 'DBText201'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY1'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 82286
              mmTop = 794
              mmWidth = 7451
              BandType = 4
            end
            object rqty002: TppDBText
              UserName = 'rqty002'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY2'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 96838
              mmTop = 794
              mmWidth = 7451
              BandType = 4
            end
            object rqty003: TppDBText
              UserName = 'rqty003'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY3'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 110596
              mmTop = 794
              mmWidth = 7451
              BandType = 4
            end
            object rqty004: TppDBText
              UserName = 'rqty004'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY4'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2910
              mmLeft = 178594
              mmTop = 794
              mmWidth = 7408
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
              mmHeight = 4498
              mmLeft = 25135
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
              mmHeight = 4498
              mmLeft = 59002
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine11: TppLine
              UserName = 'Line11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 76200
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
              mmHeight = 4498
              mmLeft = 91546
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
              mmHeight = 4498
              mmLeft = 105569
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
              mmHeight = 4498
              mmLeft = 119592
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
              mmHeight = 4498
              mmLeft = 133086
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 146315
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 160073
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object rqty005: TppDBText
              UserName = 'rqty005'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY5'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 124354
              mmTop = 794
              mmWidth = 7451
              BandType = 4
            end
            object rqty006: TppDBText
              UserName = 'rqty006'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY6'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 137319
              mmTop = 794
              mmWidth = 7451
              BandType = 4
            end
            object rqty007: TppDBText
              UserName = 'rqty007'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY7'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 151077
              mmTop = 794
              mmWidth = 7451
              BandType = 4
            end
            object ppLine21: TppLine
              UserName = 'Line21'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 40481
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 174096
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object rqty008: TppDBText
              UserName = 'rqty008'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY8'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 164836
              mmTop = 794
              mmWidth = 7451
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CWO'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2910
              mmLeft = 27252
              mmTop = 794
              mmWidth = 11377
              BandType = 4
            end
            object ppLine36: TppLine
              UserName = 'Line36'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 13494
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText20'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TPLANT'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2910
              mmLeft = 5027
              mmTop = 529
              mmWidth = 6615
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            BeforePrint = ppSummaryBand2BeforePrint
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 7938
            mmPrintPosition = 0
            object ppShape7: TppShape
              UserName = 'Shape7'
              mmHeight = 4763
              mmLeft = 2646
              mmTop = 1323
              mmWidth = 185473
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 60854
              mmTop = 2117
              mmWidth = 12742
              BandType = 7
            end
            object ppLine25: TppLine
              UserName = 'Line101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 59002
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppLine26: TppLine
              UserName = 'Line26'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 76200
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppLine27: TppLine
              UserName = 'Line27'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 91546
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppLine28: TppLine
              UserName = 'Line28'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 105569
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppLine29: TppLine
              UserName = 'Line29'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 119592
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppLine30: TppLine
              UserName = 'Line30'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 133086
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppLine31: TppLine
              UserName = 'Line31'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 146315
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppLine32: TppLine
              UserName = 'Line32'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 160073
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppLine33: TppLine
              UserName = 'Line33'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 40481
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppLine34: TppLine
              UserName = 'Line34'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 174096
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppLine35: TppLine
              UserName = 'Line35'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 25135
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY1'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 75671
              mmTop = 2117
              mmWidth = 14097
              BandType = 7
            end
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc5'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY2'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 90223
              mmTop = 2117
              mmWidth = 14097
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc6'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY3'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 103981
              mmTop = 2117
              mmWidth = 14097
              BandType = 7
            end
            object ppDBCalc7: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY5'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 117740
              mmTop = 2117
              mmWidth = 14097
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY6'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 130969
              mmTop = 2117
              mmWidth = 14097
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY7'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 144463
              mmTop = 2117
              mmWidth = 14097
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY8'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 158221
              mmTop = 2117
              mmWidth = 14097
              BandType = 7
            end
            object ppDBCalc11: TppDBCalc
              UserName = 'DBCalc101'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY4'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2963
              mmLeft = 171980
              mmTop = 2117
              mmWidth = 14097
              BandType = 7
            end
            object cust001: TppLabel
              UserName = 'cust001'
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
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 15610
              mmTop = 2117
              mmWidth = 7673
              BandType = 7
            end
            object cwo001: TppLabel
              UserName = 'cwo001'
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
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 28310
              mmTop = 2117
              mmWidth = 7673
              BandType = 7
            end
            object cfdt001: TppLabel
              UserName = 'cfdt001'
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
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 45773
              mmTop = 2117
              mmWidth = 7673
              BandType = 7
            end
            object ppLine37: TppLine
              UserName = 'Line37'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 13494
              mmTop = 1323
              mmWidth = 1852
              BandType = 7
            end
            object fty001: TppLabel
              UserName = 'fty001'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 3440
              mmTop = 2117
              mmWidth = 9790
              BandType = 7
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'TPLANT'
            DataPipeline = ppDBPipeline2
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline2'
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              BeforePrint = ppGroupFooterBand2BeforePrint
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppShape8: TppShape
                UserName = 'Shape8'
                mmHeight = 4763
                mmLeft = 2646
                mmTop = 0
                mmWidth = 185473
                BandType = 5
                GroupNo = 0
              end
              object scfdt01: TppLabel
                UserName = 'scfdt01'
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
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 45773
                mmTop = 794
                mmWidth = 7673
                BandType = 5
                GroupNo = 0
              end
              object scust01: TppLabel
                UserName = 'scust01'
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
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 15610
                mmTop = 794
                mmWidth = 7673
                BandType = 5
                GroupNo = 0
              end
              object scwo01: TppLabel
                UserName = 'scwo01'
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
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 28310
                mmTop = 794
                mmWidth = 7673
                BandType = 5
                GroupNo = 0
              end
              object ppLabel61: TppLabel
                UserName = 'Label61'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Sub-ttl'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 3440
                mmTop = 794
                mmWidth = 9790
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc12: TppDBCalc
                UserName = 'DBCalc102'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'RQTY8'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2910
                mmLeft = 158221
                mmTop = 794
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc13: TppDBCalc
                UserName = 'DBCalc13'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'RQTY4'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2910
                mmLeft = 171980
                mmTop = 794
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc14: TppDBCalc
                UserName = 'DBCalc14'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'RQTY'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2910
                mmLeft = 60854
                mmTop = 794
                mmWidth = 12700
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc15: TppDBCalc
                UserName = 'DBCalc15'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'RQTY1'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2910
                mmLeft = 75671
                mmTop = 794
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc16: TppDBCalc
                UserName = 'DBCalc16'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'RQTY2'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2910
                mmLeft = 90223
                mmTop = 794
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc17: TppDBCalc
                UserName = 'DBCalc17'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'RQTY3'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2910
                mmLeft = 103981
                mmTop = 794
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc18: TppDBCalc
                UserName = 'DBCalc18'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'RQTY5'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2910
                mmLeft = 117740
                mmTop = 794
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc19: TppDBCalc
                UserName = 'DBCalc19'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'RQTY6'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2910
                mmLeft = 130969
                mmTop = 794
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc20: TppDBCalc
                UserName = 'DBCalc20'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'RQTY7'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2910
                mmLeft = 144463
                mmTop = 794
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppLine39: TppLine
                UserName = 'Line39'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 59002
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine40: TppLine
                UserName = 'Line40'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 76200
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine41: TppLine
                UserName = 'Line41'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 91546
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine42: TppLine
                UserName = 'Line42'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 105569
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine43: TppLine
                UserName = 'Line43'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 119592
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine44: TppLine
                UserName = 'Line301'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 133086
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine45: TppLine
                UserName = 'Line45'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 146315
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine46: TppLine
                UserName = 'Line46'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 160073
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine47: TppLine
                UserName = 'Line47'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 40481
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine48: TppLine
                UserName = 'Line48'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 174096
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine49: TppLine
                UserName = 'Line49'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 25135
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
              object ppLine50: TppLine
                UserName = 'Line50'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4498
                mmLeft = 13494
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'TPLANT'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object sub001: TppLabel
          UserName = 'sub001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 20088
          mmTop = 529
          mmWidth = 550
          BandType = 5
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sub-Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2963
          mmLeft = 2646
          mmTop = 529
          mmWidth = 11261
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 124354
          mmTop = 529
          mmWidth = 11218
          BandType = 5
          GroupNo = 0
        end
        object x201: TppDBCalc
          UserName = 'x201'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'RQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 150548
          mmTop = 529
          mmWidth = 12742
          BandType = 5
          GroupNo = 0
        end
        object sub002: TppLabel
          UserName = 'sub002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 2910
          mmLeft = 206640
          mmTop = 529
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
        end
        object sub003: TppLabel
          UserName = 'sub003'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 48419
          mmTop = 529
          mmWidth = 550
          BandType = 5
          GroupNo = 0
        end
        object sub004: TppLabel
          UserName = 'sub004'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 67204
          mmTop = 529
          mmWidth = 550
          BandType = 5
          GroupNo = 0
        end
        object sub005: TppLabel
          UserName = 'sub005'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 100277
          mmTop = 529
          mmWidth = 550
          BandType = 5
          GroupNo = 0
        end
        object sub006: TppLabel
          UserName = 'sub006'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 2963
          mmLeft = 87577
          mmTop = 529
          mmWidth = 550
          BandType = 5
          GroupNo = 0
        end
        object x101: TppDBCalc
          UserName = 'x101'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'IQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 136525
          mmTop = 529
          mmWidth = 12150
          BandType = 5
          GroupNo = 0
        end
        object sub010: TppLabel
          UserName = 'sub010'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 2963
          mmLeft = 77788
          mmTop = 529
          mmWidth = 550
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DataSet2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 392
    Top = 184
  end
  object e4xls1: TQExport4XLS
    DataSet = ClientDataSet1
    About = '(About EMS AdvancedExport)'
    _Version = '4.1.0.6'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    MergedCells = <>
    Left = 480
    Top = 328
  end
  object dlgSave1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 528
    Top = 328
  end
  object ADOQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 432
    Top = 184
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 400
    Top = 288
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 368
    Top = 288
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from v_rwos'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 336
    Top = 288
  end
  object siLang1: TsiLang
    Version = '6.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    ActiveLanguage = 2
    LangDelim = 1
    LangNames.Strings = (
      'Traditional Chinese'
      'English'
      'Bengali')
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
    Left = 520
    Top = 184
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00520057004F000100855FFA5ECB7A7865
      01980100570061006900740069006E006700200066006F007200200043007200
      6500610074006500200051004E00010001000D000A004C006100620065006C00
      33000100E55D0B7A5F8620000100500072006F006A0065006300740001000100
      0D000A005300700065006500640042007500740074006F006E0035000100BA78
      9A5B01004F004B00010001000D000A004C006100620065006C00310001004C00
      69006E0065000100010001000D000A004C006100620065006C0032000100E05E
      20000100460074007900010001000D000A005300700065006500640042007500
      740074006F006E003100010043006F006E006600690072006D00010001000100
      0D000A005300700065006500640042007500740074006F006E00320001001098
      BD8901005000720065007600690065007700010001000D000A004C0061006200
      65006C003400010043006F006C006F00720020004C006500670065006E006400
      20000100010001000D000A00420069007400420074006E00310001000E5CFA51
      01004500780070006F0072007400010001000D000A0042006900740042007400
      6E003200010057004F0020006E006F0074002000790065007400200063007200
      65006100740065002000520057004F000100010001000D000A00420069007400
      420074006E00330001000090FA5101004500780069007400010001000D000A00
      47006500740054004D00550031000100470065007400200054004D0055000100
      010001000D000A004D006F006400690066007900510074007900310001004D00
      6F00640069006600790020005100740079000100010001000D000A0043006F00
      6D0070006C00650074006500500072006F006A00650063007400310001004300
      6F006D0070006C006500740065002000500072006F006A006500630074000100
      010001000D000A004700650074006400610074006100660072006F006D005200
      57004F0031000100470065007400200064006100740061002000660072006F00
      6D002000520057004F000100010001000D000A00470065007400640061007400
      6100660072006F006D00520057004F0049004900310001004700650074002000
      64006100740061002000660072006F006D002000520057004F00200049004900
      0100010001000D000A004E0031000100D6530067D18F6951295984762A8F3652
      AE55C78C996501004100630063006500730073002000520057004F0020004400
      6100740061002000770069007400680069006E00200032002000640061007900
      7300010001000D000A004E0032000100D6530067D18F6951295984762A8F3652
      AE558C4EE890C78C99650100010001000D000A00470065007400640061007400
      610066006F007200500050005700530031000100470065007400200064006100
      74006100200066006F0072002000530061006D0070006C00650020006F006600
      200050005000570053000100010001000D000A00470065007400440061007400
      6100660072006F006D0045005200500031000100470065007400200044006100
      740061002000660072006F006D0020004500520050002000280043006F006C00
      6F00720020004E0061006D0065002C0020005300740079006C00650020004300
      610074002C00200055006E00690074002000500072006900630065002C002000
      48005300200043006F006400650029000100010001000D000A00700070004C00
      6100620065006C0031000100520057004F00200020002D002D002D002D002000
      2000570061006900740069006E006700200066006F0072002000530063006800
      6500640075006C0069006E0067000100010001000D000A00700070004C006100
      620065006C003200010043007500730074006F006D0065007200010001000100
      0D000A00700070004C006100620065006C003300010053004F0020004E006F00
      2E000100010001000D000A00700070004C006100620065006C00340001004F00
      720064006500720020000100010001000D000A00700070004C00610062006500
      6C00350001004C0069006E0065000100010001000D000A00700070004C006100
      620065006C0036000100500072006F006A006500630074000100010001000D00
      0A00700070004C006100620065006C003700010057004F000100010001000D00
      0A00700070004C006100620065006C0038000100430075007300740020005300
      740079006C0065000100010001000D000A00700070004C006100620065006C00
      3900010043006F006C006F0072000100010001000D000A00700070004C006100
      620065006C0031003000010043006F00640065000100010001000D000A007000
      70004C006100620065006C00310031000100520057004F002000010001000100
      0D000A00700070004C006100620065006C00310032000100440065006C006900
      76006500720079000100010001000D000A00700070004C006100620065006C00
      31003300010044006100740065000100010001000D000A00700070004C006100
      620065006C00310034000100520057004F000100010001000D000A0070007000
      4C006100620065006C00310035000100520057004F0020000100010001000D00
      0A00700070004C006100620065006C00310036000100450078002D0066007400
      79000100010001000D000A00700070004C006100620065006C00310037000100
      4600740079000100010001000D000A00700070004C006100620065006C003100
      38000100500072006F006A006500630074000100010001000D000A0070007000
      4C006100620065006C003100390001005000720069006E007400650064002000
      4F006E000100010001000D000A00700070004C006100620065006C0032003000
      010050006100670065000100010001000D000A00700070004C00610062006500
      6C00320031000100420061006C0061006E00630065000100010001000D000A00
      700070004C006100620065006C00320033000100500072006F00630065007300
      73000100010001000D000A00700070004C006100620065006C00320035000100
      20005100740079000100010001000D000A00700070004C006100620065006C00
      32003600010020005100740079000100010001000D000A00700070004C006100
      620065006C003200370001005300630068006500640075006C00650064000100
      010001000D000A00700070004C006100620065006C0032003800010020005100
      740079000100010001000D000A00700070004C006100620065006C0032003900
      0100440069006600660020000100010001000D000A00700070004C0061006200
      65006C0033003300010057004F0063000100010001000D000A00700070004C00
      6100620065006C00330035000100520057004F00200043007200650061007400
      69006F006E000100010001000D000A00700070004C006100620065006C003300
      3600010044006100740065000100010001000D000A00700070004C0061006200
      65006C00330037000100520057004F00200041007000700072006F0076006100
      6C00200020000100010001000D000A00700070004C006100620065006C003300
      38000100440061007400650020000100010001000D000A00700070004C006100
      620065006C00330039000100520057004F002000460057002000010001000100
      0D000A00700070004C006100620065006C003400300001005300740061007200
      74002000440061007400650020000100010001000D000A00700070004C006100
      620065006C0032003200010054006F00740061006C003A000100010001000D00
      0A00700070004C006100620065006C003300310001004300680069006E006100
      3A000100010001000D000A00700070004C006100620065006C00330032000100
      4B00420020000100010001000D000A00700070004C006100620065006C003300
      3400010052006500670069006F006E003A0020000100010001000D000A007000
      70004C006100620065006C00330030000100520057004F0020002D0020005700
      61006900740069006E006700200066006F007200200053006300680065006400
      75006C0069006E0067002000530075006D006D00610072007900010001000100
      0D000A00700070004C006100620065006C003400320001004300750073007400
      20000100010001000D000A00700070004C006100620065006C00340033000100
      520057004F0020000100010001000D000A00700070004C006100620065006C00
      3400340001004600570020005300740061007200740020006400610074006500
      20000100010001000D000A00700070004C006100620065006C00340031000100
      420061006C0061006E006300650020000100010001000D000A00700070004C00
      6100620065006C00340036000100420061006C0061006E006300650020002000
      42002F0044002000620079002000520057004F002000450078002D0066007400
      7900200064006100740065000100010001000D000A00700070004C0061006200
      65006C00340037000100530061006D00650020000100010001000D000A007000
      70004C006100620065006C003200340001005300750062002D0054006F007400
      61006C003A000100010001000D000A0063007800470072006900640031004400
      42005400610062006C0065005600690065007700310043006F006C0075006D00
      6E003100010043007500730074006F006D00650072000100010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      65007700310043006F006C0075006D006E0032000100500072006F006A001900
      1A00700072006F002D0019001A0063006500730073000100010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      65007700310043006F006C0075006D006E0033000100500072006F006A002300
      0100010001000D000A0063007800470072006900640031004400420054006100
      62006C0065005600690065007700310043006F006C0075006D006E0034000100
      430057004F0023000100010001000D000A006300780047007200690064003100
      440042005400610062006C0065005600690065007700310043006F006C007500
      6D006E0035000100500072006400740019001A00430061007400650019001A00
      2D00670072006F00720079000100010001000D000A0063007800470072006900
      64003100440042005400610062006C0065005600690065007700310043006F00
      6C0075006D006E0036000100430075007300740020005300740079006C006500
      23000100010001000D000A006300780047007200690064003100440042005400
      610062006C0065005600690065007700310043006F006C0075006D006E003700
      010045005200500020005300740079006C00650023000100010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      65007700310043006F006C0075006D006E003800010045005200500019001A00
      43006C00720019001A0043006F00640065000100010001000D000A0063007800
      47007200690064003100440042005400610062006C0065005600690065007700
      310043006F006C0075006D006E0039000100430057004F0019001A0051007400
      79000100010001000D000A006300780047007200690064003100440042005400
      610062006C0065005600690065007700310043006F006C0075006D006E003100
      300001005300630068002E0019001A005100740079000100010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      65007700310043006F006C0075006D006E003100310001005200650073007400
      19001A005100740079000100010001000D000A00630078004700720069006400
      3100440042005400610062006C0065005600690065007700310043006F006C00
      75006D006E003100320001004300720065006100740069006F006E0019001A00
      640064000100010001000D000A00630078004700720069006400310044004200
      5400610062006C0065005600690065007700310043006F006C0075006D006E00
      31003300010041007000700072006F00760061006C0019001A00640064000100
      010001000D000A00630078004700720069006400310044004200540061006200
      6C0065005600690065007700310043006F006C0075006D006E00310037000100
      4600570020005300740061007200740019001A00640064000100010001000D00
      0A006300780047007200690064003100440042005400610062006C0065005600
      690065007700310043006F006C0075006D006E00310035000100450078002D00
      66007400790019001A00640064000100010001000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031004300
      6F006C0075006D006E00310034000100440065006C0069007600650072007900
      19001A00640064000100010001000D000A006300780047007200690064003100
      440042005400610062006C0065005600690065007700310043006F006C007500
      6D006E003100360001004600740079000100010001000D000A00630078004700
      7200690064003100440042005400610062006C00650056006900650077003100
      43006F006C0075006D006E0031003800010053004F0023000100010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A004C006100620065006C0034000100520065006400200043006F006C00
      6F00720020002D0020004E006F00740020005300630068006500640075006C00
      6500640020007700690074006800200057004F00630020002600200052005700
      4F002000230020006F0072002000440065006C00690076006500720079002000
      4400610074006500200069006E00200033003000200044006100790073001900
      50007500720070006C006500200043006F006C006F00720020002D0020004400
      65006C006900760065007200790020004400610074006500200069006E002000
      3600300020004400610079007300190047007200650065006E00200043006F00
      6C006F00720020002D002000440065006C006900760065007200790020004400
      610074006500200069006E002000390030002000440061007900730001000100
      01000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066007200
      6D00520057004F0001004D0053002000530061006E0073002000530065007200
      6900660001005400610068006F006D006100010001000D000A004C0061006200
      65006C00340001004D0053002000530061006E00730020005300650072006900
      660001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003200010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C003300010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0034000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3600010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003700010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C003800010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0039000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0031003000010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003200010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003300010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100340001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0031003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      31003600010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310037000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0031003800010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003900
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A0070007000530079007300740065006D005600610072006900610062006C00
      65003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320030000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070005300
      79007300740065006D005600610072006900610062006C006500320001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0032003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      32003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320035000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0032003600010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003800010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0032003900010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300330001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0033003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      33003600010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330037000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0033003800010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0033003900
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0034003000010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      6500780074003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400320001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004400420054006500780074003300010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200540065007800
      74003400010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740035000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      420054006500780074003600010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003800010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      6500780074003900010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400310031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7800300030003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400310032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7800300030003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400310030000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200540065007800740031003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A0078003000300033000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200540065007800740031003400010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      65007800740031003500010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740031003600
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003100370001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00740074006C003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C0063003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00780032003000320001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00740074006C003000
      30003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00740074006C00300030003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A00740074006C00300030003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00740074006C00300030003500010041007200690061006C00010054006100
      68006F006D006100010001000D000A00740074006C0030003000360001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007800
      310030003200010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0033003100010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C0033003200010041007200690061006C00010054006100
      68006F006D006100010001000D000A0073006C00300030003100010041007200
      690061006C0001005400610068006F006D006100010001000D000A0073006C00
      300030003200010041007200690061006C0001005400610068006F006D006100
      010001000D000A0073006C00300030003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A0073006C003000300034000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      73006C00300030003600010041007200690061006C0001005400610068006F00
      6D006100010001000D000A0073006C0030003000350001004100720069006100
      6C0001005400610068006F006D006100010001000D000A0073006C0030003000
      3700010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0073006C00300030003800010041007200690061006C00010054006100
      68006F006D006100010001000D000A0073006C00300030003900010041007200
      690061006C0001005400610068006F006D006100010001000D000A006B006200
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A006B006200300030003200010041007200690061006C000100
      5400610068006F006D006100010001000D000A006B0062003000300033000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      6B006200300030003400010041007200690061006C0001005400610068006F00
      6D006100010001000D000A006B00620030003000360001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006B00620030003000
      3500010041007200690061006C0001005400610068006F006D00610001000100
      0D000A006B006200300030003700010041007200690061006C00010054006100
      68006F006D006100010001000D000A006B006200300030003800010041007200
      690061006C0001005400610068006F006D006100010001000D000A006B006200
      300030003900010041007200690061006C0001005400610068006F006D006100
      010001000D000A00740074006C00300031003000010041007200690061006C00
      01005400610068006F006D006100010001000D000A0073006C00300031003000
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A006B006200300031003000010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0033003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0033003000010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0034003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003400330001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0034003400010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      34003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00340036000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0034003700010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      3800010041007200690061006C0001005400610068006F006D00610001000100
      0D000A007200710074007900300030003000010041007200690061006C000100
      5400610068006F006D006100010001000D000A00660064007400300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007200710074007900300030003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A007200710074007900300030003200
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007200710074007900300030003300010041007200690061006C0001005400
      610068006F006D006100010001000D000A007200710074007900300030003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007000700044004200430061006C0063003200010041007200690061006C00
      01005400610068006F006D006100010001000D000A0073007500620030003000
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003200340001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      430061006C0063003300010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007800320030003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A0073007500620030003000
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00730075006200300030003300010041007200690061006C0001005400
      610068006F006D006100010001000D000A007300750062003000300034000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      730075006200300030003500010041007200690061006C000100540061006800
      6F006D006100010001000D000A00730075006200300030003600010041007200
      690061006C0001005400610068006F006D006100010001000D000A0078003100
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00730075006200300031003000010041007200690061006C000100
      5400610068006F006D006100010001000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      43006F006D0062006F0042006F00780032002E004900740065006D0073000100
      53004C002C00470047002C00520058000100010001000D000A00730074004400
      6C0067007300430061007000740069006F006E0073005F0055006E0069006300
      6F00640065000D000A005700610072006E0069006E0067000100570061007200
      6E0069006E0067000100010001000D000A004500720072006F00720001004500
      720072006F0072000100010001000D000A0049006E0066006F0072006D006100
      740069006F006E00010049006E0066006F0072006D006100740069006F006E00
      0100010001000D000A0043006F006E006600690072006D00010043006F006E00
      6600690072006D000100010001000D000A005900650073000100260059006500
      73000100010001000D000A004E006F00010026004E006F000100010001000D00
      0A004F004B0001004F004B000100010001000D000A00430061006E0063006500
      6C000100430061006E00630065006C000100010001000D000A00410062006F00
      7200740001002600410062006F00720074000100010001000D000A0052006500
      74007200790001002600520065007400720079000100010001000D000A004900
      67006E006F007200650001002600490067006E006F0072006500010001000100
      0D000A0041006C006C000100260041006C006C000100010001000D000A004E00
      6F00200054006F00200041006C006C0001004E0026006F00200074006F002000
      41006C006C000100010001000D000A00590065007300200054006F0020004100
      6C006C000100590065007300200074006F002000260041006C006C0001000100
      01000D000A00480065006C00700001002600480065006C007000010001000100
      0D000A007300740053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00740062006C00
      73006F0070002E0043006F006D006D0061006E00640054006500780074000100
      730065006C0065006300740020002A002000660072006F006D00200074006200
      6C005F0073006F0070000100010001000D000A00740062006C0073006F007000
      2E00500072006F00760069006400650072004E0061006D006500010064007300
      70007300630068006500640075006C0065000100010001000D000A0043006C00
      690065006E007400440061007400610053006500740031002E00500072006F00
      760069006400650072004E0061006D0065000100640073007000730063006800
      6500640075006C0065000100010001000D000A0043006C00690065006E007400
      440061007400610053006500740032002E00500072006F007600690064006500
      72004E0061006D00650001006400730070007300630068006500640075006C00
      65000100010001000D000A0043006C00690065006E0074004400610074006100
      53006500740033002E00500072006F00760069006400650072004E0061006D00
      650001006400730070007300630068006500640075006C006500010001000100
      0D000A0043006C00690065006E00740044006100740061005300650074003400
      2E00500072006F00760069006400650072004E0061006D006500010064007300
      70007300630068006500640075006C0065000100010001000D000A0051007500
      65007200790031002E00500072006F00760069006400650072004E0061006D00
      650001006400730070007300630068006500640075006C006500010001000100
      0D000A00700070004400420050006900700065006C0069006E00650031002E00
      55007300650072004E0061006D00650001004400420050006900700065006C00
      69006E00650031000100010001000D000A00700070005200650070006F007200
      740031002E004400650076006900630065005400790070006500010053006300
      7200650065006E000100010001000D000A00700070004C006100620065006C00
      31002E0055007300650072004E0061006D00650001004C006100620065006C00
      31000100010001000D000A00700070005300680061007000650031002E005500
      7300650072004E0061006D006500010053006800610070006500310001000100
      01000D000A00700070004C006100620065006C0032002E005500730065007200
      4E0061006D00650001004C006100620065006C0032000100010001000D000A00
      700070004C006100620065006C0033002E0055007300650072004E0061006D00
      650001004C006100620065006C0033000100010001000D000A00700070004C00
      6100620065006C0034002E0055007300650072004E0061006D00650001004C00
      6100620065006C0034000100010001000D000A00700070004C00610062006500
      6C0035002E0055007300650072004E0061006D00650001004C00610062006500
      6C0035000100010001000D000A00700070004C006100620065006C0036002E00
      55007300650072004E0061006D00650001004C006100620065006C0036000100
      010001000D000A00700070004C006100620065006C0037002E00550073006500
      72004E0061006D00650001004C006100620065006C0037000100010001000D00
      0A00700070004C006100620065006C0038002E0055007300650072004E006100
      6D00650001004C006100620065006C0038000100010001000D000A0070007000
      4C006100620065006C0039002E0055007300650072004E0061006D0065000100
      4C006100620065006C0039000100010001000D000A00700070004C0061006200
      65006C00310030002E0055007300650072004E0061006D00650001004C006100
      620065006C00310030000100010001000D000A00700070004C00610062006500
      6C00310031002E0055007300650072004E0061006D00650001004C0061006200
      65006C00310031000100010001000D000A00700070004C006100620065006C00
      310032002E0055007300650072004E0061006D00650001004C00610062006500
      6C00310032000100010001000D000A00700070004C006100620065006C003100
      33002E0055007300650072004E0061006D00650001004C006100620065006C00
      310033000100010001000D000A00700070004C006100620065006C0031003400
      2E0055007300650072004E0061006D00650001004C006100620065006C003100
      34000100010001000D000A00700070004C006100620065006C00310035002E00
      55007300650072004E0061006D00650001004C006100620065006C0031003500
      0100010001000D000A00700070004C006100620065006C00310036002E005500
      7300650072004E0061006D00650001004C006100620065006C00310036000100
      010001000D000A00700070004C006100620065006C00310037002E0055007300
      650072004E0061006D00650001004C006100620065006C003100370001000100
      01000D000A00700070004C006100620065006C00310038002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003800010001000100
      0D000A00700070004C006100620065006C00310039002E005500730065007200
      4E0061006D00650001004C006100620065006C00310039000100010001000D00
      0A0070007000530079007300740065006D005600610072006900610062006C00
      650031002E0055007300650072004E0061006D00650001005300790073007400
      65006D005600610072006900610062006C00650031000100010001000D000A00
      700070004C006100620065006C00320030002E0055007300650072004E006100
      6D00650001004C006100620065006C00320030000100010001000D000A007000
      7000530079007300740065006D005600610072006900610062006C0065003200
      2E0055007300650072004E0061006D0065000100530079007300740065006D00
      5600610072006900610062006C00650032000100010001000D000A0070007000
      4C006100620065006C00320031002E0055007300650072004E0061006D006500
      01004C006100620065006C00320031000100010001000D000A00700070004C00
      6100620065006C00320033002E0055007300650072004E0061006D0065000100
      4C006100620065006C00320033000100010001000D000A00700070004C006100
      620065006C00320035002E0055007300650072004E0061006D00650001004C00
      6100620065006C00320035000100010001000D000A00700070004C0061006200
      65006C00320036002E0055007300650072004E0061006D00650001004C006100
      620065006C00320036000100010001000D000A00700070004C00610062006500
      6C00320037002E0055007300650072004E0061006D00650001004C0061006200
      65006C00320037000100010001000D000A00700070004C006100620065006C00
      320038002E0055007300650072004E0061006D00650001004C00610062006500
      6C00320038000100010001000D000A00700070004C006100620065006C003200
      39002E0055007300650072004E0061006D00650001004C006100620065006C00
      320039000100010001000D000A00700070004C006100620065006C0033003300
      2E0055007300650072004E0061006D00650001004C006100620065006C003300
      33000100010001000D000A00700070004C006100620065006C00330035002E00
      55007300650072004E0061006D00650001004C006100620065006C0033003500
      0100010001000D000A00700070004C006100620065006C00330036002E005500
      7300650072004E0061006D00650001004C006100620065006C00330036000100
      010001000D000A00700070004C006100620065006C00330037002E0055007300
      650072004E0061006D00650001004C006100620065006C003300370001000100
      01000D000A00700070004C006100620065006C00330038002E00550073006500
      72004E0061006D00650001004C006100620065006C0033003800010001000100
      0D000A00700070004C006100620065006C00330039002E005500730065007200
      4E0061006D00650001004C006100620065006C00330039000100010001000D00
      0A00700070004C006100620065006C00340030002E0055007300650072004E00
      61006D00650001004C006100620065006C00340030000100010001000D000A00
      7000700044004200540065007800740031002E00440061007400610046006900
      65006C006400010043005500530054004F004D00450052000100010001000D00
      0A007000700044004200540065007800740031002E0055007300650072004E00
      61006D006500010044004200540065007800740031000100010001000D000A00
      7000700044004200540065007800740032002E00440061007400610046006900
      65006C006400010053004F0050004E004F000100010001000D000A0070007000
      44004200540065007800740032002E0055007300650072004E0061006D006500
      010044004200540065007800740032000100010001000D000A00700070004400
      4200540065007800740033002E0044006100740061004600690065006C006400
      01004F00520044004C0049004E0045000100010001000D000A00700070004400
      4200540065007800740033002E0055007300650072004E0061006D0065000100
      44004200540065007800740033000100010001000D000A007000700044004200
      540065007800740034002E0044006100740061004600690065006C0064000100
      4A005F004E004F000100010001000D000A007000700044004200540065007800
      740034002E0055007300650072004E0061006D00650001004400420054006500
      7800740034000100010001000D000A0070007000440042005400650078007400
      35002E0044006100740061004600690065006C00640001004A0032005F004A00
      4F0042000100010001000D000A00700070004400420054006500780074003500
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      35000100010001000D000A007000700044004200540065007800740036002E00
      44006100740061004600690065006C006400010043005300540059004C004500
      0100010001000D000A007000700044004200540065007800740036002E005500
      7300650072004E0061006D006500010044004200540065007800740036000100
      010001000D000A007000700044004200540065007800740037002E0044006100
      740061004600690065006C0064000100410043004F004C000100010001000D00
      0A007000700044004200540065007800740037002E0055007300650072004E00
      61006D006500010044004200540065007800740037000100010001000D000A00
      7000700044004200540065007800740038002E00440061007400610046006900
      65006C00640001005100540059000100010001000D000A007000700044004200
      540065007800740038002E0055007300650072004E0061006D00650001004400
      4200540065007800740038000100010001000D000A0070007000440042005400
      65007800740039002E0044006100740061004600690065006C00640001004400
      440054000100010001000D000A00700070004400420054006500780074003900
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      39000100010001000D000A007000700044004200540065007800740031003100
      2E0044006100740061004600690065006C006400010045005800460054005900
      0100010001000D000A0070007000440042005400650078007400310031002E00
      55007300650072004E0061006D00650001004400420054006500780074003100
      31000100010001000D000A0078003000300032002E0044006100740061004600
      690065006C006400010052005100540059000100010001000D000A0078003000
      300032002E0055007300650072004E0061006D00650001007800300030003200
      0100010001000D000A0070007000440042005400650078007400310032002E00
      44006100740061004600690065006C0064000100540050004C0041004E005400
      0100010001000D000A0070007000440042005400650078007400310032002E00
      55007300650072004E0061006D00650001004400420054006500780074003100
      32000100010001000D000A0078003000300031002E0044006100740061004600
      690065006C006400010049005100540059000100010001000D000A0078003000
      300031002E0055007300650072004E0061006D00650001007800300030003100
      0100010001000D000A0070007000440042005400650078007400310030002E00
      44006100740061004600690065006C0064000100520057004F00010001000100
      0D000A0070007000440042005400650078007400310030002E00550073006500
      72004E0061006D00650001004400420054006500780074003100300001000100
      01000D000A0070007000440042005400650078007400310033002E0044006100
      740061004600690065006C006400010053005400410054000100010001000D00
      0A0070007000440042005400650078007400310033002E005500730065007200
      4E0061006D006500010044004200540065007800740031003300010001000100
      0D000A0078003000300033002E0055007300650072004E0061006D0065000100
      78003000300033000100010001000D000A007000700044004200540065007800
      7400310034002E0044006100740061004600690065006C006400010043005700
      4F000100010001000D000A007000700044004200540065007800740031003400
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      3100300031000100010001000D000A0070007000440042005400650078007400
      310035002E0044006100740061004600690065006C0064000100410050005000
      440054000100010001000D000A00700070004400420054006500780074003100
      35002E0055007300650072004E0061006D006500010044004200540065007800
      7400310035000100010001000D000A0070007000440042005400650078007400
      310036002E0044006100740061004600690065006C0064000100430052004400
      54000100010001000D000A007000700044004200540065007800740031003600
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      310036000100010001000D000A00700070004400420054006500780074003100
      37002E0044006100740061004600690065006C00640001004600440054000100
      010001000D000A0070007000440042005400650078007400310037002E005500
      7300650072004E0061006D006500010044004200540065007800740031003700
      0100010001000D000A00740074006C003000300031002E005500730065007200
      4E0061006D0065000100740074006C003000300031000100010001000D000A00
      700070004C006100620065006C00320032002E0055007300650072004E006100
      6D00650001004C006100620065006C00320032000100010001000D000A007000
      700044004200430061006C00630031002E004400610074006100460069006500
      6C00640001005100540059000100010001000D000A0070007000440042004300
      61006C00630031002E0055007300650072004E0061006D006500010044004200
      430061006C00630031000100010001000D000A0078003200300032002E004400
      6100740061004600690065006C00640001005200510054005900010001000100
      0D000A0078003200300032002E0055007300650072004E0061006D0065000100
      78003200300032000100010001000D000A00740074006C003000300032002E00
      55007300650072004E0061006D0065000100740074006C003000300032000100
      010001000D000A00740074006C003000300033002E0055007300650072004E00
      61006D0065000100740074006C003000300033000100010001000D000A007400
      74006C003000300034002E0055007300650072004E0061006D00650001007400
      74006C003000300034000100010001000D000A00740074006C00300030003500
      2E0055007300650072004E0061006D0065000100740074006C00300030003500
      0100010001000D000A00740074006C003000300036002E005500730065007200
      4E0061006D0065000100740074006C003000300036000100010001000D000A00
      78003100300032002E0044006100740061004600690065006C00640001004900
      5100540059000100010001000D000A0078003100300032002E00550073006500
      72004E0061006D006500010078003100300032000100010001000D000A007000
      70005300680061007000650032002E0055007300650072004E0061006D006500
      01005300680061007000650032000100010001000D000A00700070004C006100
      620065006C00330031002E0055007300650072004E0061006D00650001004C00
      6100620065006C00330031000100010001000D000A00700070004C0061006200
      65006C00330032002E0055007300650072004E0061006D00650001004C006100
      620065006C00330032000100010001000D000A0073006C003000300031002E00
      55007300650072004E0061006D006500010073006C0030003000310001000100
      01000D000A0073006C003000300032002E0055007300650072004E0061006D00
      6500010073006C003000300032000100010001000D000A0073006C0030003000
      33002E0055007300650072004E0061006D006500010073006C00300030003300
      0100010001000D000A0073006C003000300034002E0055007300650072004E00
      61006D006500010073006C003000300034000100010001000D000A0073006C00
      3000300036002E0055007300650072004E0061006D006500010073006C003000
      300036000100010001000D000A0073006C003000300035002E00550073006500
      72004E0061006D006500010073006C003000300035000100010001000D000A00
      73006C003000300037002E0055007300650072004E0061006D00650001007300
      6C003000300037000100010001000D000A0073006C003000300038002E005500
      7300650072004E0061006D006500010073006C00300030003800010001000100
      0D000A0073006C003000300039002E0055007300650072004E0061006D006500
      010073006C003000300039000100010001000D000A006B006200300030003100
      2E0055007300650072004E0061006D00650001006B0062003000300031000100
      010001000D000A006B0062003000300032002E0055007300650072004E006100
      6D00650001006B0062003000300032000100010001000D000A006B0062003000
      300033002E0055007300650072004E0061006D00650001006B00620030003000
      33000100010001000D000A006B0062003000300034002E005500730065007200
      4E0061006D00650001006B0062003000300034000100010001000D000A006B00
      62003000300036002E0055007300650072004E0061006D00650001006B006200
      3000300036000100010001000D000A006B0062003000300035002E0055007300
      650072004E0061006D00650001006B0062003000300035000100010001000D00
      0A006B0062003000300037002E0055007300650072004E0061006D0065000100
      6B0062003000300037000100010001000D000A006B0062003000300038002E00
      55007300650072004E0061006D00650001006B00620030003000380001000100
      01000D000A006B0062003000300039002E0055007300650072004E0061006D00
      650001006B0062003000300039000100010001000D000A00740074006C003000
      310030002E0055007300650072004E0061006D0065000100740074006C003000
      310030000100010001000D000A0073006C003000310030002E00550073006500
      72004E0061006D006500010073006C003000310030000100010001000D000A00
      6B0062003000310030002E0055007300650072004E0061006D00650001006B00
      62003000310030000100010001000D000A00700070004C006100620065006C00
      330034002E0055007300650072004E0061006D00650001004C00610062006500
      6C00330034000100010001000D000A0070007000530075006200520065007000
      6F007200740031002E0055007300650072004E0061006D006500010053007500
      62005200650070006F007200740031000100010001000D000A00700070005300
      680061007000650034002E0055007300650072004E0061006D00650001005300
      680061007000650034000100010001000D000A00700070005300680061007000
      650036002E0055007300650072004E0061006D00650001005300680061007000
      650036000100010001000D000A00700070005300680061007000650035002E00
      55007300650072004E0061006D00650001005300680061007000650035000100
      010001000D000A00700070004C006100620065006C00330030002E0055007300
      650072004E0061006D00650001004C006100620065006C003300300001000100
      01000D000A00700070004C0069006E00650031002E0055007300650072004E00
      61006D00650001004C0069006E00650031000100010001000D000A0070007000
      4C006100620065006C00340032002E0055007300650072004E0061006D006500
      01004C006100620065006C00340032000100010001000D000A00700070004C00
      6100620065006C00340033002E0055007300650072004E0061006D0065000100
      4C006100620065006C00340033000100010001000D000A00700070004C006100
      620065006C00340034002E0055007300650072004E0061006D00650001004C00
      6100620065006C00340034000100010001000D000A00700070004C0061006200
      65006C00340031002E0055007300650072004E0061006D00650001004C006100
      620065006C00340031000100010001000D000A00700070004C00610062006500
      6C00340036002E0055007300650072004E0061006D00650001004C0061006200
      65006C00340036000100010001000D000A00700070004C006100620065006C00
      340037002E0055007300650072004E0061006D00650001004C00610062006500
      6C00340037000100010001000D000A00700070004C0069006E00650032002E00
      55007300650072004E0061006D00650001004C0069006E006500320001000100
      01000D000A00700070004C0069006E00650033002E0055007300650072004E00
      61006D00650001004C0069006E00650033000100010001000D000A0070007000
      4C0069006E00650034002E0055007300650072004E0061006D00650001004C00
      69006E00650034000100010001000D000A00700070004C0069006E0065003500
      2E0055007300650072004E0061006D00650001004C0069006E00650035000100
      010001000D000A00700070004C0069006E00650036002E005500730065007200
      4E0061006D00650001004C0069006E00650036000100010001000D000A007000
      70004C0069006E00650037002E0055007300650072004E0061006D0065000100
      4C0069006E00650037000100010001000D000A00700070004C0069006E006500
      38002E0055007300650072004E0061006D00650001004C0069006E0065003800
      0100010001000D000A00700070005300680061007000650033002E0055007300
      650072004E0061006D0065000100530068006100700065003300010001000100
      0D000A0070007000440042005400650078007400310038002E00440061007400
      61004600690065006C006400010043005500530054000100010001000D000A00
      70007000440042005400650078007400310038002E0055007300650072004E00
      61006D0065000100440042005400650078007400310038000100010001000D00
      0A0072007100740079003000300030002E004400610074006100460069006500
      6C006400010052005100540059000100010001000D000A007200710074007900
      3000300030002E0055007300650072004E0061006D0065000100440042005400
      650078007400320030000100010001000D000A00660064007400300030003100
      2E0044006100740061004600690065006C006400010046004400540001000100
      01000D000A006600640074003000300031002E0055007300650072004E006100
      6D0065000100440042005400650078007400310039000100010001000D000A00
      72007100740079003000300031002E0044006100740061004600690065006C00
      64000100520051005400590031000100010001000D000A007200710074007900
      3000300031002E0055007300650072004E0061006D0065000100440042005400
      6500780074003200300031000100010001000D000A0072007100740079003000
      300032002E0044006100740061004600690065006C0064000100520051005400
      590032000100010001000D000A0072007100740079003000300032002E005500
      7300650072004E0061006D006500010044004200540065007800740032003200
      0100010001000D000A0072007100740079003000300033002E00440061007400
      61004600690065006C0064000100520051005400590033000100010001000D00
      0A0072007100740079003000300033002E0055007300650072004E0061006D00
      65000100440042005400650078007400320033000100010001000D000A007200
      7100740079003000300034002E0044006100740061004600690065006C006400
      0100520051005400590034000100010001000D000A0072007100740079003000
      300034002E0055007300650072004E0061006D00650001004400420054006500
      78007400320034000100010001000D000A00700070004C0069006E0065003900
      2E0055007300650072004E0061006D00650001004C0069006E00650039000100
      010001000D000A00700070004C0069006E006500310030002E00550073006500
      72004E0061006D00650001004C0069006E006500310030000100010001000D00
      0A00700070004C0069006E006500310031002E0055007300650072004E006100
      6D00650001004C0069006E006500310031000100010001000D000A0070007000
      4C0069006E006500310032002E0055007300650072004E0061006D0065000100
      4C0069006E006500310032000100010001000D000A00700070004C0069006E00
      6500310033002E0055007300650072004E0061006D00650001004C0069006E00
      6500310033000100010001000D000A00700070004C0069006E00650031003400
      2E0055007300650072004E0061006D00650001004C0069006E00650031003400
      0100010001000D000A007000700044004200430061006C00630032002E004400
      6100740061004600690065006C00640001005200510054005900010001000100
      0D000A007000700044004200430061006C00630032002E005500730065007200
      4E0061006D006500010044004200430061006C00630032000100010001000D00
      0A0070007000470072006F007500700031002E0042007200650061006B004E00
      61006D0065000100540050004C0041004E0054000100010001000D000A007000
      7000470072006F007500700031002E0055007300650072004E0061006D006500
      0100470072006F007500700031000100010001000D000A007300750062003000
      300031002E0055007300650072004E0061006D00650001007300750062003000
      300031000100010001000D000A00700070004C006100620065006C0032003400
      2E0055007300650072004E0061006D00650001004C006100620065006C003200
      34000100010001000D000A007000700044004200430061006C00630033002E00
      44006100740061004600690065006C0064000100510054005900010001000100
      0D000A007000700044004200430061006C00630033002E005500730065007200
      4E0061006D006500010044004200430061006C00630033000100010001000D00
      0A0078003200300031002E0044006100740061004600690065006C0064000100
      52005100540059000100010001000D000A0078003200300031002E0055007300
      650072004E0061006D006500010078003200300031000100010001000D000A00
      7300750062003000300032002E0055007300650072004E0061006D0065000100
      7300750062003000300032000100010001000D000A0073007500620030003000
      33002E0055007300650072004E0061006D006500010073007500620030003000
      33000100010001000D000A007300750062003000300034002E00550073006500
      72004E0061006D00650001007300750062003000300034000100010001000D00
      0A007300750062003000300035002E0055007300650072004E0061006D006500
      01007300750062003000300035000100010001000D000A007300750062003000
      300036002E0055007300650072004E0061006D00650001007300750062003000
      300036000100010001000D000A0078003100300031002E004400610074006100
      4600690065006C006400010049005100540059000100010001000D000A007800
      3100300031002E0055007300650072004E0061006D0065000100780031003000
      31000100010001000D000A007300750062003000310030002E00550073006500
      72004E0061006D00650001007300750062003000310030000100010001000D00
      0A006500340078006C00730031002E00410062006F0075007400010028004100
      62006F0075007400200045004D005300200041006400760061006E0063006500
      64004500780070006F007200740029000100010001000D000A00650034007800
      6C00730031002E005F00560065007200730069006F006E00010034002E003100
      2E0030002E0036000100010001000D000A0064006C0067005300610076006500
      31002E00460069006C0074006500720001002A002E0078006C0073007C002A00
      2E0078006C0073000100010001000D000A007000700044004200500069007000
      65006C0069006E00650032002E0055007300650072004E0061006D0065000100
      4400420050006900700065006C0069006E00650032000100010001000D000A00
      5100750065007200790032002E0043006F006D006D0061006E00640054006500
      780074000100730065006C0065006300740020002A002000660072006F006D00
      200076005F00720077006F0073000100010001000D000A005100750065007200
      790032002E00500072006F00760069006400650072004E0061006D0065000100
      6400730070007300630068006500640075006C0065000100010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      65007700310043006F006C0075006D006E00310034002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780044006100740065004500640069007400500072006F0070006500
      720074006900650073000100010001000D000A00730074004C006F0063006100
      6C00650073005F0055006E00690063006F00640065000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B0030005D002E005400690074006C0065002E004300
      61007000740069006F006E000100530065006C0065006300740069006F006E00
      0100010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0031005D002E005400690074006C0065002E00
      430061007000740069006F006E0001004C0069006E0065000100010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0032005D002E005400690074006C0065002E004300610070007400
      69006F006E000100A25B3662010043007500730074006F006D00650072000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0033005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100B7922E55AE555F86010053004F00200023000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0034005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100B7922E55028AAE554C88010053004F0020004C00
      69006E006500010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0035005D002E005400690074006C00
      65002E00430061007000740069006F006E000100E55D0B7A416D0B7A01005000
      72006F006A0019001A00700072006F006300650073007300010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B0036005D002E005400690074006C0065002E0043006100700074006900
      6F006E000100E55D0B7A5F860100500072006F006A0065006300740020002300
      010001000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B0037005D002E005400690074006C0065002E004300
      61007000740069006F006E0001003652AE555F86010057004F00200023000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0038005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001003652AE555F8620002D0020000E54B47D01005700
      4F0020002D002000530075006600660069007800010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      39005D002E005400690074006C0065002E00430061007000740069006F006E00
      01002A8F3652AE555F8620002D0020000E54B47D0100430057004F0020002D00
      2000530075006600660069007800010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B00310030005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001002275
      C1545E980100500072006F0064002000430061007400650067006F0072007900
      010001000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B00310031005D002E005400690074006C0065002E00
      430061007000740069006F006E000100A25B3E6B5F8601004300750073007400
      20005300740079006C006500010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B00310032005D002E00
      5400690074006C0065002E00430061007000740069006F006E0001007282BC78
      010043006C007200200043006F0064006500010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003100
      33005D002E005400690074006C0065002E00430061007000740069006F006E00
      01002A8F3652AE55F64E78650100430057004F00200051007400790001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B00310034005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100F25DFA5ECB7A78650198F64E7865010053006300
      68006500640075006C00650064002000510074007900010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B00310035005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001001899786501005200650073007400200051007400790001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B00310036005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001002A8F3652AE55FA5ECB7AE5651F67010052005700
      4F0020004300720065006100740069006F006E00200044006100740065000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B00310037005D002E005400690074006C0065002E004300
      61007000740069006F006E0001002A8F3652AE5579623868E5651F6701005200
      57004F00200041007000700072006F00760061006C0020004400610074006500
      010001000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B00310038005D002E005400690074006C0065002E00
      430061007000740069006F006E0001002A8F3652AE55E05EFD885C4F8B95CB59
      E5651F670100520057004F002000460057002000530074006100720074002000
      4400610074006500010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B00310039005D002E0054006900
      74006C0065002E00430061007000740069006F006E000100D84E4B90E5651F67
      0100440065006C00690076006500720079002000440061007400650001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B00320030005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001002A8F3652AE55E296E05EE5651F67010052005700
      4F002000450078002D0066007400790020004400610074006500010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B00320031005D002E005400690074006C0065002E00430061007000
      740069006F006E000100E05E0100460074007900010001000D000A0074006200
      6C0073006F0070002E0049006E0064006500780044006500660073005B003000
      5D002E004600690065006C00640073000100740070006C0061006E0074003B00
      63007500730074006F006D00650072003B006400640074003B006A005F006E00
      6F003B006F00720064006C0069006E0065003B00610063006F006C0001000100
      01000D000A00740062006C0073006F0070002E0049006E006400650078004400
      6500660073005B0031005D002E004600690065006C0064007300010074007000
      6C0061006E0074003B006400640074003B0063007500730074006F006D006500
      72003B006A005F006E006F003B006F00720064006C0069006E0065003B006100
      63006F006C000100010001000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660072006D00
      520057004F000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A004C006100620065006C0034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C0031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C0032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C0034000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C0035000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00360001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0037000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C0038000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003100300001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00310031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00310032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00310033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003100340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00310035000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00310036000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00310037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003100380001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00310039000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070005300790073007400
      65006D005600610072006900610062006C006500310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00320030000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070005300790073007400
      65006D005600610072006900610062006C006500320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00320031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00320033000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00320035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003200360001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00320037000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00320038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00320039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003300330001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00330035000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00330036000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00330037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003300380001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00330039000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00340030000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      44004200540065007800740033000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420054006500
      7800740034000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400360001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      44004200540065007800740037000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420054006500
      7800740038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400310031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007800
      3000300032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740031003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A0078003000300031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420054006500
      78007400310030000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003100
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A0078003000300033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070007000440042005400
      650078007400310034000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      310035000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0070007000440042005400650078007400310036000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400310037000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007400
      74006C003000300031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003200
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A007000700044004200430061006C0063003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      78003200300032000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00740074006C00300030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      740074006C003000300033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00740074006C003000300034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00740074006C003000300035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00740074006C0030003000
      36000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A0078003100300032000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00330031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0033003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A0073006C003000300031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0073006C00300030003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A0073006C003000300033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0073006C00300030003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A0073006C003000300036000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0073006C00300030003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A0073006C003000300037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0073006C00300030003800
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A0073006C003000300039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A006B006200300030003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A006B0062003000300032000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A006B006200300030003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A006B0062003000300034000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A006B006200300030003600
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A006B0062003000300035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A006B006200300030003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A006B0062003000300038000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A006B006200300030003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00740074006C003000310030000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A0073006C0030003100
      30000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A006B0062003000310030000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00330034000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003300
      30000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0034003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00340033000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00340034000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003400
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0034003600010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00340037000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      5400650078007400310038000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007200710074007900300030003000
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A006600640074003000300031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007200710074007900
      3000300031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007200710074007900300030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      72007100740079003000300033000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00720071007400790030003000
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A007000700044004200430061006C0063003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7300750062003000300031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      320034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A007000700044004200430061006C006300330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0078003200300031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0073007500620030003000320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A007300750062003000300033000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00730075006200300030003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007300750062003000300035000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007300750062003000
      300036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0078003100300031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007300750062003000
      310030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00}
  end
end
