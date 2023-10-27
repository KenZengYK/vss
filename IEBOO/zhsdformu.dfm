object frmzhsd: Tfrmzhsd
  Left = 192
  Top = 114
  Width = 690
  Height = 480
  Caption = #27454#26126#32048#34920'----'#32068#21512#35373#23450
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
    Top = 405
    Width = 682
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'AddNew'
      TabOrder = 0
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
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Delete'
      TabOrder = 1
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
      Left = 168
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
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
      Left = 240
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 3
      Kind = bkClose
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 682
    Height = 405
    Align = alClient
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'gcode'
        Footers = <>
        Title.Caption = #32068#21512'|'#32232#34399
      end
      item
        EditButtons = <>
        FieldName = 'gname'
        Footers = <>
        Title.Caption = #32068#21512'|'#21517#31281
        Width = 296
      end
      item
        EditButtons = <>
        FieldName = 'xz01'
        Footers = <>
        Title.Caption = #27161#28310
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'xz02'
        Footers = <>
        Title.Caption = #28154#33394#21152#20013#26479
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'xz03'
        Footers = <>
        Title.Caption = #22823#26194#22763
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'xz04'
        Footers = <>
        Title.Caption = #22320#21312#24615#22240#36554#24037#25216#34899
        Visible = False
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'xz05'
        Footers = <>
        Title.Caption = #22320#21312#24615#22240#32570#20047#25351#23450#36554#31278
        Width = 45
      end>
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_grouping'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    AfterPost = Query1AfterPost
    Left = 504
    Top = 8
    object Query1gseq: TIntegerField
      FieldName = 'gseq'
    end
    object Query1gcode: TStringField
      FieldName = 'gcode'
      Size = 10
    end
    object Query1xz01: TBooleanField
      FieldName = 'xz01'
    end
    object Query1xz02: TBooleanField
      FieldName = 'xz02'
    end
    object Query1xz03: TBooleanField
      FieldName = 'xz03'
    end
    object Query1xz04: TBooleanField
      FieldName = 'xz04'
    end
    object Query1xz05: TBooleanField
      FieldName = 'xz05'
    end
    object Query1gname: TStringField
      FieldName = 'gname'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    Left = 568
    Top = 8
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    Left = 600
    Top = 8
  end
end
