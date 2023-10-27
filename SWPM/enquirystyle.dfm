object frmstyleenquiry: Tfrmstyleenquiry
  Left = 166
  Top = 107
  Width = 417
  Height = 380
  Caption = '按款號查詢'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 28
    Height = 16
    Caption = '款號'
  end
  object Edit1: TEdit
    Left = 72
    Top = 24
    Width = 169
    Height = 24
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object DBGridEh1: TDBGridEh
    Left = 32
    Top = 72
    Width = 345
    Height = 201
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterColor = clWindow
    UseMultiTitle = True
    Columns = <
      item
        FieldName = 'pline'
        Title.Caption = '拉名'
        Width = 61
        Footers = <>
      end
      item
        FieldName = 'j_no'
        Title.Caption = '工程號'
        Width = 97
        Footers = <>
      end
      item
        FieldName = 'j2_job'
        Title.Caption = '制單'
        Width = 62
        Footers = <>
      end
      item
        FieldName = 'acol'
        Title.Caption = '色號'
        Width = 71
        Footers = <>
      end>
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 296
    Width = 75
    Height = 33
    Caption = '退出'
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 304
    Top = 16
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmlogin.SocketConnection1
    Left = 240
  end
end
