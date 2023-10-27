object frmcust_matindex: Tfrmcust_matindex
  Left = 0
  Top = 0
  Caption = 'Open Stk Std Buffer Index'
  ClientHeight = 353
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 24
    Width = 465
    Height = 265
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
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
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Factory'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Transit Dest. Code'
        Width = 99
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'STD1'
        Footers = <>
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'STD2'
        Footers = <>
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'STD3'
        Footers = <>
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'STD4'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 304
    Width = 73
    Height = 25
    Caption = 'Save'
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
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 304
    Width = 73
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cust_mat_index'
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CUST'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'STD1'
        DataType = ftFloat
      end
      item
        Name = 'STD2'
        DataType = ftFloat
      end
      item
        Name = 'STD3'
        DataType = ftFloat
      end
      item
        Name = 'STD4'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'IDX1'
        Fields = 'tplant;cust'
      end>
    IndexName = 'IDX1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 48
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 80
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cust_sku02'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 112
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 144
  end
end
