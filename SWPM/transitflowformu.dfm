object frmtransitflow: Tfrmtransitflow
  Left = 192
  Top = 114
  Caption = 'Flow 1'
  ClientHeight = 253
  ClientWidth = 820
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
    Top = 0
    Width = 820
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 180
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Proj#'
    end
    object Label2: TLabel
      Left = 302
      Top = 8
      Width = 23
      Height = 13
      Caption = 'QN#'
    end
    object Label3: TLabel
      Left = 443
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label5: TLabel
      Left = 571
      Top = 8
      Width = 59
      Height = 13
      Caption = 'ERP Clr Cde'
    end
    object Label6: TLabel
      Left = 703
      Top = 8
      Width = 35
      Height = 13
      Caption = 'QN Qty'
    end
    object DBText1: TDBText
      Left = 215
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'J_no'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 339
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'J2_job'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 451
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'RWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 498
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'FCCS'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 637
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'Acol'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 753
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'Scqty'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 91
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Line'
    end
    object DBText7: TDBText
      Left = 115
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'Pline'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 403
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'CWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 395
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label4: TLabel
      Left = 489
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label10: TLabel
      Left = 22
      Top = 8
      Width = 14
      Height = 13
      Caption = 'Fty'
    end
    object DBText9: TDBText
      Left = 44
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'TPLANT'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 820
    Height = 179
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnTitleClick = DBGridEh1TitleClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'PSIZ'
        Footer.Value = 'Total '
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Size'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QN QTY'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'PQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ01'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ01'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ02'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ02'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ03'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ03'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ04'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ04'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ05'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ05'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ06'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ06'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ07'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ07'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ08'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ08'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ09'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ09'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ10'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ10'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ11'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ11'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ12'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ12'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ13'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ13'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ14'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ14'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ15'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ15'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ16'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ16'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ17'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ17'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ18'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ18'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ19'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ19'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ20'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ20'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ21'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ21'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ22'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ22'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ23'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ23'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ24'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ24'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ25'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ25'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQ26'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQ26'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Hint = 'Click here to view transit B/D'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TTQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'DIFF'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'DIFF1'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CMP'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CMP1'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'CMP'
        Width = 40
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 212
    Width = 820
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
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
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_trans_qty'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 16
    Top = 96
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 48
    Top = 96
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 80
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
    Top = 96
  end
end
