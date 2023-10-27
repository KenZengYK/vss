object frmpdn_notepad: Tfrmpdn_notepad
  Left = 0
  Top = 0
  Caption = 'PDN Notepad'
  ClientHeight = 600
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Width = 1025
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 14
      Width = 43
      Height = 13
      Caption = 'PDN No. '
    end
    object DBText1: TDBText
      Left = 84
      Top = 14
      Width = 141
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
      Left = 243
      Top = 14
      Width = 59
      Height = 13
      Caption = 'Ex-fty Date '
    end
    object DBText2: TDBText
      Left = 307
      Top = 14
      Width = 153
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
    object lblstyle001: TLabel
      Left = 435
      Top = 14
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 41
    Width = 1025
    Height = 518
    Align = alClient
    DataSource = DataSource1
    PanelHeight = 172
    PanelWidth = 1008
    PopupMenu = PopupMenu1
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Date: '
    end
    object Label4: TLabel
      Left = 163
      Top = 8
      Width = 43
      Height = 13
      Caption = 'Subject: '
    end
    object Label5: TLabel
      Left = 8
      Top = 35
      Width = 38
      Height = 13
      Caption = 'Sender:'
    end
    object Label6: TLabel
      Left = 163
      Top = 35
      Width = 91
      Height = 13
      Caption = 'Happening period: '
    end
    object Label7: TLabel
      Left = 413
      Top = 35
      Width = 52
      Height = 13
      Caption = 'Category: '
    end
    object Label8: TLabel
      Left = 8
      Top = 64
      Width = 46
      Height = 13
      Caption = 'Content: '
    end
    object DBEdit1: TDBEdit
      Left = 52
      Top = 8
      Width = 93
      Height = 21
      DataField = 'DT'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 208
      Top = 8
      Width = 713
      Height = 21
      DataField = 'STITLE'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 52
      Top = 35
      Width = 93
      Height = 21
      DataField = 'USR'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 260
      Top = 35
      Width = 134
      Height = 21
      DataField = 'TOADDR'
      DataSource = DataSource1
      Items.Strings = (
        'Last week'
        'This week'
        'Next week'
        'Next 2 week')
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 62
      Top = 64
      Width = 859
      Height = 113
      DataField = 'NOTEPAD'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 6
    end
    object DBComboBox2: TDBComboBox
      Left = 471
      Top = 35
      Width = 195
      Height = 21
      DataField = 'TEAM'
      DataSource = DataSource1
      Items.Strings = (
        'Audit Failure'
        'Behind Schedule'
        'Shipment Postponed by Customer'
        'Hold shipment by Customer'
        'Delay shipment by PH')
      TabOrder = 4
      OnChange = DBComboBox2Change
    end
    object DBComboBox3: TDBComboBox
      Left = 672
      Top = 35
      Width = 249
      Height = 21
      DataField = 'CCADDR'
      DataSource = DataSource1
      Items.Strings = (
        'Sample'
        'Materials'
        'Capacity - Cutting status'
        'Capacity - Molding status'
        'Capacity - Sewing status'
        'Capacity - Packing status')
      TabOrder = 5
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 559
    Width = 1025
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 17
      Top = 6
      Width = 73
      Height = 25
      Caption = 'Create'
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
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn8: TBitBtn
      Left = 90
      Top = 6
      Width = 73
      Height = 25
      Caption = 'Edit'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 163
      Top = 6
      Width = 70
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
      OnClick = BitBtn9Click
    end
    object BitBtn6: TBitBtn
      Left = 233
      Top = 6
      Width = 89
      Height = 25
      Caption = 'Send Email'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
        FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
        9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn6Click
    end
    object BitBtn1: TBitBtn
      Left = 322
      Top = 6
      Width = 72
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 4
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_notepad'
    FieldDefs = <
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'USR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'STITLE'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'NOTEPAD'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'TEAM'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'TOADDR'
        DataType = ftWideString
        Size = 600
      end
      item
        Name = 'CCADDR'
        DataType = ftWideString
        Size = 600
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 328
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 360
    Top = 320
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 392
    Top = 320
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 424
    Top = 320
  end
  object PopupMenu1: TPopupMenu
    Left = 456
    Top = 320
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
  end
end
