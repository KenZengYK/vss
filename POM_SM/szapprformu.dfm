object frmszappr: Tfrmszappr
  Left = 0
  Top = 0
  Caption = #24453#30906#35469#21015#34920
  ClientHeight = 394
  ClientWidth = 672
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
    Top = 0
    Width = 672
    Height = 353
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
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        FieldName = 'Stylno'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PH'#27454#34399
        Width = 131
      end
      item
        EditButtons = <>
        FieldName = 'user1'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35352#20837#32773'|(1)'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'user2'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35352#20837#32773'|(2)'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'user3'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35352#20837#32773'|(3)'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'user4'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35352#20837#32773'|(4)'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'user5'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25812#30070#32773
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'user6'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21830#21697#35373#35336#20027#31649
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'sel'
        Footers = <>
        Title.Caption = #36984#25799
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 353
    Width = 672
    Height = 41
    Align = alBottom
    TabOrder = 1
    object lbllvl: TLabel
      Left = 328
      Top = 8
      Width = 20
      Height = 13
      Caption = 'lbllvl'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 32
      Top = 6
      Width = 81
      Height = 25
      Caption = #30906#35469
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
      Left = 112
      Top = 6
      Width = 81
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
    CommandText = 'exec phgdb..sp_sz_apprlist '#39'Susanna'#39
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    BeforePost = Query1BeforePost
    AfterPost = Query1AfterPost
    Left = 132
    Top = 16
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 252
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 176
    Top = 16
  end
end
