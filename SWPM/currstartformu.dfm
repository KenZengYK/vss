object frmcurrstart: Tfrmcurrstart
  Left = 192
  Top = 114
  Caption = 'Current Factory Start Date for RWO'
  ClientHeight = 444
  ClientWidth = 680
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
    Width = 680
    Height = 137
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 688
    object Label1: TLabel
      Left = 248
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Cust Style:'
    end
    object DBText1: TDBText
      Left = 304
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
    object Label2: TLabel
      Left = 488
      Top = 8
      Width = 30
      Height = 13
      Caption = 'RWO:'
    end
    object DBText2: TDBText
      Left = 520
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
    object Label5: TLabel
      Left = 128
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Project:'
    end
    object DBText5: TDBText
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
    object Label6: TLabel
      Left = 376
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Clr Code'
    end
    object DBText6: TDBText
      Left = 424
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      Color = clBtnFace
      DataField = 'Acol'
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
      Left = 32
      Top = 32
      Width = 96
      Height = 13
      Caption = 'Material Stand by % '
    end
    object Label8: TLabel
      Left = 248
      Top = 32
      Width = 76
      Height = 13
      Caption = 'Confirmed Date '
    end
    object Label9: TLabel
      Left = 32
      Top = 64
      Width = 60
      Height = 13
      Caption = 'Kindly Note  '
    end
    object DateEdit1: TDateEdit
      Left = 328
      Top = 32
      Width = 113
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object CEdit1: TCurrencyEdit
      Left = 128
      Top = 32
      Width = 81
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00'
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 96
      Top = 64
      Width = 577
      Height = 65
      ScrollBars = ssBoth
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 137
    Width = 680
    Height = 266
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
        Color = 11463662
        EditButtons = <>
        FieldName = 'FDT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Default Factory Start Date'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CPLAN'
        Footers = <>
        Title.Caption = 'Currenct Factory Start Date'
        Width = 60
      end
      item
        Color = 11463662
        EditButtons = <>
        FieldName = 'UPDT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Info Updated On'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'RSON'
        Footers = <>
        Title.Caption = 'Reason of Change'
        Width = 470
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 403
    Width = 680
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 405
    ExplicitWidth = 688
    object BitBtn1: TBitBtn
      Left = 32
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
      Left = 104
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
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 176
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_rwofdt'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
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
        Name = 'FDT'
        DataType = ftDate
      end
      item
        Name = 'CPLAN'
        DataType = ftDate
      end
      item
        Name = 'RSON'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'UPDT'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'seq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 8
    Top = 176
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 40
    Top = 176
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 72
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 176
  end
end
