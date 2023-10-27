object frmgczd: Tfrmgczd
  Left = 201
  Top = 129
  Width = 321
  Height = 316
  Caption = #36984#25799#24037#31243#34399'/'#21046#21934#34399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 248
    Width = 32
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object Label2: TLabel
    Left = 40
    Top = 0
    Width = 3
    Height = 13
    Visible = False
  end
  object DBGridEh1: TDBGridEh
    Left = 32
    Top = 16
    Width = 249
    Height = 217
    Color = 11795962
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = [fsBold]
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = [fsBold]
    UseMultiTitle = True
    OnDblClick = Button1Click
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CUSO40'
        Footers = <>
        Width = 131
      end
      item
        EditButtons = <>
        FieldName = 'WORD40'
        Footers = <>
        Width = 80
      end>
  end
  object Button1: TButton
    Left = 32
    Top = 248
    Width = 65
    Height = 25
    Caption = #30906#23450
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 248
    Width = 65
    Height = 25
    Caption = #21462#28040
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 248
  end
  object Query1: TQuery
    DatabaseName = 'p1f3'
    SQL.Strings = (
      
        'select distinct a.cuso40,b.word40 from oep40 a,msp40 b where b.c' +
        'ono40=a.cono40 and substr(b.w1rf40,1,7)=a.ordn40 and a.cono40='#39'P' +
        '1'#39' and b.word40='#39'W000044'#39' and a.dtlc40=0 and a.stat40='#39#39)
    Left = 128
    Top = 248
  end
end
