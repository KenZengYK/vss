object frmCarte_Keycodechoose: TfrmCarte_Keycodechoose
  Left = 0
  Top = 0
  Caption = #36984#25799#35468#34399
  ClientHeight = 344
  ClientWidth = 748
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 748
    Height = 262
    Align = alClient
    AllowedOperations = []
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'seq'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'keycode'
        Footers = <>
        Title.Caption = #35468#34399
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'projectno'
        Footers = <>
        Title.Caption = #24037#31243#34399
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'custpo'
        Footers = <>
        Title.Caption = #37559#21806#21934#34399
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'workorderno'
        Footers = <>
        Title.Caption = #21046#21934#34399
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'rwo_wo'
        Footers = <>
        Title.Caption = #36650#21046#21934#34399
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'custstyle'
        Footers = <>
        Title.Caption = #23458#26041#27454#34399
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'phcolor'
        Footers = <>
        Title.Caption = #27454#38991#33394'|'#24288#26041#33394#34399
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'custcolor'
        Footers = <>
        Title.Caption = #27454#38991#33394'|'#23458#26041#33394#34399
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'qty1'
        Footers = <>
        Title.Caption = #36650#21046#21934#25976' ('#33394#20506#38752')'
        Width = 41
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'ex_o'
        Footers = <>
        Title.Caption = #38626#24288#26399'|'#21407#23450
        Width = 42
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'ex_r'
        Footers = <>
        Title.Caption = #38626#24288#26399'|'#20462#23450'*'
        Width = 42
      end
      item
        DisplayFormat = 'mm/dd'
        EditButtons = <>
        FieldName = 'act_cmpdt'
        Footers = <>
        Title.Caption = #38626#24288#26399'|'#23433#25490' (PDN)'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'prod_site'
        Footers = <>
        Title.Caption = #29983#29986#22522#22320
        Width = 32
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 41
    Align = alTop
    TabOrder = 1
    object RzBackground3: TRzBackground
      Left = 1
      Top = 1
      Width = 746
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
      ExplicitLeft = 40
      ExplicitTop = 8
      ExplicitWidth = 200
      ExplicitHeight = 100
    end
    object Label1: TLabel
      Left = 32
      Top = 11
      Width = 39
      Height = 13
      Caption = #24037#31243#34399' '
    end
    object ComboBox1: TComboBox
      Left = 72
      Top = 8
      Width = 113
      Height = 21
      TabOrder = 0
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 303
    Width = 748
    Height = 41
    Align = alBottom
    TabOrder = 2
    object RzBackground1: TRzBackground
      Left = 1
      Top = 1
      Width = 746
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
      ExplicitLeft = 40
      ExplicitTop = 8
      ExplicitWidth = 200
      ExplicitHeight = 100
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 81
      Height = 25
      Caption = #30906#23450
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 8
      Width = 81
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object ADODataSet1: TADODataSet
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from tbl_carte_sopc1 where projectno='#39'CRTE-001'#39
    CommandTimeout = 300
    IndexFieldNames = 'projectno;custpo;workorderno;phcolor;rwo_wo;custstyle;keycode'
    Parameters = <>
    Left = 248
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 288
    Top = 65528
  end
  object ADOQuery1: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 336
    Top = 65528
  end
end
