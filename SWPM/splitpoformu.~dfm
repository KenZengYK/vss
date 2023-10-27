object frmsplitpo: Tfrmsplitpo
  Left = 192
  Top = 114
  Width = 713
  Height = 539
  Caption = 'Split Quantity by Cust PO '
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 705
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 26
      Height = 13
      Caption = 'PDN '
    end
    object DBText1: TDBText
      Left = 56
      Top = 8
      Width = 121
      Height = 17
      DataField = 'PDN'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Ex-fty Date '
    end
    object DBText2: TDBText
      Left = 256
      Top = 8
      Width = 121
      Height = 17
      DataField = 'EXFTY'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Project #  '
    end
    object DBText3: TDBText
      Left = 80
      Top = 24
      Width = 113
      Height = 17
      DataField = 'J_NO'
      DataSource = frmpdn.DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 192
      Top = 24
      Width = 35
      Height = 13
      Caption = 'WO #  '
    end
    object DBText4: TDBText
      Left = 256
      Top = 24
      Width = 73
      Height = 17
      DataField = 'J2_JOB'
      DataSource = frmpdn.DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 336
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Clr Code  '
    end
    object DBText5: TDBText
      Left = 384
      Top = 24
      Width = 65
      Height = 17
      DataField = 'ACOL'
      DataSource = frmpdn.DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 456
      Top = 24
      Width = 43
      Height = 13
      Caption = 'RWO #  '
    end
    object DBText6: TDBText
      Left = 504
      Top = 24
      Width = 49
      Height = 17
      DataField = 'RWO'
      DataSource = frmpdn.DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 568
      Top = 24
      Width = 28
      Height = 13
      Caption = 'QTY  '
    end
    object DBText7: TDBText
      Left = 600
      Top = 24
      Width = 81
      Height = 17
      DataField = 'SQTY'
      DataSource = frmpdn.DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 705
    Height = 415
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CUSTPO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CUST PO'
        Width = 126
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'PSIZE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'SQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'PDN Qty'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Ex-fty Qty'
        Width = 77
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 464
    Width = 705
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 1
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_custpoqty'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'PSEQ'
        DataType = ftInteger
      end
      item
        Name = 'CUSTPO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'PSIZE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'CNAME'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 64
    Top = 65520
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 65520
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 128
    Top = 65520
  end
  object Query6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 160
    Top = 65520
  end
  object Query7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 192
    Top = 65520
  end
end
