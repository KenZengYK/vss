object frmttlcsh1: Tfrmttlcsh1
  Left = 0
  Top = 0
  Caption = #38750#19978#32218#31680#25976#20998#37197#34920' ('#25976#38913#21450#25289#20381#38752')'
  ClientHeight = 518
  ClientWidth = 894
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label33: TLabel
      Left = 390
      Top = 13
      Width = 108
      Height = 13
      Caption = #30070#22825#25976#38913#36914#34892#32317#25976'    '
    end
    object qns001: TLabel
      Left = 508
      Top = 13
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 24
      Top = 13
      Width = 30
      Height = 13
      Caption = #25289#21517'  '
    end
    object DBText1: TDBText
      Left = 56
      Top = 13
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'PLINE'
      DataSource = frmachieving.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 224
      Top = 13
      Width = 24
      Height = 13
      Caption = #26085#26399
    end
    object DBText6: TDBText
      Left = 256
      Top = 13
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'DT1'
      DataSource = frmachieving.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 436
    Width = 894
    Height = 82
    Align = alBottom
    TabOrder = 1
    object Label21: TLabel
      Left = 17
      Top = 17
      Width = 63
      Height = 13
      Caption = #19978#29677#31680#25976'     '
    end
    object Label22: TLabel
      Left = 417
      Top = 17
      Width = 81
      Height = 13
      Caption = #23526#27841#19978#32218#31680#25976'   '
    end
    object Label32: TLabel
      Left = 209
      Top = 17
      Width = 81
      Height = 13
      Caption = #23433#25490#19978#32218#31680#25976'   '
    end
    object SpeedButton1: TSpeedButton
      Left = 570
      Top = 16
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
      Left = 648
      Top = 17
      Width = 131
      Height = 13
      Caption = #24288#23481#37327#25613#32791#29575'('#25289#20381#38752')     '
    end
    object Edit2: TEdit
      Left = 72
      Top = 17
      Width = 73
      Height = 21
      Color = 8454143
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 288
      Top = 17
      Width = 72
      Height = 21
      Color = 8454143
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 775
      Top = 17
      Width = 73
      Height = 21
      Color = 8454143
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 17
      Top = 44
      Width = 73
      Height = 25
      Caption = #20445#23384
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 89
      Top = 44
      Width = 73
      Height = 25
      Caption = #36864#20986
      Kind = bkClose
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 498
      Top = 17
      Width = 73
      Height = 21
      Color = 8454143
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 625
    Height = 403
    Align = alLeft
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Top = 284
      Width = 623
      Height = 118
      Align = alBottom
      TabOrder = 0
      object Label23: TLabel
        Left = 120
        Top = 9
        Width = 248
        Height = 13
        AutoSize = False
        Caption = '2a = '#24453#26009' - '#35009#21106#37096#20379#25033#35009#29255#25110#27169#26479#20013#26039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 120
        Top = 25
        Width = 249
        Height = 13
        AutoSize = False
        Caption = '2b = '#24453#26009' - '#20489#24235#20379#25033#21103#26009#20013#26039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 120
        Top = 44
        Width = 286
        Height = 13
        AutoSize = False
        Caption = '2c = '#24453#26009' - '#20379#25033#21830#19981#22914#26399#20132#36008
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 120
        Top = 60
        Width = 281
        Height = 13
        AutoSize = False
        Caption = '2d = '#29983#29986#36039#26009#20986#37679
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 120
        Top = 79
        Width = 286
        Height = 13
        AutoSize = False
        Caption = '2g = '#21697#36074#21839#38988' - '#29289#26009' ('#21253#25324#35009#29255', '#27169#26479#21644#21103#26009') '#36074#37327#20986#37679
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 120
        Top = 95
        Width = 161
        Height = 13
        AutoSize = False
        Caption = '2h = '#20854#23427
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 623
      Height = 283
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 4
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
      end
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.0'
            Kind = skSum
            Column = cxGrid1DBBandedTableView1LSECT
          end
          item
            Format = #32317#31680#25976
            Kind = skCount
            Column = cxGrid1DBBandedTableView1H2
            DisplayText = #32317#31680#25976
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.BandHeaderHeight = 35
        Bands = <
          item
            Caption = 'A. '#19979#32218#20572#38931#31680#25976#20998#37197'('#25976#38913#20381#38752#21450#25289#20381#38752')'
          end
          item
            Caption = #25976#38913#24207#34399
            Position.BandIndex = 0
            Position.ColIndex = 0
          end
          item
            Caption = #24037#31243#34399
            Position.BandIndex = 0
            Position.ColIndex = 1
          end
          item
            Caption = #25976#38913#34399
            Position.BandIndex = 0
            Position.ColIndex = 2
          end
          item
            Caption = #20195#30908
            Position.BandIndex = 0
            Position.ColIndex = 3
          end>
        object cxGrid1DBBandedTableView1QNSEQ1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QNSEQ1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 35
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGrid1DBBandedTableView1J_NO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'J_NO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGrid1DBBandedTableView1J2_JOB: TcxGridDBBandedColumn
          DataBinding.FieldName = 'J2_JOB'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 65
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGrid1DBBandedTableView1CWO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CWO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 33
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGrid1DBBandedTableView1RWO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RWO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 33
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGrid1DBBandedTableView1FCCS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FCCS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 33
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGrid1DBBandedTableView1A2: TcxGridDBBandedColumn
          Caption = '2a'
          DataBinding.FieldName = 'A2'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1B2: TcxGridDBBandedColumn
          Caption = '2b'
          DataBinding.FieldName = 'B2'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1C2: TcxGridDBBandedColumn
          Caption = '2c'
          DataBinding.FieldName = 'C2'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1D2: TcxGridDBBandedColumn
          Caption = '2d'
          DataBinding.FieldName = 'D2'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1G2: TcxGridDBBandedColumn
          Caption = '2g'
          DataBinding.FieldName = 'G2'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 4
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1H2: TcxGridDBBandedColumn
          Caption = '2h'
          DataBinding.FieldName = 'H2'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 4
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1LSECT: TcxGridDBBandedColumn
          Caption = #23567#35336
          DataBinding.FieldName = 'LSECT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 45
          Position.BandIndex = 4
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1s2: TcxGridDBBandedColumn
          Caption = '2s'
          DataBinding.FieldName = 's2'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 42
          Position.BandIndex = 4
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
    end
  end
  object Panel4: TPanel
    Left = 625
    Top = 33
    Width = 269
    Height = 403
    Align = alClient
    TabOrder = 3
    object Label3: TLabel
      Left = 117
      Top = 216
      Width = 42
      Height = 13
      Caption = #32317#31680#25976'  '
    end
    object GroupBox2: TGroupBox
      Left = 6
      Top = 6
      Width = 249
      Height = 201
      Caption = 'B. '#38750#29983#29986#24615#31680#25976#20998#37197#34920'  ('#25289#20381#38752')'
      TabOrder = 0
      object Label12: TLabel
        Left = 16
        Top = 24
        Width = 76
        Height = 13
        Caption = '3.1a '#27599#26085#20363#26371' '
      end
      object Label13: TLabel
        Left = 16
        Top = 56
        Width = 64
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
        Width = 147
        Height = 13
        Caption = '3.2a '#36681#27454#36681#33394#25509#36899'(linkage)   '
      end
      object Label34: TLabel
        Left = 16
        Top = 161
        Width = 133
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
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 160
        Top = 56
        Width = 73
        Height = 21
        DataField = 'F2'
        DataSource = DataSource2
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 1
      end
      object DBEdit16: TDBEdit
        Left = 160
        Top = 91
        Width = 73
        Height = 21
        DataField = 'Cur_kh3'
        DataSource = DataSource2
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 2
      end
      object DBEdit17: TDBEdit
        Left = 160
        Top = 126
        Width = 73
        Height = 21
        DataField = 'ZSECT'
        DataSource = DataSource2
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 3
      end
      object DBEdit18: TDBEdit
        Left = 160
        Top = 161
        Width = 73
        Height = 21
        DataField = 'Cur_cl'
        DataSource = DataSource2
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 4
      end
    end
    object DBEdit1: TDBEdit
      Left = 166
      Top = 213
      Width = 73
      Height = 21
      Color = 8454143
      DataField = 'Cur_td'
      DataSource = DataSource2
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from QN_CALENDAR where dt1='#39'2016-06-29'#39' and pline='#39'T014' +
      'U'#39
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
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'pline;dt1;seq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 592
    Top = 24
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 624
    Top = 24
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 656
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 688
    Top = 24
  end
  object Query10: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 720
    Top = 24
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
    Left = 632
    Top = 256
  end
  object DataSource2: TDataSource
    DataSet = week52
    Left = 688
    Top = 256
  end
  object siLang1: TsiLang
    Version = '7.6.0.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    LangDelim = 1
    LangNames.Strings = (
      'Traditional Chinese'
      'English')
    Language = 'Traditional Chinese'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 248
    Top = 136
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00740074006C0063007300680031000100
      5E970A4EDA7DC07B786506524D9168882000280078650198CA53C9629D4F6097
      290001004E006F006E002000500072006F006400750063007400690076006500
      2000530065006300740069006F006E0020004800720073002000620072006500
      61006B0064006F0077006E002000280051004E002000260020004C0069006E00
      65002000440070006400290001000D000A004C006100620065006C0033003300
      0100767529597865019832904C883D7E78652000200020002000010054007400
      6C0020004F006E002D00680061006E0064002000530065006300740020004800
      720073003A00200001000D000A004C006100620065006C0031000100C9620D54
      2000200001004C0069006E00650023003A00200001000D000A004C0061006200
      65006C0032000100E5651F67010044006100740065003A00200001000D000A00
      4C006100620065006C003200310001000A4EED73C07B78652000200020002000
      200001004F006E002D0064007500740079003A00200001000D000A004C006100
      620065006C00320032000100E65BC16C0A4EDA7DC07B78652000200020000100
      4100630074002E002000530065006300740020004800720073003A0020000100
      0D000A004C006100620065006C00330032000100895B92630A4EDA7DC07B7865
      200020002000010041007200720061006E006700650064003A00200001000D00
      0A004C006100620065006C00310036000100E05EB95BCF910D64178087732800
      C9629D4F60972900200020002000200020000100430055002500200028004C00
      69006E006500200044007000640029003A00200001000D000A00420069007400
      420074006E0031000100DD4F585B0100530061007600650001000D000A004200
      69007400420074006E00320001000090FA510100450078006900740001000D00
      0A004C006100620065006C003200330001003200610020003D002000855F9965
      20002D002000C1887252E8909B4FC961C18847721662216A6F672D4EB7650100
      01000D000A004C006100620065006C003200340001003200620020003D002000
      855F996520002D0020000950AB5E9B4FC9616F5299652D4EB765010001000D00
      0A004C006100620065006C003200350001003200630020003D002000855F9965
      20002D0020009B4FC96146550D4E82591F67A44EA88C010001000D000A004C00
      6100620065006C003200360001003200640020003D0020001F752275C78C9965
      FA512F93010001000D000A004C006100620065006C0032003900010032006700
      20003D002000C154EA8C4F554C9820002D00200069729965200028000553EC62
      C18847722C002000216A6F678C546F52996529002000EA8CCF91FA512F930100
      01000D000A004C006100620065006C003300300001003200680020003D002000
      7651835B01003200680020003D0020004F007400680065007200730001000D00
      0A00630078004700720069006400310044004200420061006E00640065006400
      5400610062006C00650056006900650077003100410032000100320061000100
      01000D000A00630078004700720069006400310044004200420061006E006400
      650064005400610062006C006500560069006500770031004200320001003200
      6200010001000D000A0063007800470072006900640031004400420042006100
      6E006400650064005400610062006C0065005600690065007700310043003200
      010032006300010001000D000A00630078004700720069006400310044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      44003200010032006400010001000D000A006300780047007200690064003100
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310047003200010032006700010001000D000A0063007800470072006900
      6400310044004200420061006E006400650064005400610062006C0065005600
      690065007700310048003200010032006800010001000D000A00630078004700
      720069006400310044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C00530045004300540001000F5C088A01005300
      750062002D00740074006C0001000D000A006300780047007200690064003100
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310073003200010032007300010001000D000A004C006100620065006C00
      330001003D7EC07B7865200020000100540074006C0020005300650063007400
      200048007200730001000D000A00470072006F007500700042006F0078003200
      010042002E0020005E971F7522752760C07B786506524D916888200020002800
      C9629D4F60972900010042002E0020004E006F006E002000500072006F006400
      7500630074006900760065002000530065006300740069006F006E0020004800
      72007300200062002F006400200028004C0069006E0065002000440070006400
      290001000D000A004C006100620065006C0031003200010033002E0031006100
      2000CF6BE5658B4F03672000010033002E003100610020004400610069006C00
      790020006D0065007400740069006E00670001000D000A004C00610062006500
      6C0031003300010033002E00310062002000B0653E6B03672000010033002E00
      3100620020004E006500770020007300740079006C00650020006D0065006500
      740069006E00670001000D000A004C006100620065006C003200370001003300
      2E0031006300200079728A6B03672000010033002E0031006300200053007000
      65006300690061006C0020006D0065007400740069006E00670001000D000A00
      4C006100620065006C0032003800010033002E00320061002000498F3E6B498F
      7282A563239028006C0069006E006B0061006700650029002000200020000100
      33002E0032006100200051004E0020006C0069006E006B006100670065000100
      0D000A004C006100620065006C0033003400010033002E00330061002000E55D
      5C4FB07483585B881F75056E546F2000200020002000010033002E0033006100
      200043006C00650061006E0069006E00670001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00530070006500
      6500640042007500740074006F006E00310001000D5C8E4E1A590B5051004E00
      088A977BCF6B0B5051004E008476E65BC16CC07B7865010001000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A007300740046006F006E00740073005F00
      55006E00690063006F00640065000D000A005400660072006D00740074006C00
      630073006800310001005400610068006F006D006100010001000D000A007100
      6E00730030003000310001004D0053002000530061006E007300200053006500
      720069006600010001000D000A00440042005400650078007400310001004D00
      53002000530061006E007300200053006500720069006600010001000D000A00
      440042005400650078007400360001004D0053002000530061006E0073002000
      53006500720069006600010001000D000A004C006100620065006C0032003300
      01005400610068006F006D006100010001000D000A004C006100620065006C00
      3200340001005400610068006F006D006100010001000D000A004C0061006200
      65006C003200350001005400610068006F006D006100010001000D000A004C00
      6100620065006C003200360001005400610068006F006D006100010001000D00
      0A004C006100620065006C003200390001005400610068006F006D0061000100
      01000D000A004C006100620065006C003300300001005400610068006F006D00
      6100010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A007300740044006C006700
      7300430061007000740069006F006E0073005F0055006E00690063006F006400
      65000D000A005700610072006E0069006E00670001005700610072006E006900
      6E00670001000D000A004500720072006F00720001004500720072006F007200
      01000D000A0049006E0066006F0072006D006100740069006F006E0001004900
      6E0066006F0072006D006100740069006F006E0001000D000A0043006F006E00
      6600690072006D00010043006F006E006600690072006D0001000D000A005900
      650073000100260059006500730001000D000A004E006F00010026004E006F00
      01000D000A004F004B0001004F004B0001000D000A00430061006E0063006500
      6C000100430061006E00630065006C0001000D000A00410062006F0072007400
      01002600410062006F007200740001000D000A00520065007400720079000100
      26005200650074007200790001000D000A00490067006E006F00720065000100
      2600490067006E006F007200650001000D000A0041006C006C00010026004100
      6C006C0001000D000A004E006F00200054006F00200041006C006C0001004E00
      26006F00200074006F00200041006C006C0001000D000A005900650073002000
      54006F00200041006C006C000100590065007300200074006F00200026004100
      6C006C0001000D000A00480065006C00700001002600480065006C0070000100
      0D000A007300740053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00510075006500
      7200790031002E0043006F006D006D0061006E00640054006500780074000100
      730065006C0065006300740020002A002000660072006F006D00200051004E00
      5F00430041004C0045004E004400410052002000770068006500720065002000
      6400740031003D00270032003000310036002D00300036002D00320039002700
      200061006E006400200070006C0069006E0065003D0027005400300031003400
      55002700010001000D000A005100750065007200790031002E00500072006F00
      760069006400650072004E0061006D0065000100640073007000730063006800
      6500640075006C006500010001000D000A005100750065007200790032002E00
      500072006F00760069006400650072004E0061006D0065000100640073007000
      7300630068006500640075006C006500010001000D000A005100750065007200
      790033002E00500072006F00760069006400650072004E0061006D0065000100
      6400730070007300630068006500640075006C006500010001000D000A005100
      7500650072007900310030002E00500072006F00760069006400650072004E00
      61006D00650001006400730070007300630068006500640075006C0065000100
      01000D000A007700650065006B00350032002E0043006F006D006D0061006E00
      640054006500780074000100730065006C0065006300740020002A0020006600
      72006F006D0020007700650065006B0035003200200077006800650072006500
      2000640061007400650031003D00270032003000310036002D00300036002D00
      320039002700200061006E00640020006C0069006E0065003D00270054003000
      3100340055002700010001000D000A007700650065006B00350032002E005000
      72006F00760069006400650072004E0061006D00650001006400730070007300
      630068006500640075006C006500010001000D000A00730074004C006F006300
      61006C00650073005F0055006E00690063006F00640065000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0063007800470072006900640031004400420042006100
      6E006400650064005400610062006C006500560069006500770031002E004200
      61006E00640073005B0030005D002E00430061007000740069006F006E000100
      41002E0020000B4EDA7D5C501398C07B786506524D912800786501989D4F6097
      CA53C9629D4F60972900010041002E0020004F00660066002D006C0069006E00
      650020006F0068002D0068006F006C0064002000730065006300740020006800
      72007300200062002F0064002000280051004E002000260020004C0069006E00
      65002000440070006400290001000D000A006300780047007200690064003100
      44004200420061006E006400650064005400610062006C006500560069006500
      770031002E00420061006E00640073005B0031005D002E004300610070007400
      69006F006E000100786501988F5E5F86010051004E0020005300650071002E00
      01000D000A00630078004700720069006400310044004200420061006E006400
      650064005400610062006C006500560069006500770031002E00420061006E00
      640073005B0032005D002E00430061007000740069006F006E000100E55D0B7A
      5F860100500072006F006A00230001000D000A00630078004700720069006400
      310044004200420061006E006400650064005400610062006C00650056006900
      6500770031002E00420061006E00640073005B0033005D002E00430061007000
      740069006F006E000100786501985F86010051004E00230001000D000A006300
      78004700720069006400310044004200420061006E0064006500640054006100
      62006C006500560069006500770031002E00420061006E00640073005B003400
      5D002E00430061007000740069006F006E000100E34EBC780100430064006500
      01000D000A005100750065007200790031002E0049006E006400650078004400
      6500660073005B0030005D002E004600690065006C0064007300010070006C00
      69006E0065003B006400740031003B00730065007100010001000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A005400660072006D00740074006C00630073006800310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A0071006E0073003000300031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A004400420054006500
      7800740031000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00440042005400650078007400360001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A004C006100620065006C00320033000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A004C0061006200
      65006C00320034000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A004C006100620065006C00320035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A004C006100620065006C0032003600010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A004C006100
      620065006C00320039000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A004C006100620065006C0033003000
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00}
  end
end
