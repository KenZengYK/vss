object frmphiszd: Tfrmphiszd
  Left = 192
  Top = 107
  Width = 433
  Height = 352
  Caption = 'PHIS制單資料'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 256
    Top = 16
    Width = 39
    Height = 13
    Caption = '制單號'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 16
    Width = 39
    Height = 13
    Caption = '工程號'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 178
    Top = 13
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object SpeedButton2: TSpeedButton
    Left = 386
    Top = 13
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 288
    Width = 89
    Height = 25
    Caption = '選擇此色號'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 194
    Top = 288
    Width = 97
    Height = 25
    Cancel = True
    Caption = '取消'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 1
    NumGlyphs = 2
  end
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 48
    Width = 393
    Height = 225
    Color = 11795962
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
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
    UseMultiTitle = True
    Columns = <
      item
        FieldName = 'SOP40'
        Title.Caption = '工程號'
        Width = 108
        Footers = <>
      end
      item
        FieldName = 'WORD40'
        Title.Caption = '制單號'
        Width = 62
        Footers = <>
      end
      item
        FieldName = 'ITEM40'
        Title.Caption = '款號'
        Width = 147
        Footers = <>
      end
      item
        FieldName = 'PCOL46'
        Title.Caption = '色號'
        Width = 37
        Footers = <>
      end>
  end
  object Edit2: TEdit
    Left = 296
    Top = 13
    Width = 90
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 56
    Top = 13
    Width = 122
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object BitBtn3: TBitBtn
    Left = 105
    Top = 288
    Width = 89
    Height = 25
    Caption = '選擇全部色號'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 5
    NumGlyphs = 2
  end
  object Session1: TSession
    NetFileDir = 'F:\PH'
    PrivateDir = 'C:\TEMP'
    SessionName = 'session1'
    Left = 8
    Top = 32
  end
  object Query1: TQuery
    DatabaseName = 'phis'
    SessionName = 'session1'
    SQL.Strings = (
      
        'select a.j_no,a.j2_job,a.article,b.color from project2 a,projass' +
        '4 b where b.j2_job=a.j2_job and a.j2_job='#39'32562'#39)
    Left = 40
    Top = 32
  end
  object Query2: TQuery
    DatabaseName = 'phis'
    SessionName = 'session1'
    Left = 68
    Top = 32
  end
  object Query3: TQuery
    DatabaseName = 'phis'
    SessionName = 'session1'
    Left = 96
    Top = 32
  end
  object Query4: TQuery
    DatabaseName = 'phis'
    SessionName = 'session1'
    Left = 124
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 32
  end
end
