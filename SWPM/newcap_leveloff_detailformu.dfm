object frmnewcap_leveloff_detail: Tfrmnewcap_leveloff_detail
  Left = 192
  Top = 114
  Caption = 'Level off Del Qty of Sale Proj - Tracking'
  ClientHeight = 599
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 825
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 83
      Height = 13
      Caption = 'Cust'#39's Proj Code  '
    end
    object DBText1: TDBText
      Left = 104
      Top = 8
      Width = 97
      Height = 17
      DataField = 'CUST'
      DataSource = frmnewcap_leveloff.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 224
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Prod Code'
    end
    object DBText2: TDBText
      Left = 288
      Top = 8
      Width = 97
      Height = 17
      DataField = 'FLAG6'
      DataSource = frmnewcap_leveloff.DataSource1
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
    Top = 33
    Width = 817
    Height = 525
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
    RowDetailPanel.Color = clBtnFace
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
        Color = 14941178
        EditButtons = <>
        FieldName = 'DT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Date'
        Width = 66
      end
      item
        Color = 14941178
        EditButtons = <>
        FieldName = 'ACT'
        Footer.Value = 'Total'
        Footer.ValueType = fvtStaticText
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Action'
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'WOFF'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Projection Month Total'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'WF1'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'WF2'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'WF3'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'WF4'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'WF5'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'WF6'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 75
      end
      item
        Color = 14941178
        EditButtons = <>
        FieldName = 'BAL1'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Balance'
        Width = 49
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 558
    Width = 817
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 560
    ExplicitWidth = 825
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
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
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 104
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Add Qty'
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 176
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Reduce Qty'
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 264
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Reallocate Qty'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
        000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
        99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
        0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
        FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
        0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
        000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
        00FF33337FFF7FF77733333300000000033F3333777777777333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 368
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 5
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oa_proj_detail_woff'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'M1'
        DataType = ftInteger
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'ACT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'WOFF'
        DataType = ftInteger
      end
      item
        Name = 'WF1'
        DataType = ftInteger
      end
      item
        Name = 'WF2'
        DataType = ftInteger
      end
      item
        Name = 'WF3'
        DataType = ftInteger
      end
      item
        Name = 'WF4'
        DataType = ftInteger
      end
      item
        Name = 'WF5'
        DataType = ftInteger
      end
      item
        Name = 'WF6'
        DataType = ftInteger
      end
      item
        Name = 'BAL1'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;cust;flag6;seq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    BeforePost = Query1BeforePost
    AfterPost = Query1AfterPost
    Left = 120
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 112
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 184
    Top = 112
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 216
    Top = 112
  end
end
