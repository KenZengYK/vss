object frmcmpl_actionlog: Tfrmcmpl_actionlog
  Left = 0
  Top = 0
  Caption = 'T1 Overdue action log/T1 '#36978#26399#34892#21205#35468
  ClientHeight = 318
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Fty '#24037#24288'  '
    end
    object Label2: TLabel
      Left = 336
      Top = 8
      Width = 110
      Height = 13
      Caption = 'As at today '#25130#33267#20170#22825' '
    end
    object ComboBox1: TComboBox
      Left = 96
      Top = 8
      Width = 97
      Height = 21
      TabOrder = 0
      Text = 'ALL'
      OnChange = ComboBox1Change
      Items.Strings = (
        'ALL'
        'SL'
        'RX'
        'CN'
        'CL')
    end
    object DateEdit1: TDateEdit
      Left = 448
      Top = 8
      Width = 97
      Height = 21
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 680
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Overdue '#36978#26399
      TabOrder = 2
      OnClick = BitBtn7Click
    end
    object TimeEdit1: TRzDateTimeEdit
      Left = 552
      Top = 8
      Width = 73
      Height = 21
      EditType = etTime
      Format = 'hh:nn'
      ReadOnly = True
      ReadOnlyColor = clWindow
      TabOrder = 3
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 811
    Height = 236
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxView1CustomDrawCell
      DataController.DataSource = ds1
      DataController.Filter.OnChanged = cxView1DataControllerFilterChanged
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0'
          Column = cxView1prjno
        end
        item
          Format = '#0'
          Column = cxView1marker_ttl
        end
        item
          Format = '#0'
          Column = cxView1copy_ttl
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      Styles.OnGetContentStyle = cxView1StylesGetContentStyle
      Bands = <
        item
          Caption = 'Seq'
          HeaderAlignmentVert = vaTop
          Visible = False
        end
        item
          Caption = 'Cutting Flow/'#35009#31243
          HeaderAlignmentVert = vaTop
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Flow 1 Info. (working calendar)/'#27969#31243'1'#36039#26009' ('#24037#20316#26085#26310')'
          HeaderAlignmentVert = vaTop
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Be Cut Matl/'#38656#35009#21106#29289#26009
          HeaderAlignmentVert = vaTop
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Action log - CF cmpl over-due/'#34892#21205#35468' - '#35009#31243#23436#25104#36229#26399
          HeaderAlignmentVert = vaTop
          Styles.Header = cxStyle3
        end>
      object cxView1seq: TcxGridDBBandedColumn
        Caption = #27425#13#10#24207
        DataBinding.FieldName = 'seq'
        HeaderAlignmentHorz = taCenter
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxView1f_wl: TcxGridDBBandedColumn
        DataBinding.FieldName = 'f_wl'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1f_xh: TcxGridDBBandedColumn
        DataBinding.FieldName = 'f_xh'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1cmpl_estdd: TcxGridDBBandedColumn
        DataBinding.FieldName = 'cmpl_estdd'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1sewing_f_wcrq: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sewing_f_wcrq'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1sewing_l_wcrq: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sewing_l_wcrq'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxView1prjno: TcxGridDBBandedColumn
        Caption = 'ID#/'#35672#21029#30908
        DataBinding.FieldName = 'prjno'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1fcrq: TcxGridDBBandedColumn
        Caption = 'Create dd'#13#10#24314#31435#26085#26399
        DataBinding.FieldName = 'fcrq'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1gch: TcxGridDBBandedColumn
        Caption = 'Proj#'#13#10#24037#31243#34399
        DataBinding.FieldName = 'gch'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 75
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1f_overdue: TcxGridDBBandedColumn
        Caption = 'Overdue'#13#10'days by line'#13#10#36229#22825#25976#13#10'('#25972#22825#35336')'
        DataBinding.FieldName = 'f_overdue'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Header = cxStyle1
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxView1f_cmpl_estdd1: TcxGridDBBandedColumn
        Caption = 'CF Cmpl'#13#10'est. dd'#13#10#35009#31243#23436#25104#13#10#38928#35336#26085#26399
        DataBinding.FieldName = 'f_cmpl_estdd1'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Header = cxStyle1
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxView1q1dt: TcxGridDBBandedColumn
        Caption = 'SW'#13#10'Start dd'#13#10#32299#21512#21046#20316#13#10#38283#22987#26085#26399
        DataBinding.FieldName = 'q1dt'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxView1f_lbrq: TcxGridDBBandedColumn
        Caption = 'Marker'#13#10'Create dd'#13#10#22044#26550#13#10#24314#31435#26085#26399
        DataBinding.FieldName = 'f_lbrq'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1f_sah: TcxGridDBBandedColumn
        Caption = 'SAH'#13#10'(850)'
        DataBinding.FieldName = 'f_sah'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.0000'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1f_sah_d: TcxGridDBBandedColumn
        DataBinding.FieldName = 'f_sah_d'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxView1f_qty: TcxGridDBBandedColumn
        Caption = 'Qty'#13#10#20214#25976
        DataBinding.FieldName = 'f_qty'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxView1f_qty_d: TcxGridDBBandedColumn
        DataBinding.FieldName = 'f_qty_d'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxView1f_qty_p: TcxGridDBBandedColumn
        Caption = 'Flow 1'#13#10'Stage'#13#10#27969#31243'1'#13#10#38542#27573#13#10'(%)'
        DataBinding.FieldName = 'f_qty_p'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxView1f_cmpl_estdd: TcxGridDBBandedColumn
        Caption = 'T1 est.'#13#10'Start dd'#13#10'T1 '#38928#35336#13#10#38283#22987#26085#26399
        DataBinding.FieldName = 'f_cmpl_estdd'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxView1f_cmpl_actdd: TcxGridDBBandedColumn
        Caption = 'CF Cmpl'#13#10'act. dd'#13#10#35009#31243#23436#25104#13#10#23526#38555#26085#26399
        DataBinding.FieldName = 'f_cmpl_actdd'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxView1lines: TcxGridDBBandedColumn
        Caption = 'Style'#13#10'Ttl'#13#10#27454#13#10#32317#25976
        DataBinding.FieldName = 'lines'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1f_estday: TcxGridDBBandedColumn
        Caption = 'est. days'#13#10'by line'#13#10'(min)'#13#10#38928#22825#25976#13#10'('#26368#23567')'
        DataBinding.FieldName = 'f_estday'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 53
        Position.BandIndex = 2
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxView1lines1: TcxGridDBBandedColumn
        Caption = 'Line'#13#10'Ttl'#13#10#25289#13#10#32317#25976
        DataBinding.FieldName = 'lines1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 2
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxView1stage: TcxGridDBBandedColumn
        Caption = 'Flow 1'#13#10'Stage'#13#10#27969#31243'1'#13#10#38542#27573
        DataBinding.FieldName = 'stage'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Header = cxStyle1
        Width = 40
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1ttl_wl: TcxGridDBBandedColumn
        Caption = 'TTL'#13#10#32317#25976
        DataBinding.FieldName = 'ttl_wl'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1aff_wl: TcxGridDBBandedColumn
        Caption = 'Affect'#13#10'Ttl'#13#10#24433#38911#13#10#32317#25976
        DataBinding.FieldName = 'aff_wl'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1aff_p: TcxGridDBBandedColumn
        Caption = 'Affect%'#13#10'(Max)'#13#10#24433#38911'%'#13#10'('#26368#22823')'
        DataBinding.FieldName = 'aff_p'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1al_reason_grp: TcxGridDBBandedColumn
        Caption = 'Cause Cat.'#13#10#25104#22240#39006#21029
        DataBinding.FieldName = 'al_reason_grp'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 200
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1al_reason: TcxGridDBBandedColumn
        Caption = 'Solution Follow-up'#13#10#35299#27770#26041#27861#36319#36914
        DataBinding.FieldName = 'al_reason'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 300
        Position.BandIndex = 4
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxView1al_reason_cde: TcxGridDBBandedColumn
        Caption = 'Cde'
        DataBinding.FieldName = 'al_reason_cde'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1al_cde: TcxGridDBBandedColumn
        Caption = 'Cde'
        DataBinding.FieldName = 'al_cde'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = cxView1Column1PropertiesButtonClick
        HeaderAlignmentHorz = taCenter
        Width = 30
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1al_grp: TcxGridDBBandedColumn
        Caption = 'Cause Grp'#13#10#25104#22240#32068#21029
        DataBinding.FieldName = 'al_grp'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1al_startdt: TcxGridDBBandedColumn
        Caption = 'Start'#13#10'dd/time'#13#10#38283#22987#13#10#26085#26399'/'#26178#38291
        DataBinding.FieldName = 'al_startdt'
        PropertiesClassName = 'TcxDateEditProperties'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
        Position.BandIndex = 4
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxView1al_cmpldt: TcxGridDBBandedColumn
        Caption = 'Target'#13#10'Cmpl dd'#13#10#30446#27161#13#10#23436#25104#26085#26399
        DataBinding.FieldName = 'al_cmpldt'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxView1al_cmpl: TcxGridDBBandedColumn
        Caption = 'Cmpl'#13#10#23436#25104
        DataBinding.FieldName = 'al_cmpl'
        HeaderAlignmentHorz = taCenter
        Width = 33
        Position.BandIndex = 4
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxView1marker_ttl: TcxGridDBBandedColumn
        Caption = 'CU'#13#10'Marker'#13#10'Ttl'
        DataBinding.FieldName = 'marker_ttl'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 38
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1copy_ttl: TcxGridDBBandedColumn
        Caption = 'CU'#13#10'Marker'#13#10'Ttl'#13#10'copies'
        DataBinding.FieldName = 'copy_ttl'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 38
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 277
    Width = 811
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Save '#20445#23384
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 567
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Export '#23566#20986
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 655
      Top = 8
      Width = 90
      Height = 25
      Caption = 'Exit '#36864#20986
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 384
      Top = 8
      Width = 177
      Height = 25
      Caption = 'Action log follow-up '#34892#21205#35468#36319#36914
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 111
      Top = 8
      Width = 139
      Height = 25
      Caption = 'Supplement Sheet '#38468#34920
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 256
      Top = 8
      Width = 122
      Height = 25
      Caption = 'Split Stage '#20998#38542#27573
      TabOrder = 5
      OnClick = BitBtn6Click
    end
  end
  object al_dashboard: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    AfterOpen = al_dashboardAfterOpen
    AfterPost = al_dashboardAfterPost
    CommandText = 'select * from cut_al_dashboard'
    CommandTimeout = 300
    IndexFieldNames = 'f_lbrq;prjno;stage_i'
    Parameters = <>
    Left = 440
    Top = 169
  end
  object ds1: TDataSource
    DataSet = al_dashboard
    Left = 484
    Top = 168
  end
  object AQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 544
    Top = 169
  end
  object AQuery2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 592
    Top = 169
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 688
    Top = 136
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 10732280
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15007456
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 16634566
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = 11977374
    end
  end
end
