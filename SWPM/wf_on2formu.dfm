object frmwf_on2: Tfrmwf_on2
  Left = 192
  Top = 114
  Width = 855
  Height = 534
  Caption = 'Mobile Workforce - Opt Perf (Absence / BN)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 847
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 288
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Cust Style:'
    end
    object DBText1: TDBText
      Left = 344
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'FLAG6'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 480
      Top = 8
      Width = 26
      Height = 13
      Caption = 'QN#:'
    end
    object DBText2: TDBText
      Left = 512
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'J2_JOB'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 568
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object DBText3: TDBText
      Left = 584
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'RWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Line:'
    end
    object DBText4: TDBText
      Left = 64
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'Pline'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 384
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'CSTYLE'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 128
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Project:'
    end
    object DBText6: TDBText
      Left = 168
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'J_no'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 621
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object DBText8: TDBText
      Left = 637
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'FCCS'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 32
      Top = 32
      Width = 46
      Height = 13
      Caption = 'GSD WF:'
    end
    object DBText7: TDBText
      Left = 88
      Top = 32
      Width = 42
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'LSTR'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 152
      Top = 32
      Width = 26
      Height = 13
      Caption = 'Date:'
    end
    object DBText9: TDBText
      Left = 184
      Top = 32
      Width = 42
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'DT1'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 288
      Top = 32
      Width = 114
      Height = 13
      Caption = 'Curr Net Sect Hr (NoT): '
    end
    object DBText10: TDBText
      Left = 408
      Top = 32
      Width = 48
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'CSECT'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 480
      Top = 32
      Width = 92
      Height = 13
      Caption = 'CsT Used Sect Hr: '
    end
    object DBText11: TDBText
      Left = 576
      Top = 32
      Width = 48
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'CEOT'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 847
    Height = 402
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'PID'
        Footers = <>
        Title.Caption = 'Mobile Workforce ID'
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'FPID'
        Footers = <>
        Title.Caption = 'Fill Absence|WF ID (Absence)|SWF'
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'FPID1'
        Footers = <>
        Title.Caption = 'Fill Absence|WF ID (Absence)|MWF'
        Width = 115
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'FSECT'
        Footers = <>
        Title.Caption = 'Fill Absence|Sect Hr'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'FA'
        Footers = <>
        Title.Caption = 'Fill Absence|NoT'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'FAC'
        Footers = <>
        Title.Caption = 'Fill Absence|CsT'
        Width = 60
      end
      item
        Color = 12121071
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'AN'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Fill Absence|WF|NoT'
      end
      item
        Color = 12121071
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'AC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Fill Absence|WF|CsT'
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'FSECT1'
        Footers = <>
        Title.Caption = 'Free BN|Used Sect Hr'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'BNOP'
        Footers = <>
        Title.Caption = 'Free BN|Operation #'
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'FBN'
        Footers = <>
        Title.Caption = 'Free BN|NoT'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'FBNC'
        Footers = <>
        Title.Caption = 'Free BN|CsT'
        Width = 60
      end
      item
        Color = 12121071
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'BNN'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Free BN|WF|NoT'
      end
      item
        Color = 12121071
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'BNC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Free BN|WF|CsT'
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 459
    Width = 847
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      Caption = 'AddNew'
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
      Left = 104
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Delete'
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
      Left = 176
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
      Left = 248
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
      TabOrder = 3
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtn5: TBitBtn
      Left = 320
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 4
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from line_wf_on2'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 136
    Top = 184
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 184
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 232
    Top = 184
  end
  object query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblmwfid'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 136
    Top = 216
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = query4
    Left = 168
    Top = 216
  end
end
