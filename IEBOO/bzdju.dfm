object frmbzdj: Tfrmbzdj
  Left = 297
  Top = 127
  Width = 306
  Height = 228
  BorderIcons = [biSystemMenu]
  Caption = '標準單價'
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
    Left = 168
    Top = 152
    Width = 3
    Height = 13
    Visible = False
  end
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 8
    Width = 265
    Height = 137
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
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
    TitleFont.Name = '新細明體'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Bzdj'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = '標準單價'
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'Sxrq'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = '生效日期'
      end>
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 160
    Width = 57
    Height = 25
    Caption = '確定'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = DBGridEh1DblClick
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 160
    Width = 57
    Height = 25
    Caption = '退出'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 64
    Top = 160
    Width = 57
    Height = 25
    Caption = '修改'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 28
    Top = 56
  end
  object Table1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_bzdj'
    Params = <>
    ProviderName = 'dspphg'
    Top = 56
  end
end
