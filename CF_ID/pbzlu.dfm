object frmpbzl: Tfrmpbzl
  Left = 192
  Top = 107
  Width = 465
  Height = 340
  BorderIcons = [biSystemMenu]
  Caption = #25289#24067#35336#21123'----'#25209#24067#36039#26009
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 247
    Top = 17
    Width = 70
    Height = 13
    Caption = #25209#24067#32317#38263'(m)'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 174
    Top = 272
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
  end
  object SpeedButton2: TSpeedButton
    Left = 204
    Top = 272
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
  end
  object tc: TSpeedButton
    Left = 234
    Top = 272
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
    OnClick = tcClick
  end
  object Label2: TLabel
    Left = 24
    Top = 18
    Width = 39
    Height = 13
    Caption = #24037#31243#34399
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 320
    Top = 15
    Width = 89
    Height = 21
    Color = 11927551
    DataField = 'Pbzc'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 48
    Width = 409
    Height = 209
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
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyDown = DBGridEh1KeyDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Ys'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #33394#34399
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'Cd'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #38263#24230'(m)'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'Cacyl'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'CAC'#29992#37327'(m)'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'Kcjs'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #21487#35009#20214#25976
        Width = 82
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 272
    Width = 150
    Height = 30
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 70
    Top = 15
    Width = 115
    Height = 21
    Color = 11927551
    DataField = 'Gch'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Query1: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 296
    Top = 274
  end
  object Query2: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 324
    Top = 274
  end
end
