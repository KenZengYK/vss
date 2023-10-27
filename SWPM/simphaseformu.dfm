object frmsimphase: Tfrmsimphase
  Left = 192
  Top = 114
  Width = 883
  Height = 640
  Caption = 'Change Sect Hr by Phase'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 0
    Width = 875
    Height = 568
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = frmsimfactory.DataSource2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'PLINE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Line'
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sect Hr by Phase|1st'
        Width = 35
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR2'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sect Hr by Phase|2nd'
        Width = 35
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR3'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sect Hr by Phase|3rd'
        Width = 35
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR4'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sect Hr by Phase|4th'
        Width = 35
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR5'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sect Hr by Phase|5th'
        Width = 35
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR6'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sect Hr by Phase|6th'
        Width = 35
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR7'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sect Hr by Phase|7th'
        Width = 35
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR8'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sect Hr by Phase|8th'
        Width = 35
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR9'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sect Hr by Phase|9th'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'LR10'
        Footers = <>
        Title.Caption = 'Sect Hr by Phase|10h'
        Width = 35
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Overall% by Phase|1st'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE2'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Overall% by Phase|2nd'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE3'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Overall% by Phase|3rd'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE4'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Overall% by Phase|4th'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE5'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Overall% by Phase|5th'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE6'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Overall% by Phase|6th'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE7'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Overall% by Phase|7th'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE8'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Overall% by Phase|8th'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE9'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Overall% by Phase|9th'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE10'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Overall% by Phase|10th'
        Width = 40
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 568
    Width = 875
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 1
      Kind = bkClose
    end
  end
end
