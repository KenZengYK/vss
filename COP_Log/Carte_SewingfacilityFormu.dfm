object frmCarte_Sewingfacility: TfrmCarte_Sewingfacility
  Left = 0
  Top = 0
  Caption = 'COP - Sewing Facility Arrangement'
  ClientHeight = 407
  ClientWidth = 953
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
    Width = 953
    Height = 57
    Align = alTop
    TabOrder = 0
    object RzBackground1: TRzBackground
      Left = 1
      Top = 1
      Width = 951
      Height = 55
      Active = True
      Align = alClient
      GradientColorStart = 14216405
      GradientColorStop = 16776176
      GradientDirection = gdVerticalEnd
      ImageStyle = isCenter
      ShowGradient = True
      ShowImage = False
      ShowTexture = False
      ExplicitLeft = 176
      ExplicitTop = 8
      ExplicitWidth = 200
      ExplicitHeight = 100
    end
    object Label1: TLabel
      Left = 15
      Top = 7
      Width = 32
      Height = 13
      Caption = 'Log#: '
      Color = clBtnFace
      ParentColor = False
    end
    object DBText1: TDBText
      Left = 51
      Top = 6
      Width = 62
      Height = 17
      Color = clBtnFace
      DataField = 'keycode'
      DataSource = frmCarte_Ordprocessing.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 119
      Top = 7
      Width = 34
      Height = 13
      Caption = 'Proj#: '
      Color = clBtnFace
      ParentColor = False
    end
    object DBText2: TDBText
      Left = 156
      Top = 6
      Width = 71
      Height = 17
      Color = clBtnFace
      DataField = 'projectno'
      DataSource = frmCarte_Ordprocessing.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 233
      Top = 7
      Width = 54
      Height = 13
      Caption = 'Cust PO#: '
      Color = clBtnFace
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 289
      Top = 6
      Width = 101
      Height = 17
      Color = clBtnFace
      DataField = 'custpo'
      DataSource = frmCarte_Ordprocessing.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 396
      Top = 7
      Width = 33
      Height = 13
      Caption = 'WO#: '
      Color = clBtnFace
      ParentColor = False
    end
    object DBText4: TDBText
      Left = 430
      Top = 6
      Width = 60
      Height = 17
      Color = clBtnFace
      DataField = 'workorderno'
      DataSource = frmCarte_Ordprocessing.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 506
      Top = 7
      Width = 70
      Height = 13
      Caption = 'Cust Style#:   '
      Color = clBtnFace
      ParentColor = False
    end
    object DBText7: TDBText
      Left = 572
      Top = 6
      Width = 122
      Height = 17
      Color = clBtnFace
      DataField = 'custstyle'
      DataSource = frmCarte_Ordprocessing.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 700
      Top = 7
      Width = 64
      Height = 13
      Caption = 'PH Clr Code: '
      Color = clBtnFace
      ParentColor = False
    end
    object DBText5: TDBText
      Left = 764
      Top = 6
      Width = 49
      Height = 17
      Color = clBtnFace
      DataField = 'phcolor'
      DataSource = frmCarte_Ordprocessing.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 15
      Top = 29
      Width = 75
      Height = 13
      Caption = '# of AL (Org.)  '
      Color = clBtnFace
      ParentColor = False
    end
    object Label8: TLabel
      Left = 340
      Top = 29
      Width = 75
      Height = 13
      Caption = '# of QN (Org.) '
      Color = clBtnFace
      ParentColor = False
    end
    object Label9: TLabel
      Left = 473
      Top = 29
      Width = 19
      Height = 13
      Caption = '+/- '
      Color = clBtnFace
      ParentColor = False
    end
    object Label10: TLabel
      Left = 142
      Top = 29
      Width = 19
      Height = 13
      Caption = '+/- '
      Color = clBtnFace
      ParentColor = False
    end
    object Label11: TLabel
      Left = 218
      Top = 29
      Width = 26
      Height = 13
      Caption = '= Ttl '
      Color = clBtnFace
      ParentColor = False
    end
    object Label12: TLabel
      Left = 546
      Top = 29
      Width = 26
      Height = 13
      Caption = '= Ttl '
      Color = clBtnFace
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 95
      Top = 26
      Width = 42
      Height = 21
      DataField = 'line_no'
      DataSource = frmCarte_Ordprocessing.DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 423
      Top = 26
      Width = 42
      Height = 21
      DataField = 'qn_no'
      DataSource = frmCarte_Ordprocessing.DataSource1
      TabOrder = 3
      OnChange = DBEdit2Change
    end
    object DBEdit3: TDBEdit
      Left = 496
      Top = 26
      Width = 42
      Height = 21
      DataField = 'qn_no1'
      DataSource = frmCarte_Ordprocessing.DataSource1
      TabOrder = 4
      OnChange = DBEdit2Change
    end
    object DBEdit4: TDBEdit
      Left = 165
      Top = 26
      Width = 42
      Height = 21
      DataField = 'line_no1'
      DataSource = frmCarte_Ordprocessing.DataSource1
      TabOrder = 1
      OnChange = DBEdit2Change
    end
    object DBEdit5: TDBEdit
      Left = 259
      Top = 26
      Width = 42
      Height = 21
      DataField = 'line_tno'
      DataSource = frmCarte_Ordprocessing.DataSource1
      ReadOnly = True
      TabOrder = 2
      OnChange = DBEdit2Change
    end
    object DBEdit6: TDBEdit
      Left = 587
      Top = 26
      Width = 42
      Height = 21
      DataField = 'qn_tno'
      DataSource = frmCarte_Ordprocessing.DataSource1
      ReadOnly = True
      TabOrder = 5
      OnChange = DBEdit2Change
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 953
    Height = 309
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
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEnter = DBGridEh1Enter
    Columns = <
      item
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'RWO Qty'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'q_tqty'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN Qty'#13#10'(Ttl)'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'bqty'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Non'#13#10'Sch.'#13#10'Qty'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'q1_line'
        Footers = <>
        Title.Caption = 'QN 1|AL#'
        Width = 40
      end
      item
        DisplayFormat = '#0;-#0;'#39#39
        EditButtons = <>
        FieldName = 'q1_qty'
        Footers = <>
        Title.Caption = 'QN 1|QN Qty'
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q1_f'
        Footers = <>
        Title.Caption = 'QN 1|'#32317#31680#26178'|F'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q1_a'
        Footers = <>
        Title.Caption = 'QN 1|'#32317#31680#26178'|A'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q1_e'
        Footers = <>
        Title.Caption = 'QN 1|'#32317#31680#26178'|E'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '#0.0'
        EditButtons = <>
        FieldName = 'q1_sect'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN 1|'#32317#31680#26178'|Ttl'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q1_dt1'
        Footers = <>
        Title.Caption = 'QN 1|Scheduling|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q1_dt2'
        Footers = <>
        Title.Caption = 'QN 1|Scheduling|Finish dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q1_dt4'
        Footers = <>
        Title.Caption = 'QN 1|Actual|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q1_dt3'
        Footers = <>
        Title.Caption = 'QN 1|Actual|Finish dd'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'q2_line'
        Footers = <>
        Title.Caption = 'QN 2|AL#'
        Width = 40
      end
      item
        DisplayFormat = '#0;-#0;'#39#39
        EditButtons = <>
        FieldName = 'q2_qty'
        Footers = <>
        Title.Caption = 'QN 2|QN Qty'
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q2_f'
        Footers = <>
        Title.Caption = 'QN 2|'#32317#31680#26178'|F'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q2_a'
        Footers = <>
        Title.Caption = 'QN 2|'#32317#31680#26178'|A'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q2_e'
        Footers = <>
        Title.Caption = 'QN 2|'#32317#31680#26178'|E'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '#0.0'
        EditButtons = <>
        FieldName = 'q2_sect'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN 2|'#32317#31680#26178'|Ttl'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q2_dt1'
        Footers = <>
        Title.Caption = 'QN 2|Scheduling|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q2_dt2'
        Footers = <>
        Title.Caption = 'QN 2|Scheduling|Finish dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q2_dt4'
        Footers = <>
        Title.Caption = 'QN 2|Actual|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q2_dt3'
        Footers = <>
        Title.Caption = 'QN 2|Actual|Finish dd'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'q3_line'
        Footers = <>
        Title.Caption = 'QN 3|AL#'
        Width = 40
      end
      item
        DisplayFormat = '#0;-#0;'#39#39
        EditButtons = <>
        FieldName = 'q3_qty'
        Footers = <>
        Title.Caption = 'QN 3|QN Qty'
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q3_f'
        Footers = <>
        Title.Caption = 'QN 3|'#32317#31680#26178'|F'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q3_a'
        Footers = <>
        Title.Caption = 'QN 3|'#32317#31680#26178'|A'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q3_e'
        Footers = <>
        Title.Caption = 'QN 3|'#32317#31680#26178'|E'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '#0.0'
        EditButtons = <>
        FieldName = 'q3_sect'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN 3|'#32317#31680#26178'|Ttl'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q3_dt1'
        Footers = <>
        Title.Caption = 'QN 3|Scheduling|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q3_dt2'
        Footers = <>
        Title.Caption = 'QN 3|Scheduling|Finish dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q3_dt4'
        Footers = <>
        Title.Caption = 'QN 3|Actual|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q3_dt3'
        Footers = <>
        Title.Caption = 'QN 3|Actual|Finish dd'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'q4_line'
        Footers = <>
        Title.Caption = 'QN 4|AL#'
        Width = 40
      end
      item
        DisplayFormat = '#0;-#0;'#39#39
        EditButtons = <>
        FieldName = 'q4_qty'
        Footers = <>
        Title.Caption = 'QN 4|QN Qty'
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q4_f'
        Footers = <>
        Title.Caption = 'QN 4|'#32317#31680#26178'|F'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q4_a'
        Footers = <>
        Title.Caption = 'QN 4|'#32317#31680#26178'|A'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q4_e'
        Footers = <>
        Title.Caption = 'QN 4|'#32317#31680#26178'|E'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '#0.0'
        EditButtons = <>
        FieldName = 'q4_sect'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN 4|'#32317#31680#26178'|Ttl'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q4_dt1'
        Footers = <>
        Title.Caption = 'QN 4|Scheduling|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q4_dt2'
        Footers = <>
        Title.Caption = 'QN 4|Scheduling|Finish dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q4_dt4'
        Footers = <>
        Title.Caption = 'QN 4|Actual|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q4_dt3'
        Footers = <>
        Title.Caption = 'QN 4|Actual|Finish dd'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'q5_line'
        Footers = <>
        Title.Caption = 'QN 5|AL#'
        Width = 40
      end
      item
        DisplayFormat = '#0;-#0;'#39#39
        EditButtons = <>
        FieldName = 'q5_qty'
        Footers = <>
        Title.Caption = 'QN 5|QN Qty'
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q5_f'
        Footers = <>
        Title.Caption = 'QN 5|'#32317#31680#26178'|F'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q5_a'
        Footers = <>
        Title.Caption = 'QN 5|'#32317#31680#26178'|A'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q5_e'
        Footers = <>
        Title.Caption = 'QN 5|'#32317#31680#26178'|E'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '#0.0'
        EditButtons = <>
        FieldName = 'q5_sect'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN 5|'#32317#31680#26178'|Ttl'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q5_dt1'
        Footers = <>
        Title.Caption = 'QN 5|Scheduling|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q5_dt2'
        Footers = <>
        Title.Caption = 'QN 5|Scheduling|Finish dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q5_dt4'
        Footers = <>
        Title.Caption = 'QN 5|Actual|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q5_dt3'
        Footers = <>
        Title.Caption = 'QN 5|Actual|Finish dd'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'q6_line'
        Footers = <>
        Title.Caption = 'QN 6|AL#'
        Width = 40
      end
      item
        DisplayFormat = '#0;-#0;'#39#39
        EditButtons = <>
        FieldName = 'q6_qty'
        Footers = <>
        Title.Caption = 'QN 6|QN Qty'
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q6_f'
        Footers = <>
        Title.Caption = 'QN 6|'#32317#31680#26178'|F'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q6_a'
        Footers = <>
        Title.Caption = 'QN 6|'#32317#31680#26178'|A'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'q6_e'
        Footers = <>
        Title.Caption = 'QN 6|'#32317#31680#26178'|E'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = '#0.0'
        EditButtons = <>
        FieldName = 'q6_sect'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN 6|'#32317#31680#26178'|Ttl'
        Visible = False
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q6_dt1'
        Footers = <>
        Title.Caption = 'QN 6|Scheduling|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q6_dt2'
        Footers = <>
        Title.Caption = 'QN 6|Scheduling|Finish dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q6_dt4'
        Footers = <>
        Title.Caption = 'QN 6|Actual|Start dd'
        Width = 40
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'q6_dt3'
        Footers = <>
        Title.Caption = 'QN 6|Actual|Finish dd'
        Width = 40
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 366
    Width = 953
    Height = 41
    Align = alBottom
    TabOrder = 2
    object RzBackground2: TRzBackground
      Left = 1
      Top = 1
      Width = 951
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
      ExplicitLeft = 48
      ExplicitTop = 16
      ExplicitWidth = 200
      ExplicitHeight = 100
    end
    object BitBtn3: TBitBtn
      Left = 15
      Top = 8
      Width = 81
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
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn8: TBitBtn
      Left = 95
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object ADODataSet1: TADODataSet
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    AfterOpen = ADODataSet1AfterOpen
    CommandText = 'select * from tbl_carte_sopc4'
    CommandTimeout = 300
    Parameters = <>
    Left = 232
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 280
    Top = 152
  end
  object ADOQuery1: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 368
    Top = 152
  end
end
