object frmzjhl: Tfrmzjhl
  Left = 29
  Top = 41
  Width = 721
  Height = 492
  Caption = 'TBS '#25289#27599#36913#35413#20272#24037#20316#25928#29575#32317#22577#34920
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 24
    Width = 665
    Height = 361
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Pline'
        Footers = <>
        Title.Caption = #25289#21517
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'Year1'
        Footers = <>
        Title.Caption = #24180
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'Week1'
        Footers = <>
        Title.Caption = #21608
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'Days'
        Footers = <>
        Title.Caption = #26085#26399
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Ttlsect'
        Footers = <>
        Title.Caption = #35519#25972#30446#27161#32317#31680#25976
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'Msect'
        Footers = <>
        Title.Caption = #32317#31680#25976
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'Kdjs'
        Footers = <>
        Title.Caption = #27284#26399#38283#25918#31680#25976
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'Zktd'
        Footers = <>
        Title.Caption = #38283#36008#20572#38931#31680#25976
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'Sctd'
        Footers = <>
        Title.Caption = #29983#29986#20572#38931#31680#25976
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'Sclh'
        Footers = <>
        Title.Caption = #29983#29986#33853#21518#31680#25976
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'Zjhl'
        Footers = <>
        Title.Caption = #24037#20316#25928#29575'%'
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'Zhjs'
        Footers = <>
        Title.Caption = #36861#22238#31680#25976
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'Bcjs'
        Footers = <>
        Title.Caption = #25152#38656#26178#38291#31680#25976
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'Dbxl'
        Footers = <>
        Title.Caption = #36861#22238#25928#33021'%'
        Width = 40
      end>
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 408
    Width = 81
    Height = 33
    Caption = #25171#21360
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 105
    Top = 408
    Width = 81
    Height = 33
    Caption = #36864#20986
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkClose
  end
  object Query1: TQuery
    DatabaseName = 'proschedule'
    RequestLive = True
    SQL.Strings = (
      'select * from tblzjhl')
    Left = 80
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
  end
end
