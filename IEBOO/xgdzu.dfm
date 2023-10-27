object frmxgdz: Tfrmxgdz
  Left = 222
  Top = 107
  Width = 497
  Height = 411
  BorderIcons = [biSystemMenu]
  Caption = #20462#25913#21205#20316#38918#24207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 16
    Width = 473
    Height = 313
    DataSource = frmgxfxb.DataSource2
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
    TabOrder = 0
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Seq'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #38918#24207
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Bh'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #32232#34399
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'Dzxxfx'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #21205#20316
        Width = 282
      end
      item
        EditButtons = <>
        FieldName = 'Tmu'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #26178#38291
        Width = 72
      end>
  end
  object BitBtn1: TBitBtn
    Left = 360
    Top = 344
    Width = 64
    Height = 30
    Caption = #30906#23450
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 424
    Top = 344
    Width = 57
    Height = 30
    Caption = #36864#20986
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    OnClick = BitBtn2Click
    NumGlyphs = 2
  end
end
