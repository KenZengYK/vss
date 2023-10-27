object frmfj: Tfrmfj
  Left = 226
  Top = 166
  Width = 369
  Height = 324
  BorderIcons = [biSystemMenu]
  Caption = #38646#37197#20214
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 26
    Height = 13
    Caption = #31278#39006
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 256
    Top = 232
    Width = 3
    Height = 13
    Visible = False
  end
  object SpeedButton1: TSpeedButton
    Left = 234
    Top = 256
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
    Left = 204
    Top = 256
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
    OnClick = SpeedButton2Click
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 16
    Width = 145
    Height = 21
    DataField = 'Cz'
    DataSource = DataSource2
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 56
    Width = 313
    Height = 185
    Color = clWhite
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Seq'
        Title.Caption = #24207#34399
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fj'
        Title.Alignment = taCenter
        Title.Caption = #38468#20214
        Width = 238
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 256
    Width = 180
    Height = 30
    DataSource = DataSource2
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost]
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 316
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 260
    Top = 8
  end
  object Table1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_fj'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    AfterPost = Table1AfterPost
    Left = 288
    Top = 8
  end
  object Table2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_fj1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    AfterPost = Table2AfterPost
    AfterScroll = Table2AfterScroll
    Left = 232
    Top = 8
  end
end
