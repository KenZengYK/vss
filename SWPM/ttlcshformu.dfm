object frmttlcsh: Tfrmttlcsh
  Left = 192
  Top = 97
  Caption = #38750#19978#32218#31680#25976#20998#37197#34920' ('#25976#38913#21450#25289#20381#38752')'
  ClientHeight = 401
  ClientWidth = 729
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
  object Label1: TLabel
    Left = 32
    Top = 48
    Width = 30
    Height = 13
    Caption = #25289#21517'  '
  end
  object DBText1: TDBText
    Left = 64
    Top = 48
    Width = 42
    Height = 13
    AutoSize = True
    DataField = 'PLINE'
    DataSource = frmzktd.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 344
    Top = 24
    Width = 24
    Height = 13
    Caption = #26085#26399
  end
  object Label4: TLabel
    Left = 184
    Top = 360
    Width = 3
    Height = 13
    Visible = False
  end
  object Label8: TLabel
    Left = 122
    Top = 48
    Width = 42
    Height = 13
    Caption = #24037#31243#34399'  '
  end
  object DBText2: TDBText
    Left = 163
    Top = 48
    Width = 42
    Height = 13
    AutoSize = True
    DataField = 'J_NO'
    DataSource = frmzktd.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 232
    Top = 48
    Width = 45
    Height = 13
    Caption = #25976#38913#34399'   '
  end
  object DBText3: TDBText
    Left = 272
    Top = 48
    Width = 42
    Height = 13
    AutoSize = True
    DataField = 'J2_JOB'
    DataSource = frmzktd.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 328
    Top = 48
    Width = 9
    Height = 13
    Caption = ' - '
  end
  object DBText4: TDBText
    Left = 344
    Top = 48
    Width = 42
    Height = 13
    AutoSize = True
    DataField = 'RWO'
    DataSource = frmzktd.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 384
    Top = 48
    Width = 9
    Height = 13
    Caption = ' - '
  end
  object DBText5: TDBText
    Left = 400
    Top = 48
    Width = 42
    Height = 13
    AutoSize = True
    DataField = 'FCCS'
    DataSource = frmzktd.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBText6: TDBText
    Left = 376
    Top = 24
    Width = 42
    Height = 13
    AutoSize = True
    DataField = 'DT1'
    DataSource = frmzktd.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 48
    Top = -3
    Width = 70
    Height = 13
    Caption = 'QN Time GAP '
    Visible = False
  end
  object Label18: TLabel
    Left = 256
    Top = -3
    Width = 48
    Height = 13
    Caption = 'Rest Time'
    Visible = False
  end
  object Label19: TLabel
    Left = 517
    Top = 21
    Width = 84
    Height = 13
    Caption = 'Special Lost Time'
    Visible = False
  end
  object Label20: TLabel
    Left = 251
    Top = 360
    Width = 3
    Height = 13
    Visible = False
  end
  object Label21: TLabel
    Left = 32
    Top = 291
    Width = 63
    Height = 13
    Caption = #19978#29677#31680#25976'     '
  end
  object Label31: TLabel
    Left = 224
    Top = 352
    Width = 52
    Height = 13
    Caption = 'Only for 3A'
  end
  object Label32: TLabel
    Left = 224
    Top = 291
    Width = 81
    Height = 13
    Caption = #23433#25490#19978#32218#31680#25976'   '
  end
  object Label33: TLabel
    Left = 32
    Top = 24
    Width = 108
    Height = 13
    Caption = #30070#22825#25976#38913#36914#34892#32317#25976'    '
  end
  object qns001: TLabel
    Left = 150
    Top = 24
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 585
    Top = 290
    Width = 23
    Height = 22
    Hint = #23565#20110#22810#20491'QN'#35336#31639#27599#20491'QN'#30340#23526#27841#31680#25976
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
      73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
      0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
      0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
      0333337F777777737F333308888888880333337F333333337F33330888888888
      03333373FFFFFFFF733333700000000073333337777777773333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object Label16: TLabel
    Left = 32
    Top = 318
    Width = 129
    Height = 13
    Caption = #24288#23481#37327#25613#32791#29575'('#25289#20381#38752')     '
  end
  object Label35: TLabel
    Left = 432
    Top = 291
    Width = 87
    Height = 13
    Caption = #23526#27841#19978#32218#31680#25976'   '
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 352
    Width = 73
    Height = 25
    Caption = #20445#23384
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
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 352
    Width = 73
    Height = 25
    Caption = #36864#20986
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 72
    Width = 410
    Height = 201
    Caption = #19979#32218#20572#38931#31680#25976#20998#37197#34920'('#29986#37327#25613#32791'/CU Loss)  ('#25976#38913#20381#38752')'
    TabOrder = 0
    object Bevel1: TBevel
      Left = 16
      Top = 75
      Width = 377
      Height = 118
    end
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 12
      Height = 13
      Caption = '2a'
    end
    object Label5: TLabel
      Left = 152
      Top = 24
      Width = 12
      Height = 13
      Caption = '2b'
    end
    object Label6: TLabel
      Left = 296
      Top = 24
      Width = 12
      Height = 13
      Caption = '2c'
    end
    object Label7: TLabel
      Left = 16
      Top = 48
      Width = 12
      Height = 13
      Caption = '2d'
    end
    object Label14: TLabel
      Left = 152
      Top = 48
      Width = 12
      Height = 13
      Caption = '2g'
    end
    object Label15: TLabel
      Left = 296
      Top = 48
      Width = 12
      Height = 13
      Caption = '2h'
    end
    object Label23: TLabel
      Left = 24
      Top = 84
      Width = 248
      Height = 13
      AutoSize = False
      Caption = '2a = '#24453#26009' - '#35009#21106#37096#20379#25033#35009#29255#25110#27169#26479#20013#26039
    end
    object Label24: TLabel
      Left = 24
      Top = 100
      Width = 249
      Height = 13
      AutoSize = False
      Caption = '2b = '#24453#26009' - '#20489#24235#20379#25033#21103#26009#20013#26039
    end
    object Label25: TLabel
      Left = 24
      Top = 119
      Width = 286
      Height = 13
      AutoSize = False
      Caption = '2c = '#24453#26009' - '#20379#25033#21830#19981#22914#26399#20132#36008
    end
    object Label26: TLabel
      Left = 24
      Top = 135
      Width = 281
      Height = 13
      AutoSize = False
      Caption = '2d = '#29983#29986#36039#26009#20986#37679
    end
    object Label29: TLabel
      Left = 24
      Top = 154
      Width = 286
      Height = 13
      AutoSize = False
      Caption = '2g = '#21697#36074#21839#38988' - '#29289#26009' ('#21253#25324#35009#29255', '#27169#26479#21644#21103#26009') '#36074#37327#20986#37679
    end
    object Label30: TLabel
      Left = 24
      Top = 170
      Width = 161
      Height = 13
      AutoSize = False
      Caption = '2h = '#20854#23427
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 24
      Width = 73
      Height = 21
      DataField = 'A2'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 24
      Width = 73
      Height = 21
      DataField = 'B2'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 320
      Top = 24
      Width = 73
      Height = 21
      DataField = 'C2'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 40
      Top = 48
      Width = 73
      Height = 21
      DataField = 'D2'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 176
      Top = 48
      Width = 73
      Height = 21
      DataField = 'G2'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 320
      Top = 48
      Width = 73
      Height = 21
      DataField = 'H2'
      DataSource = DataSource1
      TabOrder = 5
    end
  end
  object DBEdit10: TDBEdit
    Left = 124
    Top = -3
    Width = 81
    Height = 21
    DataField = 'ASECT'
    DataSource = DataSource1
    TabOrder = 1
    Visible = False
  end
  object DBEdit11: TDBEdit
    Left = 320
    Top = -3
    Width = 81
    Height = 21
    DataField = 'RSECT'
    DataSource = DataSource1
    TabOrder = 2
    Visible = False
  end
  object DBEdit12: TDBEdit
    Left = 512
    Top = -6
    Width = 89
    Height = 21
    DataField = 'ESECT'
    DataSource = DataSource1
    TabOrder = 3
    Visible = False
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = -28
    Width = 449
    Height = 38
    DataField = 'EMARKS'
    DataSource = DataSource1
    TabOrder = 4
    Visible = False
  end
  object Edit1: TCurrencyEdit
    Left = 288
    Top = 352
    Width = 81
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 7
  end
  object DateEdit1: TDateEdit
    Left = 376
    Top = 352
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 8
    Visible = False
  end
  object GroupBox2: TGroupBox
    Left = 448
    Top = 72
    Width = 249
    Height = 201
    Caption = #38750#29983#29986#24615#31680#25976#20998#37197#34920'  ('#25289#20381#38752')'
    TabOrder = 9
    object Label12: TLabel
      Left = 16
      Top = 24
      Width = 75
      Height = 13
      Caption = '3.1a '#27599#26085#20363#26371' '
    end
    object Label13: TLabel
      Left = 16
      Top = 56
      Width = 63
      Height = 13
      Caption = '3.1b '#26032#27454#26371' '
    end
    object Label27: TLabel
      Left = 16
      Top = 91
      Width = 63
      Height = 13
      Caption = '3.1c '#29305#27530#26371' '
    end
    object Label28: TLabel
      Left = 16
      Top = 126
      Width = 145
      Height = 13
      Caption = '3.2a '#36681#27454#36681#33394#25509#36899'(linkage)   '
    end
    object Label34: TLabel
      Left = 16
      Top = 161
      Width = 132
      Height = 13
      Caption = '3.3a '#24037#20316#29872#22659#34907#29983#28165#28500'    '
    end
    object DBEdit5: TDBEdit
      Left = 160
      Top = 24
      Width = 73
      Height = 21
      DataField = 'E2'
      DataSource = DataSource2
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 160
      Top = 56
      Width = 73
      Height = 21
      DataField = 'F2'
      DataSource = DataSource2
      TabOrder = 1
    end
    object DBEdit16: TDBEdit
      Left = 160
      Top = 91
      Width = 73
      Height = 21
      DataField = 'Cur_kh3'
      DataSource = DataSource2
      TabOrder = 2
    end
    object DBEdit17: TDBEdit
      Left = 160
      Top = 126
      Width = 73
      Height = 21
      DataField = 'ZSECT'
      DataSource = DataSource2
      TabOrder = 3
    end
    object DBEdit18: TDBEdit
      Left = 160
      Top = 161
      Width = 73
      Height = 21
      DataField = 'Cur_cl'
      DataSource = DataSource2
      TabOrder = 4
    end
  end
  object Edit2: TEdit
    Left = 112
    Top = 291
    Width = 65
    Height = 21
    Color = 8454143
    ReadOnly = True
    TabOrder = 10
  end
  object Edit3: TEdit
    Left = 320
    Top = 291
    Width = 73
    Height = 21
    Color = 8454143
    ReadOnly = True
    TabOrder = 11
  end
  object Edit4: TEdit
    Left = 163
    Top = 318
    Width = 70
    Height = 21
    Color = 8454143
    ReadOnly = True
    TabOrder = 12
  end
  object Edit5: TEdit
    Left = 519
    Top = 291
    Width = 66
    Height = 21
    Color = 8454143
    ReadOnly = True
    TabOrder = 13
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from QN_CALENDAR'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 336
    Top = 65520
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 368
    Top = 65520
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 400
    Top = 65520
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 432
    Top = 65520
  end
  object Query10: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 464
    Top = 65520
  end
  object week52: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from week52 where date1='#39'2016-06-29'#39' and line='#39'T014U'#39
    FieldDefs = <
      item
        Name = 'PLINE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DT1'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'A2'
        DataType = ftFloat
      end
      item
        Name = 'B2'
        DataType = ftFloat
      end
      item
        Name = 'C2'
        DataType = ftFloat
      end
      item
        Name = 'D2'
        DataType = ftFloat
      end
      item
        Name = 'E2'
        DataType = ftFloat
      end
      item
        Name = 'F2'
        DataType = ftFloat
      end
      item
        Name = 'G2'
        DataType = ftFloat
      end
      item
        Name = 'H2'
        DataType = ftFloat
      end
      item
        Name = 'FLAG'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'LSECT'
        DataType = ftFloat
      end
      item
        Name = 'ZSECT'
        DataType = ftFloat
      end
      item
        Name = 'ASECT'
        DataType = ftFloat
      end
      item
        Name = 'RSECT'
        DataType = ftFloat
      end
      item
        Name = 'ESECT'
        DataType = ftFloat
      end
      item
        Name = 'EMARKS'
        DataType = ftWideString
        Size = 200
      end
      item
        Name = 'FLAG1'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'CSECT'
        DataType = ftFloat
      end
      item
        Name = 'TTL'
        DataType = ftFloat
      end
      item
        Name = 'CUR_KH3'
        DataType = ftFloat
      end
      item
        Name = 'CUR_CL'
        DataType = ftFloat
      end
      item
        Name = 'CUR_TD'
        DataType = ftFloat
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FCCS'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TTL_2'
        DataType = ftFloat
      end
      item
        Name = 'QNSEQ1'
        DataType = ftWideString
        Size = 5
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = week52AfterOpen
    AfterPost = week52AfterPost
    Left = 504
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = week52
    Left = 536
    Top = 40
  end
end
