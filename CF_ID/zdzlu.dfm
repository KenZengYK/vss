object frmzdzl: Tfrmzdzl
  Left = 88
  Top = 86
  Width = 665
  Height = 380
  Caption = '拉布計劃----制單資料'
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 42
    Height = 13
    Caption = '可選擇:'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 352
    Top = 16
    Width = 42
    Height = 13
    Caption = '已選擇:'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 314
    Top = 48
    Width = 30
    Height = 30
    Hint = '選擇'
    Caption = '->'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object SpeedButton2: TSpeedButton
    Left = 314
    Top = 112
    Width = 30
    Height = 30
    Hint = '全選'
    Caption = '>>'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object SpeedButton3: TSpeedButton
    Left = 314
    Top = 176
    Width = 30
    Height = 30
    Hint = '移除'
    Caption = '<-'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object SpeedButton4: TSpeedButton
    Left = 314
    Top = 240
    Width = 30
    Height = 30
    Hint = '全部移除'
    Caption = '<<'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object SpeedButton5: TSpeedButton
    Left = 314
    Top = 304
    Width = 30
    Height = 30
    Hint = '退出'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = [fsBold]
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton5Click
  end
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 40
    Width = 289
    Height = 297
    Color = 11927551
    DataSource = DMfcjh.dsfczd1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = '新細明體'
    TitleFont.Style = []
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterColor = clWindow
    Columns = <
      item
        Alignment = taCenter
        FieldName = 'Zdh'
        Title.Alignment = taCenter
        Title.Caption = '制單號'
        Width = 106
        Footers = <>
      end
      item
        Alignment = taCenter
        FieldName = 'Kh'
        Title.Alignment = taCenter
        Title.Caption = '款號'
        Width = 84
        Footers = <>
      end
      item
        Alignment = taCenter
        FieldName = 'Sh'
        Title.Alignment = taCenter
        Title.Caption = '色號'
        Width = 66
        Footers = <>
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 360
    Top = 40
    Width = 289
    Height = 297
    Color = 11927551
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = '新細明體'
    TitleFont.Style = []
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterColor = clWindow
    Columns = <
      item
        Alignment = taCenter
        FieldName = 'Zdh'
        Title.Alignment = taCenter
        Title.Caption = '制單號'
        Width = 105
        Footers = <>
      end
      item
        Alignment = taCenter
        FieldName = 'Kh'
        Title.Alignment = taCenter
        Title.Caption = '款號'
        Width = 86
        Footers = <>
      end
      item
        Alignment = taCenter
        FieldName = 'Sh'
        Title.Alignment = taCenter
        Title.Caption = '色號'
        Width = 65
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 160
  end
  object Query2: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 188
  end
  object Query3: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 216
  end
end
