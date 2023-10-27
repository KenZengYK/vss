object frmshpadvice: Tfrmshpadvice
  Left = 192
  Top = 114
  Caption = 'Shipping Advice - PDN manifest selection'
  ClientHeight = 383
  ClientWidth = 609
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
  object Label2: TLabel
    Left = 32
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object Label3: TLabel
    Left = 176
    Top = 32
    Width = 25
    Height = 13
    Caption = 'Year '
  end
  object Label4: TLabel
    Left = 288
    Top = 32
    Width = 29
    Height = 13
    Caption = 'Week'
  end
  object BitBtn4: TBitBtn
    Left = 32
    Top = 328
    Width = 137
    Height = 25
    Caption = 'Select Manifests'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
      55555575555555775F55509999999901055557F55555557F75F5001111111101
      105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
      01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
      8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
      0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
      0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
      05555555575FF777755555555500055555555555557775555555}
    ModalResult = 1
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = BitBtn4Click
  end
  object DBGridEh1: TDBGridEh
    Left = 32
    Top = 60
    Width = 553
    Height = 249
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
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
        FieldName = 'TPLANT'
        Footers = <>
        Title.Caption = 'Factory'
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'PDN'
        Footers = <>
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'VOYN'
        Footers = <>
        Title.Caption = 'Manifest #'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'EXFTY'
        Footers = <>
        Title.Caption = 'Ex-fty Date'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'WK'
        Footers = <>
        Title.Caption = 'Week'
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'STT'
        Footers = <>
        Title.Caption = 'Stage'
        Width = 149
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 328
    Width = 137
    Height = 25
    Caption = 'New Shipping Advice'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
      55555575555555775F55509999999901055557F55555557F75F5001111111101
      105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
      01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
      8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
      0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
      0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
      05555555575FF777755555555500055555555555557775555555}
    ModalResult = 1
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    Text = 'SL'
    OnChange = ComboBox1Change
    Items.Strings = (
      'SL'
      'RX'
      'CL')
  end
  object yEdit1: TSpinEdit
    Left = 200
    Top = 32
    Width = 57
    Height = 22
    MaxValue = 2050
    MinValue = 2007
    TabOrder = 3
    Value = 2007
    OnChange = ComboBox1Change
  end
  object wEdit1: TSpinEdit
    Left = 320
    Top = 32
    Width = 49
    Height = 22
    MaxValue = 53
    MinValue = 1
    TabOrder = 4
    Value = 32
    OnChange = ComboBox1Change
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 328
    Width = 153
    Height = 25
    Caption = 'Existed Shipping Advice'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 320
    Top = 328
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 6
  end
  object BitBtn5: TBitBtn
    Left = 168
    Top = 328
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 8
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_voyage_m'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MARKS1'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ACTDT'
        DataType = ftDate
      end
      item
        Name = 'ACTTM'
        DataType = ftTime
      end
      item
        Name = 'STT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'VOYN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SHPM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EXTM'
        DataType = ftTime
      end
      item
        Name = 'VER'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TRUCK'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INDT'
        DataType = ftDate
      end
      item
        Name = 'INTM'
        DataType = ftTime
      end
      item
        Name = 'ONDT'
        DataType = ftDate
      end
      item
        Name = 'VESS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'LPORT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DEST'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'BOX'
        DataType = ftInteger
      end
      item
        Name = 'WGHT'
        DataType = ftFloat
      end
      item
        Name = 'CBM'
        DataType = ftFloat
      end
      item
        Name = 'MEMO1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'RAIR'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'PS_CHANGE'
        DataType = ftMemo
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 8
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
    Top = 65528
  end
  object Query4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
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
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 136
    Top = 65528
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 65528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
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
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 72
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 104
    Top = 65528
  end
end
