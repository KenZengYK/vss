object frmGAI_Reasons: TfrmGAI_Reasons
  Left = 0
  Top = 0
  Caption = 'Cause list for GAI below index'
  ClientHeight = 500
  ClientWidth = 1033
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 459
    Width = 1033
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitWidth = 1067
    object Label1: TLabel
      Left = 280
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Label1'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 18
      Top = 9
      Width = 73
      Height = 25
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 90
      Top = 9
      Width = 73
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 1
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1033
    Height = 378
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = #26032#32048#26126#39636
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CHK'
        Footers = <>
        Title.Caption = ' '
        Width = 21
      end
      item
        EditButtons = <>
        FieldName = 'FL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cause Group/ '#25104#22240#32068#21029'|CN/'#20013
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'FL_E'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cause Group/ '#25104#22240#32068#21029'|EN/'#33521
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'FL_ZB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Group'#13#10#20998#39006
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'YY_ZB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Seq.'#13#10#24207#34399
        Width = 25
      end
      item
        EditButtons = <>
        FieldName = 'YY_DESC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cause Category/ '#25104#22240#39006#21029'|CN/'#20013
        Width = 350
      end
      item
        EditButtons = <>
        FieldName = 'YY_DESC_E'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cause Category/ '#25104#22240#39006#21029'|EN/'#33521
        Width = 400
      end
      item
        EditButtons = <>
        FieldName = 'OTH'
        Footers = <>
        Title.Caption = 'Reason Supplement'#13#10#21407#22240#35036#20805
        Visible = False
        Width = 220
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1033
    Height = 81
    Align = alTop
    TabOrder = 2
    object Label46: TLabel
      Left = 18
      Top = 15
      Width = 327
      Height = 14
      Caption = 'Goal Achieving Index (GAI) status '#25351#37341#20540#36948#27161#24773#27841':-    '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object chkb01: TCheckBox
      Left = 18
      Top = 35
      Width = 273
      Height = 17
      Caption = 'A) GAI achieved target '#25351#37341#20540#36948#27161'(0% to +5%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object chkb02: TCheckBox
      Left = 19
      Top = 58
      Width = 272
      Height = 17
      Caption = 'C) GAI lower than target '#25351#37341#20540#19981#36948#27161'(0% lower)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object chkb03: TCheckBox
      Left = 376
      Top = 58
      Width = 202
      Height = 17
      Caption = 'D) No output at present '#26283#28961#29986#37327#25976
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object chkb04: TCheckBox
      Left = 376
      Top = 35
      Width = 282
      Height = 17
      Caption = 'B) GAI higher than target '#25351#37341#20540#20559#39640'(+5% higher)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from line_shjs_remarks_new1 where dt1='#39'2016-07-26'#39' and ' +
      'pline='#39'T014U'#39
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
        Name = 'RSEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SPE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CHK'
        DataType = ftBoolean
      end
      item
        Name = 'FL'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FL_SEQ'
        DataType = ftInteger
      end
      item
        Name = 'YY_SEQ'
        DataType = ftInteger
      end
      item
        Name = 'YY_DESC'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'OPT'
        DataType = ftInteger
      end
      item
        Name = 'RS'
        DataType = ftFloat
      end
      item
        Name = 'RSBL'
        DataType = ftFloat
      end
      item
        Name = 'JS'
        DataType = ftFloat
      end
      item
        Name = 'JSBL'
        DataType = ftFloat
      end
      item
        Name = 'FL_ZB'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'YY_ZB'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'OTH'
        DataType = ftWideString
        Size = 200
      end
      item
        Name = 'WIP1'
        DataType = ftBoolean
      end
      item
        Name = 'CMP1'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'yy_seq;rseq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query4AfterPost
    Left = 136
    Top = 78
  end
  object DataSource1: TDataSource
    DataSet = Query4
    Left = 176
    Top = 78
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tbl_e915_remarks1 where pline='#39'T006U'#39' and sdt1='#39'20' +
      '22-02-28'#39
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
        Name = 'SDT1'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'SDT2'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'RSEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CHK'
        DataType = ftBoolean
      end
      item
        Name = 'WIP1'
        DataType = ftBoolean
      end
      item
        Name = 'CMP1'
        DataType = ftBoolean
      end
      item
        Name = 'FL_SEQ'
        DataType = ftInteger
      end
      item
        Name = 'FL_ZB'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FL'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FL_E'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'YY_SEQ'
        DataType = ftInteger
      end
      item
        Name = 'YY_ZB'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'YY_DESC'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'YY_DESC_E'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'OTH'
        DataType = ftWideString
        Size = 200
      end
      item
        Name = 'USR'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DT1'
        DataType = ftDate
      end
      item
        Name = 'CMP_DT'
        DataType = ftDate
      end
      item
        Name = 'YY_DESC_T'
        DataType = ftWideString
        Size = 400
      end
      item
        Name = 'FL_T'
        DataType = ftWideString
        Size = 250
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'yy_seq;rseq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 136
    Top = 142
  end
  object DataSource2: TDataSource
    DataSet = Query1
    Left = 176
    Top = 142
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 688
    Top = 16
  end
  object Query6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 736
    Top = 16
  end
end
