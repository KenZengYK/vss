object frmCarte_Groupaction: TfrmCarte_Groupaction
  Left = 0
  Top = 0
  Caption = #34892#21205#35468#20998#38913
  ClientHeight = 481
  ClientWidth = 1155
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 377
    Width = 1155
    Height = 63
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1act_date: TcxGridDBColumn
        Caption = #26085#26399#26178#38291
        DataBinding.FieldName = 'act_date3g'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 84
      end
      object cxGrid1DBTableView1act_cnt: TcxGridDBColumn
        Caption = #27425#25976#13#10
        DataBinding.FieldName = 'act_cnt3g'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 52
      end
      object cxGrid1DBTableView1act_issue: TcxGridDBColumn
        Caption = #30332#20449#32773
        DataBinding.FieldName = 'act_issue3g'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 64
      end
      object cxGrid1DBTableView1act_pra: TcxGridDBColumn
        Caption = #20844#38283#24615#35342#35542
        DataBinding.FieldName = 'act_pra'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 30
      end
      object cxGrid1DBTableView1act_marks: TcxGridDBColumn
        Caption = #36319#36914#20869#23481
        DataBinding.FieldName = 'act_marks'
        HeaderAlignmentHorz = taCenter
        Width = 800
      end
      object cxGrid1DBTableView1attachment: TcxGridDBColumn
        Caption = '         '#38468#20214#36861#36394#37832
        DataBinding.FieldName = 'attachment3g'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 209
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'View details'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ViewStyle = vsButtonsAutoWidth
        Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
        HeaderAlignmentHorz = taCenter
        Options.ShowEditButtons = isebAlways
        Width = 75
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1155
    Height = 377
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 62
      Width = 79
      Height = 13
      Caption = #38598#39636#34892#21205#35468#34399': '
      Visible = False
    end
    object DBText1: TDBText
      Left = 88
      Top = 62
      Width = 73
      Height = 17
      DataField = 'grp_act3g'
      DataSource = DataSource2
      Visible = False
    end
    object Label2: TLabel
      Left = 176
      Top = 62
      Width = 43
      Height = 13
      Caption = #38917#30446#39006': '
      Visible = False
    end
    object SpeedButton1: TSpeedButton
      Left = 326
      Top = 61
      Width = 23
      Height = 22
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
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 392
      Top = 62
      Width = 55
      Height = 13
      Caption = #38917#30446#20027#38988': '
      Visible = False
    end
    object Label4: TLabel
      Left = 175
      Top = 89
      Width = 55
      Height = 13
      Caption = #21855#21205#26085#26399': '
      Visible = False
    end
    object Label5: TLabel
      Left = 391
      Top = 89
      Width = 79
      Height = 13
      Caption = #30446#27161#23436#25104#26085#26399': '
      Visible = False
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 25
      Width = 1153
      Height = 155
      AllowedOperations = [alopUpdateEh]
      DataSource = DataSource2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      RowDetailPanel.Color = clBtnFace
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'grp_act3g'
          Footers = <>
          ReadOnly = True
          Title.Caption = #38598#39636#34892#21205#35468#34399
          Width = 79
        end
        item
          ButtonStyle = cbsEllipsis
          EditButtons = <>
          FieldName = 'act_item3g'
          Footers = <>
          Title.Caption = #38917#30446#39006
          Width = 51
          OnEditButtonClick = DBGridEh2Columns1EditButtonClick
        end
        item
          EditButtons = <>
          FieldName = 'act_subject3g'
          Footers = <>
          Title.Caption = #38917#30446#39006#31777#36848
          Width = 585
        end
        item
          EditButtons = <>
          FieldName = 'mat_qty'
          Footers = <>
          Title.Caption = #29289#26009#13#10#25976#30446
          Width = 50
        end
        item
          DisplayFormat = '#0.00'
          EditButtons = <>
          FieldName = 'aff_p'
          Footers = <>
          Title.Caption = #30456#38364#13#10#36008#37327'%'
          Width = 55
        end
        item
          DisplayFormat = 'mm/dd'
          EditButtons = <>
          FieldName = 'act_start3g'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21855#21205#26085#26399
          Width = 44
        end
        item
          DisplayFormat = 'mm/dd'
          EditButtons = <>
          FieldName = 'act_cmpdt3g'
          Footers = <>
          Title.Caption = #30446#27161#23436#25104#26085#26399#13#10
          Width = 56
        end
        item
          EditButtons = <>
          FieldName = 'act_cmp3g'
          Footers = <>
          Title.Caption = #38917#30446#23436#25104#13#10
          Width = 56
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBEdit1: TDBEdit
      Left = 231
      Top = 62
      Width = 96
      Height = 21
      DataField = 'act_item3g'
      DataSource = DataSource2
      TabOrder = 0
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 453
      Top = 62
      Width = 436
      Height = 21
      DataField = 'act_subject3g'
      DataSource = DataSource2
      TabOrder = 1
      Visible = False
    end
    object DBDateEdit1: TDBDateEdit
      Left = 231
      Top = 89
      Width = 106
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'act_start3g'
      DataSource = DataSource2
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 2
    end
    object DBDateEdit2: TDBDateEdit
      Left = 472
      Top = 89
      Width = 106
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'act_cmpdt3g'
      DataSource = DataSource2
      NumGlyphs = 2
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 648
      Top = 90
      Width = 73
      Height = 17
      Caption = #38917#30446#23436#25104
      DataField = 'act_cmp3g'
      DataSource = DataSource2
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object BitBtn5: TBitBtn
      Left = 555
      Top = 138
      Width = 136
      Height = 25
      Caption = #21069#19968#20491#38598#39636#34892#21205#35468
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 5
      Visible = False
      OnClick = BitBtn5Click
    end
    object BitBtn7: TBitBtn
      Left = 690
      Top = 138
      Width = 136
      Height = 25
      Caption = #24460#19968#20491#38598#39636#34892#21205#35468
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 6
      Visible = False
      OnClick = BitBtn7Click
    end
    object cxGrid2: TcxGrid
      Left = 1
      Top = 84
      Width = 1153
      Height = 212
      Align = alClient
      TabOrder = 9
      ExplicitTop = 55
      ExplicitHeight = 241
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGrid2DBBandedTableView1CustomDrawCell
        DataController.DataSource = DataSource3
        DataController.Filter.OnChanged = cxGrid2DBBandedTableView1DataControllerFilterChanged
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Column = cxGrid2DBBandedTableView1grp_act3g
            VisibleForCustomization = False
          end
          item
            Column = cxGrid2DBBandedTableView1keycode
          end
          item
            Column = cxGrid2DBBandedTableView1phcolor
          end
          item
            Column = cxGrid2DBBandedTableView1projectno
          end
          item
            Column = cxGrid2DBBandedTableView1act_item3g
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
        OptionsCustomize.BandHiding = True
        OptionsCustomize.BandsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Caption = 'Action Log'
            Styles.Header = cxStyle1
          end
          item
            Caption = 'COP_Log Info'
            Styles.Header = cxStyle2
          end
          item
            Caption = 'Category Info'
            Styles.Header = cxStyle1
          end
          item
            Caption = 'Task Completion'
            Styles.Header = cxStyle2
          end
          item
            Caption = 'Creator'
            Styles.Header = cxStyle1
            Visible = False
          end>
        object cxGrid2DBBandedTableView1keycode_chosen: TcxGridDBBandedColumn
          DataBinding.FieldName = 'keycode_chosen'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGrid2DBBandedTableView1grp_act3g: TcxGridDBBandedColumn
          Caption = 'No./'#13#10'Stage'
          DataBinding.FieldName = 'act_item3g_1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle1
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1grpg: TcxGridDBBandedColumn
          Caption = 'Grgp'
          DataBinding.FieldName = 'grpg'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle1
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1keycode: TcxGridDBBandedColumn
          Caption = 'COP'#13#10'Log#'
          DataBinding.FieldName = 'keycode'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle2
          Width = 44
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1phcolor: TcxGridDBBandedColumn
          Caption = 'Clr'#13#10'Cde'
          DataBinding.FieldName = 'phcolor'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle2
          Width = 30
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1projectno: TcxGridDBBandedColumn
          Caption = 'Proj #'
          DataBinding.FieldName = 'projectno'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle2
          Width = 80
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_item3g: TcxGridDBBandedColumn
          Caption = 'Cde'
          DataBinding.FieldName = 'act_item3g'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxGrid2DBBandedTableView1act_item3gPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle1
          Width = 40
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_subject3g_e: TcxGridDBBandedColumn
          Caption = 'Desc. (EN)'
          DataBinding.FieldName = 'act_subject3g_e'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle1
          Width = 280
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_subject3g: TcxGridDBBandedColumn
          Caption = 'Desc. (CN)'
          DataBinding.FieldName = 'act_subject3g'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle1
          Width = 260
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1mat_qty: TcxGridDBBandedColumn
          Caption = 'Items'#13#10'Ttl'
          DataBinding.FieldName = 'mat_qty'
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle1
          Width = 35
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1aff_p: TcxGridDBBandedColumn
          Caption = 'Related'#13#10'Gmts'#13#10'Shpt%'
          DataBinding.FieldName = 'aff_p'
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle1
          Width = 43
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_start3g: TcxGridDBBandedColumn
          Caption = 'Start'#13#10'dd/time'
          DataBinding.FieldName = 'act_start3g'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle2
          Width = 70
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_cmpdt3g: TcxGridDBBandedColumn
          Caption = 'Target'#13#10'Cmpl dd'
          DataBinding.FieldName = 'act_cmpdt3g'
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle2
          Width = 48
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_cmpdt3g_r: TcxGridDBBandedColumn
          Caption = 'Rev.'#13#10'Cmpl dd'
          DataBinding.FieldName = 'act_cmpdt3g_r'
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle2
          Width = 48
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_cmp3g: TcxGridDBBandedColumn
          Caption = 'Task'#13#10'done'
          DataBinding.FieldName = 'act_cmp3g'
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle2
          Width = 35
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_issue3g: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'act_issue3g'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle1
          Width = 70
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_stage: TcxGridDBBandedColumn
          DataBinding.FieldName = 'act_stage'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1wcr: TcxGridDBBandedColumn
          Caption = 'CWO #'
          DataBinding.FieldName = 'wcr'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle2
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1qty1: TcxGridDBBandedColumn
          Caption = 'CWO'#13#10'Qty'#13#10'(Bulk)'
          DataBinding.FieldName = 'qty1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle2
          Width = 42
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_fwdt: TcxGridDBBandedColumn
          Caption = 'FW'#13#10'Start dd'
          DataBinding.FieldName = 'act_fwdt'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle2
          Width = 48
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1act_cmpdt_a: TcxGridDBBandedColumn
          Caption = 'Act.'#13#10'Cmpl dd'
          DataBinding.FieldName = 'act_cmpdt_a'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle2
          Width = 48
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1prod_site: TcxGridDBBandedColumn
          Caption = 'Prdn'#13#10'Site'
          DataBinding.FieldName = 'prod_site'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle2
          Width = 32
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1exdd: TcxGridDBBandedColumn
          Caption = 'Ex-fty'#13#10'dd'
          DataBinding.FieldName = 'exdd'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle2
          Width = 48
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1grp_act_flg: TcxGridDBBandedColumn
          Caption = 'Cmpl'#13#10'?'
          DataBinding.FieldName = 'grp_act_flg'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle1
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBBandedTableView1
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 296
      Width = 1153
      Height = 80
      Align = alBottom
      TabOrder = 10
      object RzBackground1: TRzBackground
        Left = 1
        Top = 1
        Width = 1151
        Height = 78
        Active = True
        Align = alClient
        GradientColorStart = 14216405
        GradientColorStop = 16776176
        GradientDirection = gdVerticalEnd
        ImageStyle = isCenter
        ShowGradient = True
        ShowImage = False
        ShowTexture = False
        ExplicitLeft = 24
        ExplicitTop = 8
        ExplicitWidth = 200
        ExplicitHeight = 100
      end
      object Label8: TLabel
        Left = 16
        Top = 62
        Width = 123
        Height = 13
        Caption = 'Part II - Action follow up  '
        Color = 14216405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 16
        Top = 43
        Width = 3
        Height = 13
        Color = 14216405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object BitBtn4: TBitBtn
        Left = 16
        Top = 11
        Width = 88
        Height = 25
        Caption = #26032#22686#38542#27573
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = BitBtn4Click
      end
      object BitBtn10: TBitBtn
        Left = 110
        Top = 11
        Width = 91
        Height = 25
        Caption = #21034#38500#38542#27573
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BitBtn10Click
      end
      object BitBtn9: TBitBtn
        Left = 424
        Top = 11
        Width = 105
        Height = 25
        Caption = #20445#23384
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BitBtn9Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1153
      Height = 83
      Align = alTop
      TabOrder = 8
      object Label16: TLabel
        Left = 16
        Top = 65
        Width = 100
        Height = 13
        Caption = 'Part I - Action taken '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 5
        Width = 41
        Height = 13
        Caption = 'Header  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object grp1: TGroupBox
        Left = 23
        Top = 24
        Width = 538
        Height = 38
        Caption = 'Basic Information'
        TabOrder = 0
        object Label10: TLabel
          Left = 17
          Top = 18
          Width = 50
          Height = 13
          Caption = 'Prdn Site: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 68
          Top = 18
          Width = 65
          Height = 17
          DataField = 'prod_site'
          DataSource = DataSource3
        end
        object Label11: TLabel
          Left = 367
          Top = 18
          Width = 44
          Height = 13
          Caption = 'Creator: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 412
          Top = 18
          Width = 98
          Height = 17
          DataField = 'act_issue3g'
          DataSource = DataSource3
        end
        object Label12: TLabel
          Left = 169
          Top = 18
          Width = 100
          Height = 13
          Caption = 'Action log Stage Ttl: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 275
          Top = 18
          Width = 46
          Height = 13
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 440
    Width = 1155
    Height = 41
    Align = alBottom
    TabOrder = 2
    object RzBackground2: TRzBackground
      Left = 1
      Top = 1
      Width = 1153
      Height = 39
      Active = True
      Align = alClient
      GradientColorStart = 14216405
      GradientColorStop = 16776176
      GradientDirection = gdVerticalEnd
      ImageStyle = isCenter
      ShowGradient = True
      ShowImage = False
      ShowTexture = False
      ExplicitLeft = 24
      ExplicitTop = 8
      ExplicitWidth = 200
      ExplicitHeight = 100
    end
    object Label6: TLabel
      Left = 568
      Top = 8
      Width = 14
      Height = 13
      Caption = 'CN'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 81
      Height = 25
      Caption = #26032#22686
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
      Width = 81
      Height = 25
      Caption = #21034#38500
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
      Left = 184
      Top = 8
      Width = 81
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
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn6: TBitBtn
      Left = 344
      Top = 8
      Width = 81
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 3
    end
    object BitBtn8: TBitBtn
      Left = 264
      Top = 8
      Width = 81
      Height = 25
      Caption = #30332#37109#20214
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
        FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
        9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn8Click
    end
  end
  object ADODataSet1: TADODataSet
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    AfterOpen = ADODataSet1AfterOpen
    OnNewRecord = ADODataSet1NewRecord
    CommandText = 'select * from tbl_carte_sopc2_grp'
    CommandTimeout = 300
    IndexFieldNames = 'act_date3g'
    Parameters = <>
    Left = 232
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 296
    Top = 168
  end
  object ADODataSet2: TADODataSet
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    AfterPost = ADODataSet2AfterPost
    OnNewRecord = ADODataSet2NewRecord
    CommandText = 'select * from tbl_carte_sopc3_grp'
    CommandTimeout = 300
    Parameters = <>
    Left = 232
    Top = 216
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 512
    Top = 184
  end
  object ADOQuery1: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 360
    Top = 216
  end
  object ADODataSet3: TADODataSet
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    AfterPost = ADODataSet2AfterPost
    OnNewRecord = ADODataSet2NewRecord
    CommandTimeout = 300
    Parameters = <>
    Left = 440
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 168
    object DeleteGroupIssueLog1: TMenuItem
      Caption = 'Delete Group Issue Log'
      ShortCut = 49220
      Visible = False
      OnClick = DeleteGroupIssueLog1Click
    end
  end
  object ADOQuery2: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 528
    Top = 224
  end
  object siLang1: TsiLang
    Version = '6.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    LangDelim = 1
    LangNames.Strings = (
      'Traditional Chinese'
      'English'
      'Bangla')
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
      'MasterFields')
    Left = 504
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00430061007200740065005F0047007200
      6F007500700061006300740069006F006E0001004C88D5528C8A065201980100
      41006300740069006F006E0020006C006F006700200077006F0072006B007300
      6800650065007400010001000D000A0063007800470072006900640031004400
      42005400610062006C006500560069006500770031006100630074005F006400
      6100740065000100E5651F674266939501004400610074006500200026002000
      740069006D006500010001000D000A0063007800470072006900640031004400
      42005400610062006C006500560069006500770031006100630074005F006300
      6E0074000100216B786519001A0001005300650071002E00010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      6500770031006100630074005F006900730073007500650001007C76E14F0580
      0100530065006E00640065007200010001000D000A0063007800470072006900
      64003100440042005400610062006C0065005600690065007700310061006300
      74005F0070007200610001006C518B9527600E8AD68A0100010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      6500770031006100630074005F006D00610072006B0073000100DF8D32908551
      B95B010046006F006C006C006F007700200075007000200063006F006E007400
      65006E0074002000280069006E0020007300650071002E002900010001000D00
      0A006300780047007200690064003100440042005400610062006C0065005600
      69006500770031006100740074006100630068006D0065006E00740001002000
      200020002000200020002000200020004496F64EFD8F2A8EC893010020002000
      20002000200020002000200020004100740074006100630068006D0065006E00
      740020006F006600200066006F006C006C006F0077002D007500700001000100
      0D000A004C006100620065006C0031000100C696D49A4C88D5528C8A5F863A00
      20000100470072006F0075007000200061006300740069006F006E0020006C00
      6F0067002300010001000D000A004C006100620065006C00320001000598EE76
      5E983A002000010041006300740069006F006E0020006C006F00670020006300
      64006500010001000D000A004C006100620065006C00330001000598EE763B4E
      4C983A0020000100010001000D000A004C006100620065006C00340001005F55
      D552E5651F673A0020000100010001000D000A004C006100620065006C003500
      0100EE76196A8C5B1062E5651F673A0020000100010001000D000A0044004200
      43006800650063006B0042006F007800310001000598EE768C5B106201004100
      6300740069006F006E0020006C006F006700200063006F006D0070006C006500
      740065006400010001000D000A00420069007400420074006E00350001004D52
      004E0B50C696D49A4C88D5528C8A0100010001000D000A004200690074004200
      74006E00370001008C5F004E0B50C696D49A4C88D5528C8A0100010001000D00
      0A00420069007400420074006E0031000100B0659E5801004100640064000100
      01000D000A00420069007400420074006E00320001002A526496010044006500
      6C00650074006500010001000D000A00420069007400420074006E0033000100
      DD4F585B01005300610076006500010001000D000A0042006900740042007400
      6E00360001000090FA5101004500780069007400010001000D000A0042006900
      7400420074006E00380001007C76F590F64E0100530065006E00640020006D00
      610069006C00010001000D000A00440065006C00650074006500470072006F00
      75007000490073007300750065004C006F00670031000100440065006C006500
      740065002000470072006F007500700020004900730073007500650020004C00
      6F0067000100010001000D000A004C006100620065006C003600010043004E00
      0100010001000D000A004C006100620065006C00310036000100500061007200
      74002000490020002D00200041006300740069006F006E002000740061006B00
      65006E0020000100010001000D000A0063007800470072006900640032004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31006100630074005F006900740065006D003300670001004300640065000100
      010001000D000A00630078004700720069006400320044004200420061006E00
      6400650064005400610062006C00650056006900650077003100610063007400
      5F007300750062006A0065006300740033006700010044006500730063002E00
      2000280043004E0029000100010001000D000A00630078004700720069006400
      320044004200420061006E006400650064005400610062006C00650056006900
      6500770031006100630074005F00690073007300750065003300670001002D00
      0100010001000D000A0063007800470072006900640032004400420042006100
      6E006400650064005400610062006C0065005600690065007700310061006300
      74005F0073007400610072007400330067000100530074006100720074001900
      1A00640064002F00740069006D0065000100010001000D000A00630078004700
      720069006400320044004200420061006E006400650064005400610062006C00
      6500560069006500770031006100630074005F0063006D007000640074003300
      6700010054006100720067006500740019001A0043006D0070006C0020006400
      64000100010001000D000A006300780047007200690064003200440042004200
      61006E006400650064005400610062006C006500560069006500770031006700
      720070005F0061006300740033006700010023002F0053007400610067006500
      0100010001000D000A0063007800470072006900640032004400420042006100
      6E006400650064005400610062006C006500560069006500770031006D006100
      74005F0071007400790001004900740065006D00730019001A00540074006C00
      0100010001000D000A0063007800470072006900640032004400420042006100
      6E006400650064005400610062006C0065005600690065007700310061006600
      66005F0070000100520065006C00610074006500640019001A0047006D007400
      730019001A00530068007000740025000100010001000D000A00630078004700
      720069006400320044004200420061006E006400650064005400610062006C00
      6500560069006500770031006700720070006700010047007200670070000100
      010001000D000A00630078004700720069006400320044004200420061006E00
      6400650064005400610062006C006500560069006500770031006B0065007900
      63006F0064006500010043004F00500019001A004C006F006700230001000100
      01000D000A00630078004700720069006400320044004200420061006E006400
      650064005400610062006C006500560069006500770031007000680063006F00
      6C006F007200010043006C00720019001A004300640065000100010001000D00
      0A00630078004700720069006400320044004200420061006E00640065006400
      5400610062006C00650056006900650077003100700072006F006A0065006300
      74006E006F000100500072006F006A00200023000100010001000D000A006300
      78004700720069006400320044004200420061006E0064006500640054006100
      62006C006500560069006500770031006100630074005F007300750062006A00
      650063007400330067005F006500010044006500730063002E00200028004500
      4E0029000100010001000D000A00630078004700720069006400320044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      6100630074005F0063006D00700064007400330067005F007200010052006500
      76002E0019001A0043006D0070006C002000640064000100010001000D000A00
      630078004700720069006400320044004200420061006E006400650064005400
      610062006C006500560069006500770031006100630074005F0063006D007000
      3300670001005400610073006B0019001A0064006F006E006500010001000100
      0D000A006300780047007200690064003100440042005400610062006C006500
      5600690065007700310043006F006C0075006D006E0031000100560069006500
      77002000640065007400610069006C0073000100010001000D000A0042006900
      7400420074006E0034000100B0659E588E96B56B010041006400640020005300
      7400610067006500010001000D000A00420069007400420074006E0031003000
      01002A5264968E96B56B0100440065006C006500740065002000530074006100
      67006500010001000D000A00420069007400420074006E0039000100DD4F585B
      01005300610076006500010001000D000A004C006100620065006C0038000100
      500061007200740020004900490020002D00200041006300740069006F006E00
      200066006F006C006C006F007700200075007000200020000100010001000D00
      0A00630078004700720069006400320044004200420061006E00640065006400
      5400610062006C006500560069006500770031006100630074005F0073007400
      61006700650001006100630074005F0073007400610067006500010001000100
      0D000A00630078004700720069006400320044004200420061006E0064006500
      64005400610062006C0065005600690065007700310077006300720001004300
      57004F00200023000100010001000D000A006300780047007200690064003200
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310071007400790031000100430057004F0019001A005100740079001900
      1A002800420075006C006B0029000100010001000D000A006300780047007200
      69006400320044004200420061006E006400650064005400610062006C006500
      560069006500770031006100630074005F006600770064007400010046005700
      19001A00530074006100720074002000640064000100010001000D000A006300
      78004700720069006400320044004200420061006E0064006500640054006100
      62006C006500560069006500770031006100630074005F0063006D0070006400
      74005F00610001004100630074002E0019001A0043006D0070006C0020006400
      64000100010001000D000A004C006100620065006C0039000100480065006100
      640065007200200020000100010001000D000A00630078004700720069006400
      320044004200420061006E006400650064005400610062006C00650056006900
      650077003100700072006F0064005F0073006900740065000100500072006400
      6E0019001A0053006900740065000100010001000D000A006300780047007200
      69006400320044004200420061006E006400650064005400610062006C006500
      5600690065007700310065007800640064000100450078002D00660074007900
      19001A00640064000100010001000D000A006700720070003100010042006100
      730069006300200049006E0066006F0072006D006100740069006F006E000100
      010001000D000A004C006100620065006C003100300001005000720064006E00
      200053006900740065003A0020000100010001000D000A004C00610062006500
      6C00310031000100430072006500610074006F0072003A002000010001000100
      0D000A004C006100620065006C0031003200010041006300740069006F006E00
      20006C006F0067002000530074006100670065002000540074006C003A002000
      0100010001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      5400660072006D00430061007200740065005F00470072006F00750070006100
      6300740069006F006E0001005400610068006F006D0061000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650031000100
      5400610068006F006D0061000100010001000D000A0063007800530074007900
      6C006500320001005400610068006F006D0061000100010001000D000A006300
      78005300740079006C006500330001005400610068006F006D00610001000100
      01000D000A004C006100620065006C00370001005400610068006F006D006100
      0100010001000D000A004C006100620065006C00310036000100540061006800
      6F006D0061000100010001000D000A004C006100620065006C00390001005400
      610068006F006D0061000100010001000D000A004C006100620065006C003800
      01005400610068006F006D0061000100010001000D000A004C00610062006500
      6C003100300001005400610068006F006D0061000100010001000D000A004C00
      6100620065006C003100310001005400610068006F006D006100010001000100
      0D000A004C006100620065006C003100320001005400610068006F006D006100
      0100010001000D000A004C006100620065006C00310033000100540061006800
      6F006D0061000100010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      44006C0067007300430061007000740069006F006E0073005F0055006E006900
      63006F00640065000D000A005700610072006E0069006E006700010057006100
      72006E0069006E0067000100010001000D000A004500720072006F0072000100
      4500720072006F0072000100010001000D000A0049006E0066006F0072006D00
      6100740069006F006E00010049006E0066006F0072006D006100740069006F00
      6E000100010001000D000A0043006F006E006600690072006D00010043006F00
      6E006600690072006D000100010001000D000A00590065007300010026005900
      650073000100010001000D000A004E006F00010026004E006F00010001000100
      0D000A004F004B0001004F004B000100010001000D000A00430061006E006300
      65006C000100430061006E00630065006C000100010001000D000A0041006200
      6F007200740001002600410062006F00720074000100010001000D000A005200
      650074007200790001002600520065007400720079000100010001000D000A00
      490067006E006F007200650001002600490067006E006F007200650001000100
      01000D000A0041006C006C000100260041006C006C000100010001000D000A00
      4E006F00200054006F00200041006C006C0001004E0026006F00200074006F00
      200041006C006C000100010001000D000A00590065007300200054006F002000
      41006C006C000100590065007300200074006F002000260041006C006C000100
      010001000D000A00480065006C00700001002600480065006C00700001000100
      01000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0044004200
      540065007800740031002E0044006100740061004600690065006C0064000100
      6700720070005F00610063007400330067000100010001000D000A0044004200
      450064006900740031002E0044006100740061004600690065006C0064000100
      6100630074005F006900740065006D00330067000100010001000D000A004400
      4200450064006900740032002E0044006100740061004600690065006C006400
      01006100630074005F007300750062006A006500630074003300670001000100
      01000D000A00440042004400610074006500450064006900740031002E004400
      6100740061004600690065006C00640001006100630074005F00730074006100
      72007400330067000100010001000D000A004400420044006100740065004500
      64006900740031002E004400690061006C006F0067005400690074006C006500
      0100530065006C00650063007400200061002000440061007400650001000100
      01000D000A00440042004400610074006500450064006900740032002E004400
      6100740061004600690065006C00640001006100630074005F0063006D007000
      64007400330067000100010001000D000A004400420044006100740065004500
      64006900740032002E004400690061006C006F0067005400690074006C006500
      0100530065006C00650063007400200061002000440061007400650001000100
      01000D000A004400420043006800650063006B0042006F00780031002E004400
      6100740061004600690065006C00640001006100630074005F0063006D007000
      330067000100010001000D000A004400420043006800650063006B0042006F00
      780031002E00560061006C007500650043006800650063006B00650064000100
      54007200750065000100010001000D000A004400420043006800650063006B00
      42006F00780031002E00560061006C007500650055006E006300680065006300
      6B00650064000100460061006C00730065000100010001000D000A0041004400
      4F00440061007400610053006500740031002E0043006F006D006D0061006E00
      640054006500780074000100730065006C0065006300740020002A0020006600
      72006F006D002000740062006C005F00630061007200740065005F0073006F00
      7000630032005F006700720070000100010001000D000A00410044004F004400
      61007400610053006500740031002E0049006E00640065007800460069006500
      6C0064004E0061006D006500730001006100630074005F006400610074006500
      330067000100010001000D000A00410044004F00440061007400610053006500
      740032002E0043006F006D006D0061006E006400540065007800740001007300
      65006C0065006300740020002A002000660072006F006D002000740062006C00
      5F00630061007200740065005F0073006F007000630033005F00670072007000
      0100010001000D000A00410064006F0044006100740061005300650074003500
      2E0043006F006D006D0061006E00640054006500780074000100730065006C00
      65006300740020002A002000660072006F006D002000740062006C005F006300
      61007200740065005F0073006F00700063005F0061006C000100010001000D00
      0A00630078004700720069006400320044004200420061006E00640065006400
      5400610062006C006500560069006500770031006100630074005F0069007400
      65006D00330067002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004200750074007400
      6F006E004500640069007400500072006F007000650072007400690065007300
      0100010001000D000A0063007800470072006900640031004400420054006100
      62006C0065005600690065007700310043006F006C0075006D006E0031002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D006500010054006300780042007500740074006F006E00450064006900
      7400500072006F0070006500720074006900650073000100010001000D000A00
      410064006F00440061007400610053006500740035002E0049006E0064006500
      78004600690065006C0064004E0061006D006500730001006100630074005F00
      730074006100670065003B006B006500790063006F0064006500010001000100
      0D000A0044004200540065007800740032002E00440061007400610046006900
      65006C0064000100700072006F0064005F007300690074006500010001000100
      0D000A0044004200540065007800740033002E00440061007400610046006900
      65006C00640001006100630074005F0069007300730075006500330067000100
      010001000D000A00730074004C006F00630061006C00650073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0044004200
      47007200690064004500680032002E0043006F006C0075006D006E0073005B00
      30005D002E005400690074006C0065002E00430061007000740069006F006E00
      0100C696D49A4C88D5528C8A5F86010041006300740069006F006E0020004C00
      6F006700200019001A005300650071002300010001000D000A00440042004700
      7200690064004500680032002E0043006F006C0075006D006E0073005B003100
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      0598EE765E980100430061007400650067006F0072007900010001000D000A00
      4400420047007200690064004500680032002E0043006F006C0075006D006E00
      73005B0032005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001000598EE765E98217CF08F0100430061007400650067006F007200
      7900200044006500730063002E00010001000D000A0044004200470072006900
      64004500680032002E0043006F006C0075006D006E0073005B0033005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010069729965
      19001A007865EE7601004900740065006D00730019001A00540074006C000100
      01000D000A004400420047007200690064004500680032002E0043006F006C00
      75006D006E0073005B0034005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100F876DC9519001A00A88CCF912500010052006500
      6C00610074006500640019001A0053006800700074002500010001000D000A00
      4400420047007200690064004500680032002E0043006F006C0075006D006E00
      73005B0035005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001005F55D552E5651F67010053007400610072007400200064006100
      74006500010001000D000A004400420047007200690064004500680032002E00
      43006F006C0075006D006E0073005B0036005D002E005400690074006C006500
      2E00430061007000740069006F006E000100EE76196A8C5B1062E5651F671900
      1A00010054006100720067006500740019001A0063006D0070006C0019001A00
      6400610074006500010001000D000A0044004200470072006900640045006800
      32002E0043006F006C0075006D006E0073005B0037005D002E00540069007400
      6C0065002E00430061007000740069006F006E0001000598EE768C5B10621900
      1A00010041006300740069006F006E0020006C006F00670019001A0063006F00
      6D0070006C006500740065006400010001000D000A0063007800470072006900
      6400320044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0030005D002E0043006100
      7000740069006F006E00010041006300740069006F006E0020004C006F006700
      0100010001000D000A0063007800470072006900640032004400420042006100
      6E006400650064005400610062006C006500560069006500770031002E004200
      61006E00640073005B0031005D002E00430061007000740069006F006E000100
      43004F0050005F004C006F006700200049006E0066006F000100010001000D00
      0A00630078004700720069006400320044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0032005D002E00430061007000740069006F006E0001004300610074006500
      67006F0072007900200049006E0066006F000100010001000D000A0063007800
      4700720069006400320044004200420061006E00640065006400540061006200
      6C006500560069006500770031002E00420061006E00640073005B0033005D00
      2E00430061007000740069006F006E0001005400610073006B00200043006F00
      6D0070006C006500740069006F006E000100010001000D000A00630078004700
      720069006400320044004200420061006E006400650064005400610062006C00
      6500560069006500770031002E00420061006E00640073005B0034005D002E00
      430061007000740069006F006E000100430072006500610074006F0072000100
      010001000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A005400660072006D004300610072007400
      65005F00470072006F007500700061006300740069006F006E00010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      630078005300740079006C00650031000100440045004600410055004C005400
      5F0043004800410052005300450054000100010001000D000A00630078005300
      740079006C00650032000100440045004600410055004C0054005F0043004800
      410052005300450054000100010001000D000A00630078005300740079006C00
      650033000100440045004600410055004C0054005F0043004800410052005300
      450054000100010001000D000A004C006100620065006C003700010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      0D000A004C006100620065006C00310036000100440045004600410055004C00
      54005F0043004800410052005300450054000100010001000D000A004C006100
      620065006C0039000100440045004600410055004C0054005F00430048004100
      52005300450054000100010001000D000A004C006100620065006C0038000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A004C006100620065006C003100300001004400450046004100
      55004C0054005F0043004800410052005300450054000100010001000D000A00
      4C006100620065006C00310031000100440045004600410055004C0054005F00
      43004800410052005300450054000100010001000D000A004C00610062006500
      6C00310032000100440045004600410055004C0054005F004300480041005200
      5300450054000100010001000D000A004C006100620065006C00310033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A00}
  end
  object AdoDataSet5: TADODataSet
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    AfterOpen = AdoDataSet5AfterOpen
    BeforePost = AdoDataSet5BeforePost
    AfterPost = AdoDataSet5AfterPost
    CommandText = 'select * from tbl_carte_sopc_al'
    CommandTimeout = 300
    IndexFieldNames = 'act_stage;keycode'
    Parameters = <>
    Left = 232
    Top = 264
  end
  object DataSource3: TDataSource
    DataSet = AdoDataSet5
    OnDataChange = DataSource3DataChange
    Left = 296
    Top = 264
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 128
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15268329
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 16
    Top = 128
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16636624
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 16
    Top = 128
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15987185
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object qry1: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 464
    Top = 160
  end
end
