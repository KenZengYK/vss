object frmworder: Tfrmworder
  Left = 188
  Top = 87
  Caption = 'Create QN'
  ClientHeight = 461
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 820
    Height = 363
    Align = alClient
    AllowedOperations = [alopInsertEh, alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    PopupMenu = PopupMenu1
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'CUSTOMER'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Customer'
        Width = 70
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'SOPNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SO #'
        Width = 55
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'ORDLINE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Order Line'
        Width = 32
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'STAT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Project Process'
        Width = 45
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Project #'
        Width = 79
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WO #'
        Width = 59
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'CWO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WO - Suffix'
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 11795962
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'RWO - Suffix'
        Width = 61
        OnEditButtonClick = DBGridEh1Columns6EditButtonClick
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust Style'
        Width = 71
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Clr Code'
        Width = 32
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'RWO Qty'
        Width = 53
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'IQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Scheduled Qty'
        Width = 52
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'RQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Rest Qty'
        Width = 54
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'DDT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Delivery Date'
        Width = 61
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'EXFTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'RWO Ex-fty'
        Width = 61
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Fty'
        Width = 48
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Align = alClient
        AllowedOperations = []
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
        PopupMenu = PopupMenu1
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        UseMultiTitle = True
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 820
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label3: TLabel
      Left = 24
      Top = 16
      Width = 52
      Height = 14
      Caption = 'Project #'
    end
    object SpeedButton5: TSpeedButton
      Left = 448
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
      OnClick = SpeedButton5Click
    end
    object Label1: TLabel
      Left = 232
      Top = 16
      Width = 17
      Height = 14
      Caption = 'Fty'
    end
    object Edit1: TEdit
      Left = 64
      Top = 16
      Width = 121
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 0
      Visible = False
    end
    object Edit3: TEdit
      Left = 69
      Top = 16
      Width = 116
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit3KeyPress
    end
    object ComboBox1: TComboBox
      Left = 253
      Top = 16
      Width = 60
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
      Items.Strings = (
        'SL'
        'GG'
        'RX'
        'CL')
    end
    object CheckBox1: TCheckBox
      Left = 560
      Top = 16
      Width = 65
      Height = 17
      Caption = 'PPWS'
      TabOrder = 3
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 412
    Width = 820
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 22
      Top = 11
      Width = 30
      Height = 30
      Hint = 'Confirm'
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 52
      Top = 11
      Width = 30
      Height = 30
      Hint = 'Preview'
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
    object SpeedButton3: TSpeedButton
      Left = 82
      Top = 11
      Width = 30
      Height = 30
      Hint = 'Exit'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 49
    Width = 820
    Height = 363
    Align = alClient
    AllowedOperations = []
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    PopupMenu = PopupMenu1
    RowDetailPanel.Color = clBtnFace
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 49
    Width = 820
    Height = 363
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'CUSTOMER'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 55
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Proj'#13#10'pro-'#13#10'cess'
        DataBinding.FieldName = 'STAT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Proj#'
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Cop WO#'
        DataBinding.FieldName = 'CWONO1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Prdt'#13#10'Cate'#13#10'-grory'
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
        Caption = 'Sch.'#13#10'Qty'
        DataBinding.FieldName = 'IQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
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
        Caption = 'Creation'#13#10'dd'
        DataBinding.FieldName = 'CRDT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column13: TcxGridDBColumn
        Caption = 'Approval'#13#10'dd'
        DataBinding.FieldName = 'APPDT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column17: TcxGridDBColumn
        Caption = 'FW Start'#13#10'dd'
        DataBinding.FieldName = 'FDT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column15: TcxGridDBColumn
        Caption = 'Ex-fty'#13#10'dd'
        DataBinding.FieldName = 'EXFTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column14: TcxGridDBColumn
        Caption = 'Delivery'#13#10'dd'
        DataBinding.FieldName = 'DDT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column16: TcxGridDBColumn
        Caption = 'Fty'
        DataBinding.FieldName = 'TPLANT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
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
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CUSTOMER'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
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
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'ACOL'
        DataType = ftString
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
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SEL'
        DataType = ftBoolean
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG1'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'STAT'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'IQTY'
        DataType = ftInteger
      end
      item
        Name = 'CWO'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;customer;j_no;ordline;acol'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 136
    Top = 392
  end
  object DataSource1: TDataSource
    DataSet = tblsop
    Left = 168
    Top = 392
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 392
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 232
    Top = 392
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 264
    Top = 392
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 296
    Top = 392
  end
  object ClientDataSet5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 328
    Top = 392
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 360
    Top = 392
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 392
    object CompleteProject1: TMenuItem
      Caption = 'Complete Project'
      OnClick = CompleteProject1Click
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 210000
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
    Left = 392
    Top = 392
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO  ----  Waiting for Scheduling'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6773
        mmLeft = 50536
        mmTop = 8202
        mmWidth = 91811
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 10054
        mmLeft = 2646
        mmTop = 24077
        mmWidth = 193675
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
        mmTop = 25135
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
        mmHeight = 2963
        mmLeft = 26194
        mmTop = 25135
        mmWidth = 7620
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
        mmHeight = 2963
        mmLeft = 36777
        mmTop = 25135
        mmWidth = 6943
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
        mmHeight = 2963
        mmLeft = 36777
        mmTop = 29633
        mmWidth = 4445
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
        mmLeft = 56886
        mmTop = 25135
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
        Caption = 'WO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 70115
        mmTop = 25135
        mmWidth = 3937
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 102394
        mmTop = 25135
        mmWidth = 10753
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
        mmLeft = 121444
        mmTop = 25135
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
        mmLeft = 121444
        mmTop = 29633
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
        Caption = 'RWO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 129911
        mmTop = 25135
        mmWidth = 6223
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Delivery'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 164571
        mmTop = 25135
        mmWidth = 8721
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 164571
        mmTop = 29633
        mmWidth = 5038
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
        mmHeight = 2963
        mmLeft = 92604
        mmTop = 25135
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
        Caption = 'RWO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 177536
        mmTop = 25135
        mmWidth = 6223
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 177536
        mmTop = 29633
        mmWidth = 6308
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
        mmTop = 25135
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
        Caption = 'Project'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 44979
        mmTop = 25135
        mmWidth = 7535
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
        mmLeft = 164042
        mmTop = 13494
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
        mmLeft = 179388
        mmTop = 13494
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
        mmLeft = 164042
        mmTop = 17992
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
        mmLeft = 179388
        mmTop = 17992
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
        mmLeft = 152665
        mmTop = 25135
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
        mmLeft = 44979
        mmTop = 29633
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
        mmLeft = 129911
        mmTop = 29633
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
        mmLeft = 153988
        mmTop = 29633
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
        Caption = 'Scheduled'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 138113
        mmTop = 25135
        mmWidth = 11091
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
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
        mmLeft = 142082
        mmTop = 29633
        mmWidth = 4530
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
        mmLeft = 190236
        mmTop = 29633
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
        mmHeight = 2963
        mmLeft = 83608
        mmTop = 25135
        mmWidth = 5080
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
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
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 26194
        mmTop = 794
        mmWidth = 7832
        BandType = 4
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
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 31983
        mmTop = 794
        mmWidth = 10118
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
        mmLeft = 54769
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 70115
        mmTop = 794
        mmWidth = 7916
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
        mmLeft = 102394
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
        mmLeft = 121444
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
        mmLeft = 132748
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
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 164571
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
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 177536
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
        mmLeft = 155830
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
        mmLeft = 144517
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
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 93663
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
        mmLeft = 47361
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
        mmLeft = 194712
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
        DataField = 'RWO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 84931
        mmTop = 794
        mmWidth = 5461
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 7144
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
        mmLeft = 132747
        mmTop = 1058
        mmWidth = 4572
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
        mmLeft = 155829
        mmTop = 1058
        mmWidth = 6096
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
        mmHeight = 2963
        mmLeft = 35169
        mmTop = 1058
        mmWidth = 550
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
        mmLeft = 64008
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
        mmLeft = 79354
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
        mmLeft = 112406
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
        mmHeight = 2963
        mmLeft = 99706
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
        mmLeft = 145046
        mmTop = 1058
        mmWidth = 5503
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
        mmHeight = 2963
        mmLeft = 89937
        mmTop = 1058
        mmWidth = 550
        BandType = 7
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
          mmLeft = 132747
          mmTop = 529
          mmWidth = 4572
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
          mmLeft = 155829
          mmTop = 529
          mmWidth = 6096
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
          mmHeight = 2963
          mmLeft = 35169
          mmTop = 529
          mmWidth = 550
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
          mmLeft = 64008
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
          mmLeft = 79354
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
          mmLeft = 112427
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
          mmHeight = 2963
          mmLeft = 99727
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
          mmLeft = 145046
          mmTop = 529
          mmWidth = 5503
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
          mmHeight = 2963
          mmLeft = 89938
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
    Left = 408
    Top = 176
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0077006F0072006400650072000100855F
      FA5ECB7A78650198D0633A79010051004E002000430072006500610074006900
      6F006E00010001000D000A004C006100620065006C0033000100E55D0B7A5F86
      20000100500072006F006A0065006300740020002300010001000D000A005300
      700065006500640042007500740074006F006E0035000100BA789A5B01004F00
      4B00010001000D000A004C006100620065006C0031000100E05E200001004600
      74007900010001000D000A0043006800650063006B0042006F00780031000100
      50005000570053000100010001000D000A0043006F006D0070006C0065007400
      6500500072006F006A006500630074003100010043006F006D0070006C006500
      740065002000500072006F006A006500630074000100010001000D000A007000
      70004C006100620065006C0031000100520057004F00200020002D002D002D00
      2D0020002000570061006900740069006E006700200066006F00720020005300
      630068006500640075006C0069006E0067000100010001000D000A0070007000
      4C006100620065006C003200010043007500730074006F006D00650072000100
      010001000D000A00700070004C006100620065006C003300010053004F002000
      4E006F002E000100010001000D000A00700070004C006100620065006C003400
      01004F00720064006500720020000100010001000D000A00700070004C006100
      620065006C00350001004C0069006E0065000100010001000D000A0070007000
      4C006100620065006C0036000100500072006F006A0065006300740001000100
      01000D000A00700070004C006100620065006C003700010057004F0001000100
      01000D000A00700070004C006100620065006C00380001004300750073007400
      20005300740079006C0065000100010001000D000A00700070004C0061006200
      65006C003900010043006F006C006F0072000100010001000D000A0070007000
      4C006100620065006C0031003000010043006F00640065000100010001000D00
      0A00700070004C006100620065006C00310031000100520057004F0020000100
      010001000D000A00700070004C006100620065006C0031003200010044006500
      6C00690076006500720079000100010001000D000A00700070004C0061006200
      65006C0031003300010044006100740065000100010001000D000A0070007000
      4C006100620065006C00310034000100520057004F000100010001000D000A00
      700070004C006100620065006C00310035000100520057004F00200001000100
      01000D000A00700070004C006100620065006C00310036000100450078002D00
      6600740079000100010001000D000A00700070004C006100620065006C003100
      370001004600740079000100010001000D000A00700070004C00610062006500
      6C00310038000100500072006F006A006500630074000100010001000D000A00
      700070004C006100620065006C003100390001005000720069006E0074006500
      640020004F006E000100010001000D000A00700070004C006100620065006C00
      32003000010050006100670065000100010001000D000A00700070004C006100
      620065006C00320031000100420061006C0061006E0063006500010001000100
      0D000A00700070004C006100620065006C00320033000100500072006F006300
      6500730073000100010001000D000A00700070004C006100620065006C003200
      3500010020005100740079000100010001000D000A00700070004C0061006200
      65006C0032003600010020005100740079000100010001000D000A0070007000
      4C006100620065006C003200370001005300630068006500640075006C006500
      64000100010001000D000A00700070004C006100620065006C00320038000100
      20005100740079000100010001000D000A00700070004C006100620065006C00
      320039000100440069006600660020000100010001000D000A00700070004C00
      6100620065006C0033003300010057004F0063000100010001000D000A007000
      70004C006100620065006C0032003200010054006F00740061006C003A000100
      010001000D000A00700070004C006100620065006C0032003400010053007500
      62002D0054006F00740061006C003A000100010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0053007000
      65006500640042007500740074006F006E003100010043006F006E0066006900
      72006D000100010001000D000A00530070006500650064004200750074007400
      6F006E003200010050007200650076006900650077000100010001000D000A00
      5300700065006500640042007500740074006F006E0033000100450078006900
      74000100010001000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      5400660072006D0077006F0072006400650072000100B065307D0E66D49A0100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C003300010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003400010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C003500010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0036000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C003700010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3800010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003900010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003000010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0031003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      31003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310034000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0031003500010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003600
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003700010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003800010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100390001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      7000530079007300740065006D005600610072006900610062006C0065003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003000010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000530079007300
      740065006D005600610072006900610062006C00650032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0032003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003300
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003500010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0032003600010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003200370001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0032003800010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      32003900010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      420054006500780074003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003200
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      6500780074003400010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004400420054006500780074003600010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200540065007800
      74003700010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740038000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      420054006500780074003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A007800300030003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A007800300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      3000010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400310033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00780030003000
      3300010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400310034000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00740074006C00
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0032003200010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200430061006C0063003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A0078003200300032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00740074006C00
      300030003200010041007200690061006C0001005400610068006F006D006100
      010001000D000A00740074006C00300030003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A00740074006C0030003000
      3400010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00740074006C00300030003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A00740074006C003000300036000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7800310030003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00740074006C0030003100300001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007300750062003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320034000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C0063003300010041007200690061006C000100540061006800
      6F006D006100010001000D000A00780032003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007300750062003000
      30003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00730075006200300030003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A00730075006200300030003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00730075006200300030003500010041007200690061006C00010054006100
      68006F006D006100010001000D000A0073007500620030003000360001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007800
      310030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A00730075006200300031003000010041007200690061006C00
      01005400610068006F006D006100010001000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A0043006F006D0062006F0042006F00780031002E004900740065006D007300
      010053004C002C004B0042002C0046004A000100010001000D000A0073007400
      44006C0067007300430061007000740069006F006E0073005F0055006E006900
      63006F00640065000D000A005700610072006E0069006E006700010057006100
      72006E0069006E0067000100010001000D000A004500720072006F0072000100
      4500720072006F0072000100010001000D000A0049006E0066006F0072006D00
      6100740069006F006E00010049006E0066006F0072006D006100740069006F00
      6E000100010001000D000A0043006F006E006600690072006D00010043006F00
      6E006600690072006D000100010001000D000A00590065007300010026005900
      650073000100010001000D000A004E006F00010026004E006F00010001000100
      0D000A004F004B0001004F004B000100010001000D000A00430061006E006300
      65006C000100430061006E00630065006C000100010001000D000A0041006200
      6F007200740001002600410062006F00720074000100010001000D000A005200
      650074007200790001002600520065007400720079000100010001000D000A00
      490067006E006F007200650001002600490067006E006F007200650001000100
      01000D000A0041006C006C000100260041006C006C000100010001000D000A00
      4E006F00200054006F00200041006C006C0001004E0026006F00200074006F00
      200041006C006C000100010001000D000A00590065007300200054006F002000
      41006C006C000100590065007300200074006F002000260041006C006C000100
      010001000D000A00480065006C00700001002600480065006C00700001000100
      01000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0074006200
      6C0073006F0070002E0043006F006D006D0061006E0064005400650078007400
      0100730065006C0065006300740020002A002000660072006F006D0020007400
      62006C005F0073006F0070000100010001000D000A00740062006C0073006F00
      70002E00500072006F00760069006400650072004E0061006D00650001006400
      730070007300630068006500640075006C0065000100010001000D000A004300
      6C00690065006E007400440061007400610053006500740031002E0050007200
      6F00760069006400650072004E0061006D006500010064007300700073006300
      68006500640075006C0065000100010001000D000A0043006C00690065006E00
      7400440061007400610053006500740032002E00500072006F00760069006400
      650072004E0061006D0065000100640073007000730063006800650064007500
      6C0065000100010001000D000A0043006C00690065006E007400440061007400
      610053006500740033002E00500072006F00760069006400650072004E006100
      6D00650001006400730070007300630068006500640075006C00650001000100
      01000D000A0043006C00690065006E0074004400610074006100530065007400
      34002E00500072006F00760069006400650072004E0061006D00650001006400
      730070007300630068006500640075006C0065000100010001000D000A004300
      6C00690065006E007400440061007400610053006500740035002E0050007200
      6F00760069006400650072004E0061006D006500010064007300700073006300
      68006500640075006C0065000100010001000D000A0070007000440042005000
      6900700065006C0069006E00650031002E0055007300650072004E0061006D00
      650001004400420050006900700065006C0069006E0065003100010001000100
      0D000A00700070005200650070006F007200740031002E004400650076006900
      6300650054007900700065000100530063007200650065006E00010001000100
      0D000A00700070004C006100620065006C0031002E0055007300650072004E00
      61006D00650001004C006100620065006C0031000100010001000D000A007000
      70005300680061007000650031002E0055007300650072004E0061006D006500
      01005300680061007000650031000100010001000D000A00700070004C006100
      620065006C0032002E0055007300650072004E0061006D00650001004C006100
      620065006C0032000100010001000D000A00700070004C006100620065006C00
      33002E0055007300650072004E0061006D00650001004C006100620065006C00
      33000100010001000D000A00700070004C006100620065006C0034002E005500
      7300650072004E0061006D00650001004C006100620065006C00340001000100
      01000D000A00700070004C006100620065006C0035002E005500730065007200
      4E0061006D00650001004C006100620065006C0035000100010001000D000A00
      700070004C006100620065006C0036002E0055007300650072004E0061006D00
      650001004C006100620065006C0036000100010001000D000A00700070004C00
      6100620065006C0037002E0055007300650072004E0061006D00650001004C00
      6100620065006C0037000100010001000D000A00700070004C00610062006500
      6C0038002E0055007300650072004E0061006D00650001004C00610062006500
      6C0038000100010001000D000A00700070004C006100620065006C0039002E00
      55007300650072004E0061006D00650001004C006100620065006C0039000100
      010001000D000A00700070004C006100620065006C00310030002E0055007300
      650072004E0061006D00650001004C006100620065006C003100300001000100
      01000D000A00700070004C006100620065006C00310031002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003100010001000100
      0D000A00700070004C006100620065006C00310032002E005500730065007200
      4E0061006D00650001004C006100620065006C00310032000100010001000D00
      0A00700070004C006100620065006C00310033002E0055007300650072004E00
      61006D00650001004C006100620065006C00310033000100010001000D000A00
      700070004C006100620065006C00310034002E0055007300650072004E006100
      6D00650001004C006100620065006C00310034000100010001000D000A007000
      70004C006100620065006C00310035002E0055007300650072004E0061006D00
      650001004C006100620065006C00310035000100010001000D000A0070007000
      4C006100620065006C00310036002E0055007300650072004E0061006D006500
      01004C006100620065006C00310036000100010001000D000A00700070004C00
      6100620065006C00310037002E0055007300650072004E0061006D0065000100
      4C006100620065006C00310037000100010001000D000A00700070004C006100
      620065006C00310038002E0055007300650072004E0061006D00650001004C00
      6100620065006C00310038000100010001000D000A00700070004C0061006200
      65006C00310039002E0055007300650072004E0061006D00650001004C006100
      620065006C00310039000100010001000D000A00700070005300790073007400
      65006D005600610072006900610062006C00650031002E005500730065007200
      4E0061006D0065000100530079007300740065006D0056006100720069006100
      62006C00650031000100010001000D000A00700070004C006100620065006C00
      320030002E0055007300650072004E0061006D00650001004C00610062006500
      6C00320030000100010001000D000A0070007000530079007300740065006D00
      5600610072006900610062006C00650032002E0055007300650072004E006100
      6D0065000100530079007300740065006D005600610072006900610062006C00
      650032000100010001000D000A00700070004C006100620065006C0032003100
      2E0055007300650072004E0061006D00650001004C006100620065006C003200
      31000100010001000D000A00700070004C006100620065006C00320033002E00
      55007300650072004E0061006D00650001004C006100620065006C0032003300
      0100010001000D000A00700070004C006100620065006C00320035002E005500
      7300650072004E0061006D00650001004C006100620065006C00320035000100
      010001000D000A00700070004C006100620065006C00320036002E0055007300
      650072004E0061006D00650001004C006100620065006C003200360001000100
      01000D000A00700070004C006100620065006C00320037002E00550073006500
      72004E0061006D00650001004C006100620065006C0032003700010001000100
      0D000A00700070004C006100620065006C00320038002E005500730065007200
      4E0061006D00650001004C006100620065006C00320038000100010001000D00
      0A00700070004C006100620065006C00320039002E0055007300650072004E00
      61006D00650001004C006100620065006C00320039000100010001000D000A00
      700070004C006100620065006C00330033002E0055007300650072004E006100
      6D00650001004C006100620065006C00330033000100010001000D000A007000
      700044004200540065007800740031002E004400610074006100460069006500
      6C006400010043005500530054004F004D00450052000100010001000D000A00
      7000700044004200540065007800740031002E0055007300650072004E006100
      6D006500010044004200540065007800740031000100010001000D000A007000
      700044004200540065007800740032002E004400610074006100460069006500
      6C006400010053004F0050004E004F000100010001000D000A00700070004400
      4200540065007800740032002E0055007300650072004E0061006D0065000100
      44004200540065007800740032000100010001000D000A007000700044004200
      540065007800740033002E0044006100740061004600690065006C0064000100
      4F00520044004C0049004E0045000100010001000D000A007000700044004200
      540065007800740033002E0055007300650072004E0061006D00650001004400
      4200540065007800740033000100010001000D000A0070007000440042005400
      65007800740034002E0044006100740061004600690065006C00640001004A00
      5F004E004F000100010001000D000A0070007000440042005400650078007400
      34002E0055007300650072004E0061006D006500010044004200540065007800
      740034000100010001000D000A00700070004400420054006500780074003500
      2E0044006100740061004600690065006C00640001004A0032005F004A004F00
      42000100010001000D000A007000700044004200540065007800740035002E00
      55007300650072004E0061006D00650001004400420054006500780074003500
      0100010001000D000A007000700044004200540065007800740036002E004400
      6100740061004600690065006C006400010043005300540059004C0045000100
      010001000D000A007000700044004200540065007800740036002E0055007300
      650072004E0061006D0065000100440042005400650078007400360001000100
      01000D000A007000700044004200540065007800740037002E00440061007400
      61004600690065006C0064000100410043004F004C000100010001000D000A00
      7000700044004200540065007800740037002E0055007300650072004E006100
      6D006500010044004200540065007800740037000100010001000D000A007000
      700044004200540065007800740038002E004400610074006100460069006500
      6C00640001005100540059000100010001000D000A0070007000440042005400
      65007800740038002E0055007300650072004E0061006D006500010044004200
      540065007800740038000100010001000D000A00700070004400420054006500
      7800740039002E0044006100740061004600690065006C006400010044004400
      54000100010001000D000A007000700044004200540065007800740039002E00
      55007300650072004E0061006D00650001004400420054006500780074003900
      0100010001000D000A0070007000440042005400650078007400310031002E00
      44006100740061004600690065006C0064000100450058004600540059000100
      010001000D000A0070007000440042005400650078007400310031002E005500
      7300650072004E0061006D006500010044004200540065007800740031003100
      0100010001000D000A0078003000300032002E00440061007400610046006900
      65006C006400010052005100540059000100010001000D000A00780030003000
      32002E0055007300650072004E0061006D006500010078003000300032000100
      010001000D000A0070007000440042005400650078007400310032002E004400
      6100740061004600690065006C0064000100540050004C0041004E0054000100
      010001000D000A0070007000440042005400650078007400310032002E005500
      7300650072004E0061006D006500010044004200540065007800740031003200
      0100010001000D000A0078003000300031002E00440061007400610046006900
      65006C006400010049005100540059000100010001000D000A00780030003000
      31002E0055007300650072004E0061006D006500010078003000300031000100
      010001000D000A0070007000440042005400650078007400310030002E004400
      6100740061004600690065006C0064000100520057004F000100010001000D00
      0A0070007000440042005400650078007400310030002E005500730065007200
      4E0061006D006500010044004200540065007800740031003000010001000100
      0D000A0070007000440042005400650078007400310033002E00440061007400
      61004600690065006C006400010053005400410054000100010001000D000A00
      70007000440042005400650078007400310033002E0055007300650072004E00
      61006D0065000100440042005400650078007400310033000100010001000D00
      0A0078003000300033002E0055007300650072004E0061006D00650001007800
      3000300033000100010001000D000A0070007000440042005400650078007400
      310034002E0044006100740061004600690065006C0064000100520057004F00
      0100010001000D000A0070007000440042005400650078007400310034002E00
      55007300650072004E0061006D00650001004400420054006500780074003100
      300031000100010001000D000A00740074006C003000300031002E0055007300
      650072004E0061006D0065000100740074006C00300030003100010001000100
      0D000A00700070004C006100620065006C00320032002E005500730065007200
      4E0061006D00650001004C006100620065006C00320032000100010001000D00
      0A007000700044004200430061006C00630031002E0044006100740061004600
      690065006C00640001005100540059000100010001000D000A00700070004400
      4200430061006C00630031002E0055007300650072004E0061006D0065000100
      44004200430061006C00630031000100010001000D000A007800320030003200
      2E0044006100740061004600690065006C006400010052005100540059000100
      010001000D000A0078003200300032002E0055007300650072004E0061006D00
      6500010078003200300032000100010001000D000A00740074006C0030003000
      32002E0055007300650072004E0061006D0065000100740074006C0030003000
      32000100010001000D000A00740074006C003000300033002E00550073006500
      72004E0061006D0065000100740074006C003000300033000100010001000D00
      0A00740074006C003000300034002E0055007300650072004E0061006D006500
      0100740074006C003000300034000100010001000D000A00740074006C003000
      300035002E0055007300650072004E0061006D0065000100740074006C003000
      300035000100010001000D000A00740074006C003000300036002E0055007300
      650072004E0061006D0065000100740074006C00300030003600010001000100
      0D000A0078003100300032002E0044006100740061004600690065006C006400
      010049005100540059000100010001000D000A0078003100300032002E005500
      7300650072004E0061006D006500010078003100300032000100010001000D00
      0A00740074006C003000310030002E0055007300650072004E0061006D006500
      0100740074006C003000310030000100010001000D000A007000700047007200
      6F007500700031002E0042007200650061006B004E0061006D00650001005400
      50004C0041004E0054000100010001000D000A0070007000470072006F007500
      700031002E0055007300650072004E0061006D0065000100470072006F007500
      700031000100010001000D000A007300750062003000300031002E0055007300
      650072004E0061006D0065000100730075006200300030003100010001000100
      0D000A00700070004C006100620065006C00320034002E005500730065007200
      4E0061006D00650001004C006100620065006C00320034000100010001000D00
      0A007000700044004200430061006C00630033002E0044006100740061004600
      690065006C00640001005100540059000100010001000D000A00700070004400
      4200430061006C00630033002E0055007300650072004E0061006D0065000100
      44004200430061006C00630033000100010001000D000A007800320030003100
      2E0044006100740061004600690065006C006400010052005100540059000100
      010001000D000A0078003200300031002E0055007300650072004E0061006D00
      6500010078003200300031000100010001000D000A0073007500620030003000
      32002E0055007300650072004E0061006D006500010073007500620030003000
      32000100010001000D000A007300750062003000300033002E00550073006500
      72004E0061006D00650001007300750062003000300033000100010001000D00
      0A007300750062003000300034002E0055007300650072004E0061006D006500
      01007300750062003000300034000100010001000D000A007300750062003000
      300035002E0055007300650072004E0061006D00650001007300750062003000
      300035000100010001000D000A007300750062003000300036002E0055007300
      650072004E0061006D0065000100730075006200300030003600010001000100
      0D000A0078003100300031002E0044006100740061004600690065006C006400
      010049005100540059000100010001000D000A0078003100300031002E005500
      7300650072004E0061006D006500010078003100300031000100010001000D00
      0A007300750062003000310030002E0055007300650072004E0061006D006500
      01007300750062003000310030000100010001000D000A00730074004C006F00
      630061006C00650073005F0055006E00690063006F00640065000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0030005D002E005400690074006C006500
      2E00430061007000740069006F006E000100A25B3662E34E5F86010043007500
      730074006F006D0065007200010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0031005D002E005400
      690074006C0065002E00430061007000740069006F006E000100B7922E55AE55
      5F86010053004F0020002300010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0032005D002E005400
      690074006C0065002E00430061007000740069006F006E000100028AAE554C88
      01004F00720064006500720020004C0069006E006500010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B0033005D002E005400690074006C0065002E00430061007000740069006F00
      6E000100E55D0B7A416D0B7A0100500072006F006A0065006300740020005000
      72006F006300650073007300010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0034005D002E005400
      690074006C0065002E00430061007000740069006F006E000100E55D0B7A5F86
      0100500072006F006A0065006300740020002300010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      35005D002E005400690074006C0065002E00430061007000740069006F006E00
      01003652AE555F86010057004F0020002300010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003600
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      3652AE555F8620002D0020000E54B47D010057004F0020002D00200053007500
      6600660069007800010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B0037005D002E00540069007400
      6C0065002E00430061007000740069006F006E0001002A8F3652AE555F862000
      2D0020000E54B47D0100520057004F0020002D00200053007500660066006900
      7800010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0038005D002E005400690074006C0065002E00
      430061007000740069006F006E000100A25B3E6B5F8601004300750073007400
      20005300740079006C006500010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0039005D002E005400
      690074006C0065002E00430061007000740069006F006E0001007282BC780100
      43006C007200200043006F0064006500010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0031003000
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      2A8F3652AE55F64E78650100520057004F002000510074007900010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B00310031005D002E005400690074006C0065002E00430061007000
      740069006F006E000100F25D895B9263F64E7865010053006300680065006400
      75006C00650064002000510074007900010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0031003200
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      18997865010052006500730074002000510074007900010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B00310033005D002E005400690074006C0065002E0043006100700074006900
      6F006E000100D84E4B901F670100440065006C00690076006500720079002000
      4400610074006500010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B00310034005D002E0054006900
      74006C0065002E00430061007000740069006F006E0001002A8F3652AE55E296
      E05E1F670100520057004F002000450078002D00660074007900010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B00310035005D002E005400690074006C0065002E00430061007000
      740069006F006E000100E05E0100460074007900010001000D000A0074006200
      6C0073006F0070002E0049006E0064006500780044006500660073005B003000
      5D002E004600690065006C00640073000100740070006C0061006E0074003B00
      63007500730074006F006D00650072003B006A005F006E006F003B006F007200
      64006C0069006E0065003B00610063006F006C000100010001000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A005400660072006D0077006F007200640065007200010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C0032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C0033000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C0035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C0036000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0038000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C0039000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003000
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00310032000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00310033000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310035000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00310036000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00310037000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003800
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310039000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000530079007300740065006D005600610072006900610062006C0065003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00320030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000530079007300740065006D005600610072006900610062006C0065003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00320031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00320033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00320035000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0032003600
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00320037000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00320038000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00320039000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0033003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      700044004200540065007800740032000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070007000440042005400
      65007800740033000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740035000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      700044004200540065007800740036000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070007000440042005400
      65007800740037000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003800
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740039000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000440042005400650078007400310031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007800300030003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740031003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      78003000300031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003100
      30000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004400420054006500780074003100330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0078003000300033000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      310034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00740074006C0030003000310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00320032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420043006100
      6C00630031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007800320030003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00740074006C00
      3000300032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00740074006C003000300033000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007400
      74006C003000300034000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00740074006C0030003000350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00740074006C003000300036000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00780031003000320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00740074006C003000310030000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00730075006200300030003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00320034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      700044004200430061006C00630033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0078003200300031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A007300750062003000300032000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0073007500620030003000
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00730075006200300030003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00730075006200
      3000300035000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007300750062003000300036000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007800
      3100300031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007300750062003000310030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A00}
  end
end
