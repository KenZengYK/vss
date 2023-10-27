object frmscgx_gsj: Tfrmscgx_gsj
  Left = 192
  Top = 114
  Width = 600
  Height = 521
  Caption = 'SAH'#24037#26178#20729#35373#32622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 592
    Height = 446
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1fty: TcxGridDBColumn
        Caption = #24037#24288
        DataBinding.FieldName = 'fty'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1fae: TcxGridDBColumn
        Caption = 'FAE'
        DataBinding.FieldName = 'fae'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'PP'
          'F'
          'A'
          'E')
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1prodcode: TcxGridDBColumn
        Caption = #29986#21697#31278#39006
        DataBinding.FieldName = 'prodcode'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'B'
          'K'
          'U'
          'S')
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1difficulty: TcxGridDBColumn
        Caption = #38627#26131#24230
        DataBinding.FieldName = 'difficulty'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'A'
          'B'
          'C'
          'AA'
          'AB'
          'BA'
          'BB'
          'BC')
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1price: TcxGridDBColumn
        Caption = 'SAH'#24037#26178#20729
        DataBinding.FieldName = 'price'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.0000'
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 446
    Width = 592
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 73
      Height = 25
      Caption = #26032#22686
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
    end
    object BitBtn2: TBitBtn
      Left = 88
      Top = 8
      Width = 73
      Height = 25
      Caption = #21034#38500
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
    end
    object BitBtn3: TBitBtn
      Left = 160
      Top = 8
      Width = 73
      Height = 25
      Caption = #20445#23384
      TabOrder = 2
      OnClick = BitBtn3Click
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
    object BitBtn4: TBitBtn
      Left = 232
      Top = 8
      Width = 73
      Height = 25
      Caption = #36864#20986
      TabOrder = 3
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_price_master'
    FieldDefs = <
      item
        Name = 'seq'
        DataType = ftInteger
      end
      item
        Name = 'fty'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'fae'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'difficulty'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'prodcode'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'price'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 80
    Top = 56
    object Query1seq: TIntegerField
      FieldName = 'seq'
    end
    object Query1fty: TStringField
      FieldName = 'fty'
      Size = 10
    end
    object Query1fae: TStringField
      FieldName = 'fae'
      Size = 10
    end
    object Query1difficulty: TStringField
      FieldName = 'difficulty'
      Size = 10
    end
    object Query1prodcode: TStringField
      FieldName = 'prodcode'
      Size = 10
    end
    object Query1price: TFloatField
      FieldName = 'price'
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 84
    Top = 96
  end
  object Query3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 112
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
    Top = 56
  end
end
