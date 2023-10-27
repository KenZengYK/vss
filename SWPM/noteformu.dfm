object frmnote: Tfrmnote
  Left = 77
  Top = 90
  Caption = 'Notepad for LWPM'
  ClientHeight = 570
  ClientWidth = 844
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
    Width = 844
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 852
    object Label1: TLabel
      Left = 184
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Project'
    end
    object Label2: TLabel
      Left = 352
      Top = 16
      Width = 19
      Height = 13
      Caption = 'WO'
    end
    object Label3: TLabel
      Left = 496
      Top = 16
      Width = 27
      Height = 13
      Caption = 'RWO'
    end
    object Label4: TLabel
      Left = 648
      Top = 16
      Width = 25
      Height = 13
      Caption = 'LWO'
    end
    object Label5: TLabel
      Left = 16
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object Label6: TLabel
      Left = 760
      Top = 16
      Width = 3
      Height = 13
      Visible = False
    end
    object DateEdit1: TDateEdit
      Left = 48
      Top = 16
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 224
      Top = 16
      Width = 105
      Height = 21
      Color = 12713466
      ReadOnly = True
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 376
      Top = 16
      Width = 97
      Height = 21
      Color = 12713466
      ReadOnly = True
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 528
      Top = 16
      Width = 97
      Height = 21
      Color = 12713466
      ReadOnly = True
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 680
      Top = 16
      Width = 97
      Height = 21
      Color = 12713466
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 526
    Width = 844
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 528
    ExplicitWidth = 852
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 73
      Height = 25
      Caption = 'AddNew'
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
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 88
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Delete'
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
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 160
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
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 232
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 304
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 844
    Height = 269
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DT'
        Footers = <>
        Title.Caption = 'Date'
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        Title.Caption = 'Project'
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        Title.Caption = 'Work Order'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        Title.Caption = 'Cust Style'
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'LW'
        Footers = <>
        Title.Caption = 'LWO'
        Width = 67
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 318
    Width = 844
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 320
    ExplicitWidth = 852
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 54
      Height = 13
      Caption = 'Remarks : -'
    end
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 343
    Width = 844
    Height = 183
    Align = alBottom
    DataField = 'RM'
    DataSource = DataSource1
    TabOrder = 4
    ExplicitTop = 345
    ExplicitWidth = 852
  end
  object ImageList1: TImageList
    Left = 232
    Top = 112
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_notepad'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 264
    Top = 112
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 296
    Top = 112
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 328
    Top = 112
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.Connection2
    Left = 360
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 392
    Top = 112
  end
end
