object frmqn_calcsects: Tfrmqn_calcsects
  Left = 0
  Top = 0
  Caption = #23526#27841#19978#32218#29983#29986#31680#25976#20998#37197#34920' ('#30526#24373#25976#38913'/'#25289#20381#38752')'
  ClientHeight = 340
  ClientWidth = 532
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
    Top = 0
    Width = 532
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 14
      Width = 30
      Height = 13
      Caption = #26085#26399'  '
    end
    object DBText1: TDBText
      Left = 72
      Top = 14
      Width = 89
      Height = 17
      DataField = 'DT1'
      DataSource = frmachieving.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 14
      Width = 66
      Height = 13
      Caption = #19978#32218#32317#31680#25976'  '
    end
    object cEdit1: TCurrencyEdit
      Left = 256
      Top = 14
      Width = 81
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00'
      TabOrder = 0
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 532
    Height = 258
    Align = alClient
    AllowedOperations = [alopUpdateEh]
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
        FieldName = 'PLINE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25289
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24037#31243#34399
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21046#21934#34399
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        ReadOnly = True
        Title.Caption = #33394#30908
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36650#21046#21934#34399' - '#21518#32180
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'FCCS'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25976#38913#34399' - '#21518#32180
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'QNF'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#27969'(s)'#22846#27969'(m)'
        Width = 21
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'FSECT'
        Footers = <>
        Title.Caption = #23526#27841#19978#32218#31680#25976'|'#29983#29986#31680#26178'|'#30001
        Width = 45
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'TSECT'
        Footers = <>
        Title.Caption = #23526#27841#19978#32218#31680#25976'|'#29983#29986#31680#26178'|'#33267
        Width = 46
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'QSECT'
        Footer.DisplayFormat = '0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = #23526#27841#19978#32218#31680#25976'|'#32317#31680#25976
        Width = 48
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 299
    Width = 532
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      Caption = #35336#31639
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333FFFFFFFFF333333300000000
        0333333777777777F33333330888888803333337FFFFFFF7F333333307777777
        0333333777777777F33333330FFFFFFF03333337F3F3FFF7F33333330F9F000F
        03333337F7377737F33333330FFFFFFF03333337F3333337F33333330FFFFFFF
        03333337F3FFFFF7F33333330F40004F03333337F77777F7F33333330F00000F
        03333337F7F337F7F33333330F00000F03333337F7FFF7F7F33333330F40004F
        03333337F7777737F33333330FFFFFFF03333337FFFFFFF7F333333300000000
        0333333777777777333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 8
      Width = 73
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from line_shjs_tmpjs where pline='#39'T003U'#39' and dt1='#39'2016-' +
      '05-05'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query1AfterPost
    Left = 352
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 384
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 416
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 448
  end
  object Query10: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 480
  end
end
