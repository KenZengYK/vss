object frmcstylegrp: Tfrmcstylegrp
  Left = 193
  Top = 114
  Caption = 'Season# / Range'
  ClientHeight = 441
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 47
    Height = 13
    Caption = 'Customer '
  end
  object Edit1: TEdit
    Left = 80
    Top = 16
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 4
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object DBGridEh1: TDBGridEh
    Left = 32
    Top = 48
    Width = 569
    Height = 321
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Customer'
        Width = 52
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'SOPNO'
        Footers = <>
        Title.Caption = 'SO#'
        Width = 75
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        Title.Caption = 'Project#'
        Width = 96
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        Title.Caption = 'WO#'
        Width = 78
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust Style'
        Width = 166
      end
      item
        EditButtons = <>
        FieldName = 'JHRS'
        Footers = <>
        Title.Caption = 'Season / Range'
        Width = 54
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 384
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
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 384
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_stylegrp'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'JHRS'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SOPNO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;cstyle'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 208
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 272
    Top = 8
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 304
    Top = 8
  end
end
