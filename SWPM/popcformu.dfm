object frmpopc: Tfrmpopc
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'POPC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 688
    Height = 412
    Align = alClient
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Supp'
        Footers = <>
        Title.Caption = 'Supplier'
      end
      item
        EditButtons = <>
        FieldName = 'Pono'
        Footers = <>
        Title.Caption = 'PO'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'Line1'
        Footers = <>
        Title.Caption = 'Line'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'Podt'
        Footers = <>
        Title.Caption = 'Issued Date'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'Jobno'
        Footers = <>
        Title.Caption = 'Project'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'Sku'
        Footers = <>
        Title.Caption = 'ITEM'
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'VCAT03'
        Footers = <>
        Title.Caption = 'Supplier Reference'
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'Ddt'
        Footers = <>
        Title.Caption = 'Due Date'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'Lc'
        Footers = <>
        Title.Caption = 'LC'
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'Hdl'
        Footers = <>
        Title.Caption = 'Handle'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'Clrs'
        Footers = <>
        Title.Caption = 'Color Shade'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'Swatch'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Lab'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CFDMETD'
        Footers = <>
        Title.Caption = 'CFDM ETD'
      end
      item
        EditButtons = <>
        FieldName = 'ETASL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DIPRJ'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DIPOK'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SUBMRJ'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SUBMOK'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'plnn'
        Footers = <>
        Title.Caption = 'Purchase Officer'
      end
      item
        EditButtons = <>
        FieldName = 'ShipMode'
        Footers = <>
        Title.Caption = 'Ship Mode'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'Order Qty'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Osqty'
        Footers = <>
        Title.Caption = 'O/S Qty'
      end
      item
        EditButtons = <>
        FieldName = 'Unit'
        Footers = <>
        Width = 28
      end
      item
        EditButtons = <>
        FieldName = 'Dtdr'
        Footers = <>
        Title.Caption = 'EX-FTY'
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'Px'
        Footers = <>
        Title.Caption = 'Unit Price'
      end
      item
        EditButtons = <>
        FieldName = 'Rate'
        Footers = <>
        Width = 55
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 412
    Width = 688
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 0
      Kind = bkClose
    end
  end
  object tblpopc: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from erp_popanel where cono='#39'P1'#39' and jobno='#39'TAMA-411'#39
    Params = <>
    ProviderName = 'dspPHG'
    RemoteServer = frmmain.Connection2
    Left = 56
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = tblpopc
    Left = 88
    Top = 24
  end
end
