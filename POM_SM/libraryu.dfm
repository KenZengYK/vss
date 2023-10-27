object frmlibrary: Tfrmlibrary
  Left = 198
  Top = 171
  Caption = 'POM ('#37327#24230#20301#32622#20027#27284')'
  ClientHeight = 483
  ClientWidth = 1240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 113
    Width = 1240
    Height = 321
    Align = alClient
    TabOrder = 4
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGridDBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGridDBBandedColumn1
        end
        item
          Kind = skCount
          Column = cxGridDBBandedColumn15
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaderHeight = 35
      Bands = <
        item
          Caption = #22294#20301#32622#20195#30908
          Visible = False
        end
        item
          Caption = #38918#24207'#'
        end
        item
          Caption = #37327#24230#20301#32622
        end
        item
          Caption = #25104#34915'/'#29289#26009#39006#21029
        end
        item
          Caption = #37327#24230
        end
        item
          Caption = #21934#20301
          Position.BandIndex = 4
          Position.ColIndex = 0
        end
        item
          Caption = #26041#27861
          Position.BandIndex = 4
          Position.ColIndex = 1
        end
        item
          Caption = #23610#23544#23481#24046'   ('#21443#32771#29992')'
        end
        item
          Caption = #22294#29255'(?)'
        end
        item
          Caption = 'POM'#30906#35469
        end
        item
          Caption = #36039#26009#20358#28304
        end
        item
          Caption = #20633#35387
        end>
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cde'
        HeaderAlignmentHorz = taCenter
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        Caption = #20195#30908
        DataBinding.FieldName = 'mcd'
        HeaderAlignmentHorz = taCenter
        Width = 61
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        Caption = #25551#36848'('#20013#25991')'
        DataBinding.FieldName = 'Cmeas'
        HeaderAlignmentHorz = taCenter
        Width = 290
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        Caption = #25551#36848'('#33521#25991')'
        DataBinding.FieldName = 'Emeas'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxEmeasPropertiesButtonClick
        HeaderAlignmentHorz = taCenter
        Width = 320
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Uom'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Inch'
          'cm')
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        Caption = #20013#25991
        DataBinding.FieldName = 'Methd'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          #30452#32218#24230
          #27839#37002#24230
          #25289#24230
          #24359#32218#24230)
        HeaderAlignmentHorz = taCenter
        Width = 57
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn7: TcxGridDBBandedColumn
        Caption = #33521#25991
        DataBinding.FieldName = 'Emethd'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Strgt'
          'Edge'
          'Strch'
          'Curve')
        HeaderAlignmentHorz = taCenter
        Width = 57
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn8: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tolerence'
        HeaderAlignmentHorz = taCenter
        Width = 58
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn9: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ptyp'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'B'
          'K'
          'U'
          'M'
          'B,K'
          'B,U'
          'B,M'
          'K,U'
          'K,M'
          'U,M'
          'B,K,U'
          'B,K,M'
          'B,U,M'
          'K,U,M'
          'B,K,U,M')
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn10: TcxGridDBBandedColumn
        DataBinding.FieldName = 'app_s'
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn11: TcxGridDBBandedColumn
        Caption = #30906#35469#32773
        DataBinding.FieldName = 'app_usr'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 9
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn12: TcxGridDBBandedColumn
        Caption = #30906#35469#26085#26399
        DataBinding.FieldName = 'app_dt'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 9
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn13: TcxGridDBBandedColumn
        DataBinding.FieldName = 'marks'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 280
        Position.BandIndex = 11
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn14: TcxGridDBBandedColumn
        DataBinding.FieldName = 'img1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 25
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn15: TcxGridDBBandedColumn
        DataBinding.FieldName = 'seq'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn16: TcxGridDBBandedColumn
        DataBinding.FieldName = 'src'
        HeaderAlignmentHorz = taCenter
        Width = 42
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn17: TcxGridDBBandedColumn
        DataBinding.FieldName = 'emeas_n'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 25
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn18: TcxGridDBBandedColumn
        Caption = #30906#35469
        DataBinding.FieldName = 'img_app_s'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBBandedTableView1
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 40
    Top = 144
    Width = 841
    Height = 161
    Color = 11927551
    DataSource = DataSource1
    Flat = False
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Visible = False
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Cde'
        Footers = <>
        Title.Caption = #20195#34399
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'Cmeas'
        Footers = <>
        Title.Caption = #37327#24230#20301#32622'|'#20013
        Width = 185
      end
      item
        EditButtons = <>
        FieldName = 'Emeas'
        Footers = <>
        Title.Caption = #37327#24230#20301#32622'|'#33521
        Width = 247
      end
      item
        EditButtons = <>
        FieldName = 'Uom'
        Footers = <>
        Title.Caption = #37327#24230'|'#21934#20301
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'Methd'
        Footers = <>
        Title.Caption = #37327#24230'|'#26041#27861'|'#20013#25991
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'Emethd'
        Footers = <>
        Title.Caption = #37327#24230'|'#26041#27861'|'#33521#25991
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Tolerence'
        Footers = <>
        Title.Caption = #23610#23544#23481#24046
        Width = 63
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 113
    Width = 1240
    Height = 321
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxCde
        end
        item
          Kind = skCount
          Column = cxseq
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.BandHeaderHeight = 35
      Bands = <
        item
          Caption = #22294#20301#32622#20195#30908
          Visible = False
        end
        item
          Caption = #38918#24207'#'#13#10'SEQ#'
        end
        item
          Caption = #37327#24230#20301#32622#13#10'Point of measurement'
        end
        item
          Caption = #25104#34915'/'#29289#26009#39006#21029#13#10'Gmt/Mat'#39'l'#13#10'Category'
        end
        item
          Caption = #37327#24230#13#10'Measure'
        end
        item
          Caption = #21934#20301#13#10'Unit'
          Position.BandIndex = 4
          Position.ColIndex = 0
        end
        item
          Caption = #26041#27861#13#10'Method'
          Position.BandIndex = 4
          Position.ColIndex = 1
        end
        item
          Caption = #23610#23544#23481#24046'   ('#21443#32771#29992')'#13#10'Tolerance (for ref.)'
        end
        item
          Caption = #22294#29255'(?)'#13#10'Picture'
        end
        item
          Caption = 'POM'#30906#35469#13#10'POM Confirm'
        end
        item
          Caption = #36039#26009#20358#28304#13#10'Data Source'
        end
        item
          Caption = #24314#31435#26085#26399#13#10'Create Date'
        end
        item
          Caption = #20633#35387#13#10'Remarks'
        end>
      object cxCde: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cde'
        HeaderAlignmentHorz = taCenter
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxmcd: TcxGridDBBandedColumn
        Caption = #20195#30908#13#10'Code'
        DataBinding.FieldName = 'mcd'
        HeaderAlignmentHorz = taCenter
        Width = 61
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxCmeas: TcxGridDBBandedColumn
        Caption = #25551#36848'('#20013#25991')'#13#10'Description (CN)'
        DataBinding.FieldName = 'Cmeas'
        HeaderAlignmentHorz = taCenter
        Width = 290
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxEmeas: TcxGridDBBandedColumn
        Caption = #25551#36848'('#33521#25991')'#13#10'Description (EN)'
        DataBinding.FieldName = 'Emeas'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxEmeasPropertiesButtonClick
        HeaderAlignmentHorz = taCenter
        Width = 320
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxUom: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Uom'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Inch'
          'cm')
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxMethd: TcxGridDBBandedColumn
        Caption = #20013#25991#13#10'(CN)'
        DataBinding.FieldName = 'Methd'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          #30452#32218#24230
          #27839#37002#24230
          #25289#24230
          #24359#32218#24230)
        HeaderAlignmentHorz = taCenter
        Width = 57
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxEmethd: TcxGridDBBandedColumn
        Caption = #33521#25991#13#10'(EN)'
        DataBinding.FieldName = 'Emethd'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Strgt'
          'Edge'
          'Strch'
          'Curve')
        HeaderAlignmentHorz = taCenter
        Width = 57
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxTolerence: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tolerence'
        HeaderAlignmentHorz = taCenter
        Width = 58
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxPtyp: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ptyp'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'B'
          'K'
          'U'
          'M'
          'B,K'
          'B,U'
          'B,M'
          'K,U'
          'K,M'
          'U,M'
          'B,K,U'
          'B,K,M'
          'B,U,M'
          'K,U,M'
          'B,K,U,M')
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxApp: TcxGridDBBandedColumn
        DataBinding.FieldName = 'app_s'
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxApp_usr: TcxGridDBBandedColumn
        Caption = #30906#35469#32773#13#10'Cfmd by'
        DataBinding.FieldName = 'app_usr'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 9
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxApp_dt: TcxGridDBBandedColumn
        Caption = #30906#35469#26085#26399
        DataBinding.FieldName = 'app_dt'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 9
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxMarks: TcxGridDBBandedColumn
        DataBinding.FieldName = 'marks'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 280
        Position.BandIndex = 12
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxImg1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'img1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 25
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxseq: TcxGridDBBandedColumn
        DataBinding.FieldName = 'seq'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxSrc: TcxGridDBBandedColumn
        DataBinding.FieldName = 'src'
        HeaderAlignmentHorz = taCenter
        Width = 42
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxEmeas_n: TcxGridDBBandedColumn
        DataBinding.FieldName = 'emeas_n'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 25
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxImg_app: TcxGridDBBandedColumn
        Caption = #30906#35469#13#10'Cfm.'
        DataBinding.FieldName = 'img_app_s'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxNewdt: TcxGridDBBandedColumn
        DataBinding.FieldName = 'newdt'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 11
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1240
    Height = 113
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 80
      Top = -5
      Width = 65
      Height = 13
      Caption = #22294#20301#32622#20195#30908
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 86
      Height = 13
      Caption = #37327#24230#20301#32622'('#20013#25991')'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 440
      Top = 43
      Width = 86
      Height = 13
      Caption = #37327#24230#20301#32622'('#33521#25991')'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 468
      Top = 19
      Width = 52
      Height = 13
      Caption = #37327#24230#21934#20301
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 240
      Top = 67
      Width = 86
      Height = 13
      Caption = #37327#24230#26041#27861'('#20013#25991')'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 652
      Top = 67
      Width = 102
      Height = 13
      Caption = #23610#23544#23481#24046' ('#21443#32771#29992')'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 440
      Top = 67
      Width = 86
      Height = 13
      Caption = #37327#24230#26041#27861'('#33521#25991')'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 232
      Top = 19
      Width = 86
      Height = 13
      Caption = #37327#24230#20301#32622'('#20195#30908')'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 67
      Width = 84
      Height = 13
      Caption = #25104#34915'/'#29289#26009#39006#21029' '
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 200
      Top = 91
      Width = 26
      Height = 13
      Caption = #20633#35387
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton6: TSpeedButton
      Left = 1264
      Top = 5
      Width = 33
      Height = 103
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      Visible = False
      OnClick = SpeedButton6Click
    end
    object lblr8: TLabel
      Left = 1000
      Top = 8
      Width = 19
      Height = 13
      Caption = 'lblr8'
      Visible = False
    end
    object Label11: TLabel
      Left = 64
      Top = 19
      Width = 32
      Height = 13
      Caption = #38918#24207'#'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 48
      Top = 91
      Width = 52
      Height = 13
      Caption = #36039#26009#20358#28304
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton7: TSpeedButton
      Left = 840
      Top = 40
      Width = 23
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton7Click
    end
    object lblr7: TLabel
      Left = 624
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 152
      Top = -8
      Width = 57
      Height = 21
      DataField = 'Cde'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 40
      Width = 297
      Height = 21
      DataField = 'Cmeas'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 528
      Top = 40
      Width = 313
      Height = 21
      DataField = 'Emeas'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 760
      Top = 64
      Width = 81
      Height = 21
      DataField = 'Tolerence'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBComboBox1: TDBComboBox
      Left = 328
      Top = 64
      Width = 73
      Height = 21
      DataField = 'Methd'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      Items.Strings = (
        #30452#32218#24230
        #27839#37002#24230
        #25163#25289#24230
        #24359#32218#24230
        #27231#25289#24230
        #31204#25289#24230
        'n.a.')
      ParentFont = False
      TabOrder = 7
      OnKeyPress = DBComboBox1KeyPress
    end
    object DBComboBox2: TDBComboBox
      Left = 528
      Top = 64
      Width = 73
      Height = 21
      DataField = 'Emethd'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      Items.Strings = (
        'Strgt'
        'Edge'
        'H.Strch'
        'Curve'
        'M.Strch'
        'S.Strch'
        'n.a.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      OnKeyPress = DBComboBox2KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 328
      Top = 16
      Width = 73
      Height = 21
      DataField = 'mcd'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit4: TDBComboBox
      Left = 528
      Top = 16
      Width = 73
      Height = 21
      DataField = 'Uom'
      DataSource = DataSource1
      Items.Strings = (
        'Inch'
        'cm')
      TabOrder = 3
    end
    object DBComboBox3: TDBComboBox
      Left = 104
      Top = 64
      Width = 89
      Height = 21
      DataField = 'ptyp'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      Items.Strings = (
        'B'
        'K'
        'U'
        'M'
        'B,K'
        'B,U'
        'B,M'
        'K,U'
        'K,M'
        'U,M'
        'B,K,U'
        'B,K,M'
        'B,U,M'
        'K,U,M'
        'B,K,U,M')
      ParentFont = False
      TabOrder = 6
      OnKeyPress = DBComboBox1KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 232
      Top = 88
      Width = 369
      Height = 21
      DataField = 'marks'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnKeyPress = DBEdit2KeyPress
    end
    object DBCheckBox1: TDBCheckBox
      Left = 684
      Top = 17
      Width = 77
      Height = 17
      Caption = 'POM'#30906#35469
      DataField = 'app'
      DataSource = DataSource1
      TabOrder = 12
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit8: TDBEdit
      Left = 728
      Top = -1
      Width = 225
      Height = 21
      DataField = 'img'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
      Visible = False
      OnKeyPress = DBEdit2KeyPress
    end
    object cxImage1: TcxImage
      Left = 872
      Top = 4
      Hint = #38617#25802#26597#30475#22294#29255
      ParentShowHint = False
      Properties.PopupMenuLayout.MenuItems = []
      Properties.Stretch = True
      ShowHint = True
      TabOrder = 14
      Transparent = True
      OnDblClick = cxImage1DblClick
      Height = 105
      Width = 137
    end
    object DBEdit9: TDBEdit
      Left = 104
      Top = 16
      Width = 65
      Height = 21
      DataField = 'seq'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DBEdit1KeyPress
    end
    object DBCheckBox2: TDBCheckBox
      Left = 1012
      Top = 81
      Width = 69
      Height = 17
      Caption = #30906#35469#22294#29255
      DataField = 'img_app'
      DataSource = DataSource1
      TabOrder = 15
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit10: TDBComboBox
      Left = 104
      Top = 88
      Width = 73
      Height = 21
      DataField = 'src'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      Items.Strings = (
        'B'
        'B,K'
        'B,K,M'
        'B,K,U'
        'B,K,U,M'
        'B,M'
        'B,U'
        'B,U,M'
        'K'
        'K,M'
        'K,U'
        'K,U,M'
        'M'
        'U'
        'U,M')
      ParentFont = False
      Sorted = True
      TabOrder = 10
      OnEnter = DBEdit10Enter
    end
    object chk_parts: TDBCheckBox
      Left = 652
      Top = 90
      Width = 68
      Height = 17
      Caption = #32299#21512#32068#20214
      DataField = 'parts'
      DataSource = DataSource1
      TabOrder = 16
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chk_operation: TDBCheckBox
      Left = 729
      Top = 90
      Width = 59
      Height = 17
      Caption = #21322#25104#21697
      DataField = 'operation'
      DataSource = DataSource1
      TabOrder = 17
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chk_garment: TDBCheckBox
      Left = 796
      Top = 90
      Width = 45
      Height = 17
      Caption = #25104#21697
      DataField = 'garment'
      DataSource = DataSource1
      TabOrder = 18
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 434
    Width = 1240
    Height = 49
    Align = alBottom
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 450
      Top = 11
      Width = 30
      Height = 30
      Hint = #36864#20986
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 264
      Top = 11
      Width = 30
      Height = 30
      Hint = #25171#21360
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 202
      Top = 11
      Width = 30
      Height = 30
      Hint = #26032#22686
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 233
      Top = 11
      Width = 30
      Height = 30
      Hint = #21034#38500
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 295
      Top = 11
      Width = 30
      Height = 30
      Hint = #23566#20986'Excel'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object btn1: TSpeedButton
      Left = 326
      Top = 11
      Width = 30
      Height = 30
      Hint = #29992#26044#21738#20123#23610#23544#34920#65311
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888880088888888888888008888888888888008888444888088800888844
        4888008008888888888800000888884478880000000088447888000000088884
        4888000000888888447800000887448874470000888447888444000888844788
        8444008888884488744708888888844444788888888888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = btn1Click
    end
    object btn2: TSpeedButton
      Left = 357
      Top = 11
      Width = 30
      Height = 30
      Hint = #21934#26781#35352#37636#36681#21040#27511#21490#20013
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
        33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
        D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
        BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
        EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
        BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
        D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btn2Click
    end
    object btn3: TSpeedButton
      Left = 419
      Top = 11
      Width = 30
      Height = 30
      Hint = #26597#30475#27511#21490#35352#37636
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
        FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
        FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
        0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
        F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
        FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
        0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
        003333337FFFFFFF773333330000000003333333777777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btn3Click
    end
    object btn4: TSpeedButton
      Left = 388
      Top = 11
      Width = 30
      Height = 30
      Hint = #22810#26781#35352#37636#36681#21040#27511#21490#20013
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btn4Click
    end
    object DBNavigator1: TDBNavigator
      Left = 21
      Top = 11
      Width = 180
      Height = 30
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    OnDataChange = DataSource1DataChange
    Left = 788
    Top = 65528
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DataSource1
    UserName = 'BDEPipeline1'
    Left = 816
    Top = 65528
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 844
    Top = 65528
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 15875
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22522'   '#26412'   '#36039'   '#26009' '
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5556
        mmLeft = 79640
        mmTop = 2117
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20195#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 4763
        mmTop = 11642
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37327#24230#20301#32622
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 53711
        mmTop = 11642
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37327#24230#21934#20301
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 103452
        mmTop = 11642
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37327#24230#26041#27861
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 134144
        mmTop = 11642
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23610#23544#23481#24046
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 11642
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 168540
        mmTop = 4233
        mmWidth = 15346
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        UserName = 'Region1'
        mmHeight = 10054
        mmLeft = 4498
        mmTop = 0
        mmWidth = 186002
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 10054
          mmLeft = 126207
          mmTop = 0
          mmWidth = 34396
          BandType = 4
        end
        object ppShape1: TppShape
          UserName = 'Shape1'
          mmHeight = 10054
          mmLeft = 16669
          mmTop = 0
          mmWidth = 81227
          BandType = 4
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Cde'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3440
          mmLeft = 7144
          mmTop = 3175
          mmWidth = 3440
          BandType = 4
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Cmeas'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3440
          mmLeft = 22225
          mmTop = 1323
          mmWidth = 6879
          BandType = 4
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Emeas'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3440
          mmLeft = 22225
          mmTop = 5292
          mmWidth = 12171
          BandType = 4
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Uom'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3440
          mmLeft = 107686
          mmTop = 3175
          mmWidth = 3969
          BandType = 4
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Methd'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3440
          mmLeft = 135732
          mmTop = 1323
          mmWidth = 11642
          BandType = 4
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Emethd'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3440
          mmLeft = 135732
          mmTop = 5292
          mmWidth = 11642
          BandType = 4
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Tolerence'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3440
          mmLeft = 167217
          mmTop = 3175
          mmWidth = 14288
          BandType = 4
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 93927
        mmTop = 794
        mmWidth = 9260
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 724
    Top = 65528
  end
  object Table1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_bastbl where (statu is null or statu='#39#39')'
    FieldDefs = <
      item
        Name = 'Cde'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'Cmeas'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Emeas'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Uom'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Methd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tolerence'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Emethd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'mcd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'newdt'
        DataType = ftDateTime
      end
      item
        Name = 'ptyp'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'app'
        DataType = ftBoolean
      end
      item
        Name = 'app_usr'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'app_dt'
        DataType = ftDateTime
      end
      item
        Name = 'img'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'marks'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'img1'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'seq'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'src'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'pod_cd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'emeas_n'
        DataType = ftInteger
      end
      item
        Name = 'img_app'
        DataType = ftBoolean
      end
      item
        Name = 'img_appu'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'app_s'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'img_app_s'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'parts'
        DataType = ftBoolean
      end
      item
        Name = 'operation'
        DataType = ftBoolean
      end
      item
        Name = 'garment'
        DataType = ftBoolean
      end
      item
        Name = 'statu'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'statu_dt'
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Name = 'Table1Index1'
        Fields = 'seq;mcd;cmeas;cde'
      end>
    IndexName = 'Table1Index1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Table1AfterPost
    BeforeDelete = Table1BeforeDelete
    OnNewRecord = Table1NewRecord
    Left = 759
    Top = 65528
    object Table1Id: TIntegerField
      FieldName = 'Id'
    end
    object Table1Cde: TStringField
      FieldName = 'Cde'
      Size = 5
    end
    object Table1Cmeas: TStringField
      FieldName = 'Cmeas'
      Size = 50
    end
    object Table1Emeas: TStringField
      FieldName = 'Emeas'
      Size = 100
    end
    object Table1Uom: TStringField
      FieldName = 'Uom'
      Size = 4
    end
    object Table1Methd: TStringField
      FieldName = 'Methd'
      OnChange = Table1MethdChange
      Size = 10
    end
    object Table1Tolerence: TStringField
      DisplayWidth = 30
      FieldName = 'Tolerence'
      Size = 30
    end
    object Table1Emethd: TStringField
      FieldName = 'Emethd'
      Size = 10
    end
    object Table1mcd: TStringField
      FieldName = 'mcd'
      Size = 10
    end
    object Table1newdt: TDateTimeField
      FieldName = 'newdt'
      DisplayFormat = 'yyyy-MM-dd'
    end
    object Table1ptyp: TStringField
      FieldName = 'ptyp'
    end
    object Table1app: TBooleanField
      FieldName = 'app'
      OnChange = Table1appChange
    end
    object Table1app_usr: TStringField
      FieldName = 'app_usr'
    end
    object Table1app_dt: TDateTimeField
      FieldName = 'app_dt'
      DisplayFormat = 'yy/MM/dd'
    end
    object Table1img: TStringField
      FieldName = 'img'
      OnChange = Table1imgChange
      Size = 200
    end
    object Table1marks: TStringField
      FieldName = 'marks'
      Size = 250
    end
    object Table1img1: TStringField
      FieldName = 'img1'
      Size = 5
    end
    object Table1seq: TStringField
      FieldName = 'seq'
      Size = 10
    end
    object Table1src: TStringField
      FieldName = 'src'
      Size = 10
    end
    object Table1pod_cd: TStringField
      FieldName = 'pod_cd'
    end
    object Table1emeas_n: TIntegerField
      FieldName = 'emeas_n'
    end
    object Table1img_app: TBooleanField
      FieldName = 'img_app'
      OnChange = Table1img_appChange
    end
    object Table1img_appu: TStringField
      FieldName = 'img_appu'
    end
    object Table1app_s: TStringField
      FieldName = 'app_s'
      Size = 2
    end
    object Table1img_app_s: TStringField
      FieldName = 'img_app_s'
      Size = 2
    end
    object Table1parts: TBooleanField
      FieldName = 'parts'
    end
    object Table1operation: TBooleanField
      FieldName = 'operation'
    end
    object Table1garment: TBooleanField
      FieldName = 'garment'
    end
    object Table1statu: TStringField
      FieldName = 'statu'
      Size = 30
    end
    object Table1statu_dt: TDateTimeField
      FieldName = 'statu_dt'
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel file (*.xls)|*.xls|Any file (*.*)|*.*'
    Left = 876
    Top = 65528
  end
  object query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 788
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = query2
    OnDataChange = DataSource1DataChange
    Left = 820
    Top = 24
  end
  object PopupMenu1: TPopupMenu
    Left = 1128
    Top = 32
    object N1: TMenuItem
      Caption = #26356#26032#33521#25991#25551#36848#25976#37327
      ShortCut = 49221
      Visible = False
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #21462#28040#22294#29255
      ShortCut = 49228
      Visible = False
      OnClick = N2Click
    end
  end
end
