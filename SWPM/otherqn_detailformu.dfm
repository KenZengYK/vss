object frmotherqn_detail: Tfrmotherqn_detail
  Left = 0
  Top = 0
  Caption = 'frmotherqn_detail'
  ClientHeight = 313
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Project: '
    end
    object DBText3: TDBText
      Left = 62
      Top = 8
      Width = 65
      Height = 17
      DataField = 'J_NO'
      DataSource = frmotherqn.DataSource1
    end
    object Label4: TLabel
      Left = 144
      Top = 8
      Width = 36
      Height = 13
      Caption = 'WO #: '
    end
    object DBText4: TDBText
      Left = 190
      Top = 8
      Width = 65
      Height = 17
      DataField = 'J2_JOB'
      DataSource = frmotherqn.DataSource1
    end
    object Label5: TLabel
      Left = 282
      Top = 8
      Width = 41
      Height = 13
      Caption = 'WOc #: '
    end
    object DBText5: TDBText
      Left = 328
      Top = 8
      Width = 65
      Height = 17
      DataField = 'CWO'
      DataSource = frmotherqn.DataSource1
    end
    object Label6: TLabel
      Left = 408
      Top = 8
      Width = 43
      Height = 13
      Caption = 'RWO #: '
    end
    object DBText6: TDBText
      Left = 453
      Top = 7
      Width = 65
      Height = 17
      DataField = 'RWO'
      DataSource = frmotherqn.DataSource1
    end
    object Label7: TLabel
      Left = 546
      Top = 8
      Width = 33
      Height = 13
      Caption = 'QN #: '
    end
    object DBText7: TDBText
      Left = 584
      Top = 8
      Width = 65
      Height = 17
      DataField = 'FCCS'
      DataSource = frmotherqn.DataSource1
    end
    object Label1: TLabel
      Left = 17
      Top = 26
      Width = 56
      Height = 13
      Caption = 'Cust Style: '
    end
    object DBText1: TDBText
      Left = 79
      Top = 26
      Width = 122
      Height = 17
      DataField = 'CSTYLE'
      DataSource = frmotherqn.DataSource1
    end
    object Label2: TLabel
      Left = 215
      Top = 27
      Width = 48
      Height = 13
      Caption = 'Clr Code: '
    end
    object DBText2: TDBText
      Left = 269
      Top = 27
      Width = 65
      Height = 17
      DataField = 'ACOL'
      DataSource = frmotherqn.DataSource1
    end
    object Label8: TLabel
      Left = 353
      Top = 27
      Width = 43
      Height = 13
      Caption = 'QN Qty: '
    end
    object DBText8: TDBText
      Left = 402
      Top = 27
      Width = 65
      Height = 17
      DataField = 'SCQTY'
      DataSource = frmotherqn.DataSource1
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 673
    Height = 223
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
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
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Output'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'MARKS'
        Footers = <>
        Title.Caption = 'Notepad'
        Width = 444
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 272
    Width = 673
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
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
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 3
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule_ws_detail'
    FieldDefs = <
      item
        Name = 'PLINE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'WS'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DSEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'MARKS'
        DataType = ftWideString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'pline;seq;dt'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 136
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 80
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 80
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 232
    Top = 80
  end
end
