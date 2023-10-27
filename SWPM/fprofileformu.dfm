object frmfprofile: Tfrmfprofile
  Left = 192
  Top = 114
  Caption = 'Factory Profile'
  ClientHeight = 359
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 41
    Height = 13
    Caption = 'Factory  '
  end
  object Label2: TLabel
    Left = 248
    Top = 24
    Width = 125
    Height = 13
    Caption = '(Senior) Factory Manager  '
  end
  object Label9: TLabel
    Left = 32
    Top = 264
    Width = 97
    Height = 13
    Caption = 'Over/Shortage (+/-) '
  end
  object SpeedButton1: TSpeedButton
    Left = 192
    Top = 304
    Width = 33
    Height = 25
    Hint = 'One Factory'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 225
    Top = 304
    Width = 33
    Height = 25
    Hint = 'All Factory'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 298
    Top = 304
    Width = 33
    Height = 25
    Hint = 'Learning Curve'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
      3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
      000077777777777777773303333333333333337FF333333F33333709333333C3
      333337773F3FF373F333330393993C3C33333F7F7F77F7F7FFFF77079797977C
      77777777777777777777330339339333C333337FF73373F37F33370C333C3933
      933337773F3737F37FF33303C3C33939C9333F7F7F7FF7F777FF7707C7C77797
      7C97777777777777777733033C3333333C33337F37F33333373F37033C333333
      33C3377F37333333337333033333333333333F7FFFFFFFFFFFFF770777777777
      7777777777777777777733333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    Visible = False
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 258
    Top = 304
    Width = 33
    Height = 25
    Hint = 'Exit'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00377777777788
      F8F878F7777777777333333F00004444400777FFF444447777777777F333FF7F
      000033334D5008FFF4333377777777773337777F0000333345D50FFFF4333333
      337F777F3337F33F000033334D5D0FFFF43333333377877F3337F33F00003333
      45D50FEFE4333333337F787F3337F33F000033334D5D0FFFF43333333377877F
      3337F33F0000333345D50FEFE4333333337F787F3337F33F000033334D5D0FFF
      F43333333377877F3337F33F0000333345D50FEFE4333333337F787F3337F33F
      000033334D5D0EFEF43333333377877F3337F33F0000333345D50FEFE4333333
      337F787F3337F33F000033334D5D0EFEF43333333377877F3337F33F00003333
      4444444444333333337F7F7FFFF7F33F00003333333333333333333333777777
      7777333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333777777F3333F00003333330000003333333333337FFFF7F3333F
      0000}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 24
    Width = 105
    Height = 21
    Color = 12121071
    DataField = 'TPLANT'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 376
    Top = 24
    Width = 121
    Height = 21
    Color = 12121071
    DataField = 'FTYMGR'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 56
    Width = 505
    Height = 97
    Caption = 'Stationed'
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 44
      Height = 13
      Caption = 'IE Office '
    end
    object Label4: TLabel
      Left = 192
      Top = 16
      Width = 46
      Height = 13
      Caption = 'QC Office'
    end
    object Label5: TLabel
      Left = 328
      Top = 16
      Width = 100
      Height = 13
      Caption = 'Products technician  '
    end
    object Label10: TLabel
      Left = 16
      Top = 40
      Width = 48
      Height = 13
      Caption = 'Costing IE'
    end
    object Label11: TLabel
      Left = 152
      Top = 40
      Width = 90
      Height = 13
      Caption = 'Final QC(products) '
    end
    object Label13: TLabel
      Left = 16
      Top = 64
      Width = 51
      Height = 13
      Caption = 'On-Site IE '
    end
    object Label14: TLabel
      Left = 184
      Top = 64
      Width = 53
      Height = 13
      Caption = 'Sample QC'
    end
    object Label12: TLabel
      Left = 328
      Top = 40
      Width = 72
      Height = 13
      Caption = 'Superintendent'
    end
    object DBEdit3: TDBEdit
      Left = 72
      Top = 16
      Width = 65
      Height = 21
      DataField = 'WF7'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 248
      Top = 16
      Width = 65
      Height = 21
      DataField = 'WF10'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 424
      Top = 16
      Width = 65
      Height = 21
      DataField = 'WF22'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 72
      Top = 40
      Width = 65
      Height = 21
      DataField = 'WF41'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit11: TDBEdit
      Left = 248
      Top = 40
      Width = 65
      Height = 21
      DataField = 'WF42'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit13: TDBEdit
      Left = 72
      Top = 64
      Width = 65
      Height = 21
      DataField = 'WF43'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit14: TDBEdit
      Left = 248
      Top = 64
      Width = 65
      Height = 21
      DataField = 'WF44'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit12: TDBEdit
      Left = 424
      Top = 40
      Width = 65
      Height = 21
      DataField = 'WF45'
      DataSource = DataSource1
      TabOrder = 7
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 160
    Width = 505
    Height = 97
    Caption = 'Current'
    TabOrder = 3
    object Label6: TLabel
      Left = 16
      Top = 16
      Width = 44
      Height = 13
      Caption = 'IE Office '
    end
    object Label7: TLabel
      Left = 192
      Top = 16
      Width = 46
      Height = 13
      Caption = 'QC Office'
    end
    object Label8: TLabel
      Left = 328
      Top = 16
      Width = 100
      Height = 13
      Caption = 'Products technician  '
    end
    object Label16: TLabel
      Left = 16
      Top = 40
      Width = 48
      Height = 13
      Caption = 'Costing IE'
    end
    object Label17: TLabel
      Left = 16
      Top = 64
      Width = 51
      Height = 13
      Caption = 'On-Site IE '
    end
    object Label18: TLabel
      Left = 152
      Top = 40
      Width = 90
      Height = 13
      Caption = 'Final QC(products) '
    end
    object Label19: TLabel
      Left = 184
      Top = 64
      Width = 53
      Height = 13
      Caption = 'Sample QC'
    end
    object Label15: TLabel
      Left = 328
      Top = 40
      Width = 72
      Height = 13
      Caption = 'Superintendent'
    end
    object DBEdit6: TDBEdit
      Left = 72
      Top = 16
      Width = 65
      Height = 21
      DataField = 'WF23'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 248
      Top = 16
      Width = 65
      Height = 21
      DataField = 'WF24'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 424
      Top = 16
      Width = 65
      Height = 21
      DataField = 'WF25'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit16: TDBEdit
      Left = 72
      Top = 64
      Width = 65
      Height = 21
      DataField = 'WF403'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit17: TDBEdit
      Left = 72
      Top = 40
      Width = 65
      Height = 21
      DataField = 'WF401'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit18: TDBEdit
      Left = 248
      Top = 64
      Width = 65
      Height = 21
      DataField = 'WF404'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit19: TDBEdit
      Left = 248
      Top = 40
      Width = 65
      Height = 21
      DataField = 'WF402'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit15: TDBEdit
      Left = 424
      Top = 40
      Width = 65
      Height = 21
      DataField = 'WF405'
      DataSource = DataSource1
      TabOrder = 7
    end
  end
  object DBEdit9: TDBEdit
    Left = 136
    Top = 264
    Width = 105
    Height = 21
    Color = 12121071
    DataField = 'WF29'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 304
    Width = 160
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object GroupBox3: TGroupBox
    Left = 240
    Top = 259
    Width = 753
    Height = 41
    Caption = 
      'Default On-Std % by Phase (based on Normal + OT1 section hr only' +
      ')'
    TabOrder = 6
    Visible = False
    object Label20: TLabel
      Left = 8
      Top = 16
      Width = 17
      Height = 13
      Caption = '1st '
    end
    object Label21: TLabel
      Left = 88
      Top = 16
      Width = 24
      Height = 13
      Caption = '2nd  '
    end
    object Label22: TLabel
      Left = 176
      Top = 16
      Width = 18
      Height = 13
      Caption = '3rd '
    end
    object Label23: TLabel
      Left = 256
      Top = 16
      Width = 18
      Height = 13
      Caption = '4th '
    end
    object Label24: TLabel
      Left = 336
      Top = 16
      Width = 21
      Height = 13
      Caption = '5th  '
    end
    object Label25: TLabel
      Left = 416
      Top = 16
      Width = 15
      Height = 13
      Caption = '6th'
    end
    object Label26: TLabel
      Left = 656
      Top = 16
      Width = 35
      Height = 13
      Caption = 'W/Ave'
    end
    object Label33: TLabel
      Left = 496
      Top = 16
      Width = 21
      Height = 13
      Caption = '7th  '
    end
    object Label34: TLabel
      Left = 576
      Top = 16
      Width = 15
      Height = 13
      Caption = '8th'
    end
    object DBEdit20: TDBEdit
      Left = 24
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LE1'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit21: TDBEdit
      Left = 112
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LE2'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit22: TDBEdit
      Left = 192
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LE3'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit23: TDBEdit
      Left = 272
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LE4'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit24: TDBEdit
      Left = 352
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LE5'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit25: TDBEdit
      Left = 432
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LE6'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit26: TDBEdit
      Left = 696
      Top = 16
      Width = 49
      Height = 21
      Color = 11267047
      DataField = 'LE'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit33: TDBEdit
      Left = 512
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LE7'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit34: TDBEdit
      Left = 592
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LE8'
      DataSource = DataSource1
      TabOrder = 8
    end
  end
  object GroupBox4: TGroupBox
    Left = 240
    Top = 259
    Width = 753
    Height = 41
    Caption = 
      'Default Section Hr by Phase/Days (based on Normal + OT1 section ' +
      'hr only)'
    TabOrder = 7
    Visible = False
    object Label27: TLabel
      Left = 8
      Top = 16
      Width = 17
      Height = 13
      Caption = '1st '
    end
    object Label28: TLabel
      Left = 88
      Top = 16
      Width = 24
      Height = 13
      Caption = '2nd  '
    end
    object Label29: TLabel
      Left = 176
      Top = 16
      Width = 18
      Height = 13
      Caption = '3rd '
    end
    object Label30: TLabel
      Left = 256
      Top = 16
      Width = 18
      Height = 13
      Caption = '4th '
    end
    object Label31: TLabel
      Left = 336
      Top = 16
      Width = 21
      Height = 13
      Caption = '5th  '
    end
    object Label32: TLabel
      Left = 416
      Top = 16
      Width = 15
      Height = 13
      Caption = '6th'
    end
    object Label35: TLabel
      Left = 496
      Top = 16
      Width = 21
      Height = 13
      Caption = '7th  '
    end
    object Label36: TLabel
      Left = 576
      Top = 16
      Width = 15
      Height = 13
      Caption = '8th'
    end
    object DBEdit27: TDBEdit
      Left = 24
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LR1'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit28: TDBEdit
      Left = 112
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LR2'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit29: TDBEdit
      Left = 192
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LR3'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit30: TDBEdit
      Left = 272
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LR4'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit31: TDBEdit
      Left = 352
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LR5'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit32: TDBEdit
      Left = 432
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LR6'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit35: TDBEdit
      Left = 512
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LR7'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit36: TDBEdit
      Left = 592
      Top = 16
      Width = 49
      Height = 21
      DataField = 'LR8'
      DataSource = DataSource1
      TabOrder = 7
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblplant'
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FTYMGR'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'WF7'
        DataType = ftFloat
      end
      item
        Name = 'WF10'
        DataType = ftFloat
      end
      item
        Name = 'WF22'
        DataType = ftFloat
      end
      item
        Name = 'WF23'
        DataType = ftFloat
      end
      item
        Name = 'WF24'
        DataType = ftFloat
      end
      item
        Name = 'WF25'
        DataType = ftFloat
      end
      item
        Name = 'WF29'
        DataType = ftFloat
      end
      item
        Name = 'WF41'
        DataType = ftFloat
      end
      item
        Name = 'WF42'
        DataType = ftFloat
      end
      item
        Name = 'WF43'
        DataType = ftFloat
      end
      item
        Name = 'WF44'
        DataType = ftFloat
      end
      item
        Name = 'WF45'
        DataType = ftFloat
      end
      item
        Name = 'WF46'
        DataType = ftFloat
      end
      item
        Name = 'WF401'
        DataType = ftFloat
      end
      item
        Name = 'WF402'
        DataType = ftFloat
      end
      item
        Name = 'WF403'
        DataType = ftFloat
      end
      item
        Name = 'WF404'
        DataType = ftFloat
      end
      item
        Name = 'WF405'
        DataType = ftFloat
      end
      item
        Name = 'WF406'
        DataType = ftFloat
      end
      item
        Name = 'LR1'
        DataType = ftFloat
      end
      item
        Name = 'LR2'
        DataType = ftFloat
      end
      item
        Name = 'LR3'
        DataType = ftFloat
      end
      item
        Name = 'LR4'
        DataType = ftFloat
      end
      item
        Name = 'LR5'
        DataType = ftFloat
      end
      item
        Name = 'LR6'
        DataType = ftFloat
      end
      item
        Name = 'LE1'
        DataType = ftFloat
      end
      item
        Name = 'LE2'
        DataType = ftFloat
      end
      item
        Name = 'LE3'
        DataType = ftFloat
      end
      item
        Name = 'LE4'
        DataType = ftFloat
      end
      item
        Name = 'LE5'
        DataType = ftFloat
      end
      item
        Name = 'LE6'
        DataType = ftFloat
      end
      item
        Name = 'LE'
        DataType = ftFloat
      end
      item
        Name = 'LR7'
        DataType = ftFloat
      end
      item
        Name = 'LR8'
        DataType = ftFloat
      end
      item
        Name = 'LE7'
        DataType = ftFloat
      end
      item
        Name = 'LE8'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 24
    object Query1TPLANT: TWideStringField
      FieldName = 'TPLANT'
      Required = True
      Size = 10
    end
    object Query1FTYMGR: TWideStringField
      FieldName = 'FTYMGR'
      Size = 15
    end
    object Query1WF7: TFloatField
      FieldName = 'WF7'
      OnChange = Query1WF7Change
    end
    object Query1WF10: TFloatField
      FieldName = 'WF10'
      OnChange = Query1WF7Change
    end
    object Query1WF22: TFloatField
      FieldName = 'WF22'
      OnChange = Query1WF7Change
    end
    object Query1WF23: TFloatField
      FieldName = 'WF23'
      OnChange = Query1WF7Change
    end
    object Query1WF24: TFloatField
      FieldName = 'WF24'
      OnChange = Query1WF7Change
    end
    object Query1WF25: TFloatField
      FieldName = 'WF25'
      OnChange = Query1WF7Change
    end
    object Query1WF29: TFloatField
      FieldName = 'WF29'
    end
    object Query1WF41: TFloatField
      FieldName = 'WF41'
      OnChange = Query1WF7Change
    end
    object Query1WF42: TFloatField
      FieldName = 'WF42'
      OnChange = Query1WF7Change
    end
    object Query1WF43: TFloatField
      FieldName = 'WF43'
      OnChange = Query1WF7Change
    end
    object Query1WF44: TFloatField
      FieldName = 'WF44'
      OnChange = Query1WF7Change
    end
    object Query1WF45: TFloatField
      FieldName = 'WF45'
      OnChange = Query1WF7Change
    end
    object Query1WF46: TFloatField
      FieldName = 'WF46'
      OnChange = Query1WF7Change
    end
    object Query1WF401: TFloatField
      FieldName = 'WF401'
      OnChange = Query1WF7Change
    end
    object Query1WF402: TFloatField
      FieldName = 'WF402'
      OnChange = Query1WF7Change
    end
    object Query1WF403: TFloatField
      FieldName = 'WF403'
      OnChange = Query1WF7Change
    end
    object Query1WF404: TFloatField
      FieldName = 'WF404'
      OnChange = Query1WF7Change
    end
    object Query1WF405: TFloatField
      FieldName = 'WF405'
      OnChange = Query1WF7Change
    end
    object Query1WF406: TFloatField
      FieldName = 'WF406'
      OnChange = Query1WF7Change
    end
    object Query1LR1: TFloatField
      FieldName = 'LR1'
      OnChange = Query1LR1Change
    end
    object Query1LR2: TFloatField
      FieldName = 'LR2'
      OnChange = Query1LR1Change
    end
    object Query1LR3: TFloatField
      FieldName = 'LR3'
      OnChange = Query1LR1Change
    end
    object Query1LR4: TFloatField
      FieldName = 'LR4'
      OnChange = Query1LR1Change
    end
    object Query1LR5: TFloatField
      FieldName = 'LR5'
      OnChange = Query1LR1Change
    end
    object Query1LR6: TFloatField
      FieldName = 'LR6'
      OnChange = Query1LR1Change
    end
    object Query1LE1: TFloatField
      FieldName = 'LE1'
      OnChange = Query1LR1Change
    end
    object Query1LE2: TFloatField
      FieldName = 'LE2'
      OnChange = Query1LR1Change
    end
    object Query1LE3: TFloatField
      FieldName = 'LE3'
      OnChange = Query1LR1Change
    end
    object Query1LE4: TFloatField
      FieldName = 'LE4'
      OnChange = Query1LR1Change
    end
    object Query1LE5: TFloatField
      FieldName = 'LE5'
      OnChange = Query1LR1Change
    end
    object Query1LE6: TFloatField
      FieldName = 'LE6'
      OnChange = Query1LR1Change
    end
    object Query1LE: TFloatField
      FieldName = 'LE'
    end
    object Query1LR7: TFloatField
      FieldName = 'LR7'
      OnChange = Query1LR1Change
    end
    object Query1LR8: TFloatField
      FieldName = 'LR8'
      OnChange = Query1LR1Change
    end
    object Query1LE7: TFloatField
      FieldName = 'LE7'
      OnChange = Query1LR1Change
    end
    object Query1LE8: TFloatField
      FieldName = 'LE8'
      OnChange = Query1LR1Change
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 56
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 120
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 152
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 184
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory Profile  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 64558
        mmTop = 8202
        mmWidth = 41540
        BandType = 0
      end
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 108479
        mmTop = 8202
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159544
        mmTop = 13229
        mmWidth = 13494
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176742
        mmTop = 13229
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159544
        mmTop = 17992
        mmWidth = 7938
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176742
        mmTop = 17992
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 123561
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 11377
        mmTop = 1588
        mmWidth = 10245
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TPLANT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 26988
        mmTop = 1588
        mmWidth = 17198
        BandType = 4
      end
      object mgr001: TppLabel
        UserName = 'mgr001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Senior Factory Manager  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 74348
        mmTop = 1588
        mmWidth = 31919
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FTYMGR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 119327
        mmTop = 1588
        mmWidth = 42069
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Supporting Staff  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 11377
        mmTop = 7673
        mmWidth = 21960
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 19579
        mmLeft = 17727
        mmTop = 17992
        mmWidth = 154517
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IE Office  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 19579
        mmWidth = 12700
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stationed '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 17727
        mmTop = 13758
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 19579
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QC Office '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 75936
        mmTop = 19579
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF10'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 93663
        mmTop = 19579
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Products technician   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 19579
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF22'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 152929
        mmTop = 19579
        mmWidth = 17198
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 19579
        mmLeft = 17727
        mmTop = 44979
        mmWidth = 154517
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IE Office  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 46567
        mmWidth = 12700
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 17727
        mmTop = 40746
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF23'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 46567
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QC Office '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 75936
        mmTop = 46567
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF24'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 93663
        mmTop = 46567
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Products technician   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 46567
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF25'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 152929
        mmTop = 46567
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Over / Shortage (+/-)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 17727
        mmTop = 67998
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF29'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '+#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 54240
        mmTop = 67998
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Costing IE  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18785
        mmTop = 25665
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF41'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 25665
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Final QC(products) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61913
        mmTop = 25665
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF42'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 93663
        mmTop = 25665
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On-Site IE  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 31750
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF43'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 31750
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sample QC  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 71967
        mmTop = 31750
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF44'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 93663
        mmTop = 31750
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Costing IE  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 52652
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF401'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 52652
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Final QC(products) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61913
        mmTop = 52652
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF402'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 93663
        mmTop = 52652
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On-Site IE  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 58738
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF403'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 58738
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sample QC  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 71967
        mmTop = 58738
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF404'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 93663
        mmTop = 58738
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Superintendent   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 25665
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF45'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 152929
        mmTop = 25665
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Superintendent   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 52652
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF405'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 152929
        mmTop = 52652
        mmWidth = 17198
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Visible = False
        mmHeight = 22490
        mmLeft = 11377
        mmTop = 74348
        mmWidth = 178594
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default On-Std % by Phase  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 76200
        mmWidth = 36248
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '1st Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 17727
        mmTop = 81756
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LE1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00%;-#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 81756
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2nd Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 62442
        mmTop = 81756
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LE2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00%;-#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 79904
        mmTop = 81756
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '3rd Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 106627
        mmTop = 81756
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LE3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00%;-#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 124090
        mmTop = 81756
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '5th Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 17727
        mmTop = 86519
        mmWidth = 12785
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LE5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00%;-#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 86519
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '6th Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 62442
        mmTop = 86519
        mmWidth = 12785
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LE6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00%;-#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 79904
        mmTop = 86519
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '7th Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 106627
        mmTop = 86519
        mmWidth = 12785
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LE7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00%;-#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 124090
        mmTop = 86519
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weight Average'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 17727
        mmTop = 91546
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00%;-#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 40746
        mmTop = 91546
        mmWidth = 17198
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Visible = False
        mmHeight = 22754
        mmLeft = 11377
        mmTop = 98425
        mmWidth = 178594
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default Section Hr by Phase/Days (based on line of '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 100277
        mmWidth = 65352
        BandType = 4
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Sect Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2879
        mmLeft = 17727
        mmTop = 116681
        mmWidth = 14309
        BandType = 4
      end
      object s01: TppLabel
        UserName = 's01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 38884
        mmTop = 116681
        mmWidth = 10329
        BandType = 4
      end
      object s02: TppLabel
        UserName = 's02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 55298
        mmTop = 116681
        mmWidth = 8213
        BandType = 4
      end
      object x09: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(from 1st phase)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 60854
        mmTop = 91546
        mmWidth = 26723
        BandType = 4
      end
      object x003: TppLabel
        UserName = 'x003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '22 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 80169
        mmTop = 100277
        mmWidth = 3969
        BandType = 4
      end
      object ppLabel136: TppLabel
        UserName = 'Label136'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'sect hr / day)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 84931
        mmTop = 100277
        mmWidth = 17992
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '1st Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 17727
        mmTop = 108479
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LR1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 108479
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2nd Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 60061
        mmTop = 108479
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '3rd Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 103452
        mmTop = 108479
        mmWidth = 11113
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '5th Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 17727
        mmTop = 112713
        mmWidth = 11113
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '6th Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 60061
        mmTop = 112713
        mmWidth = 11113
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '7th Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 103452
        mmTop = 112713
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LR2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 72761
        mmTop = 108479
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LR3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 115888
        mmTop = 108479
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LR5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 112713
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LR6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 72761
        mmTop = 112713
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LR7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 115888
        mmTop = 112713
        mmWidth = 6350
        BandType = 4
      end
      object d01: TppLabel
        UserName = 'd01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 37306
        mmTop = 108479
        mmWidth = 4763
        BandType = 4
      end
      object d02: TppLabel
        UserName = 'd02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 80698
        mmTop = 108479
        mmWidth = 4763
        BandType = 4
      end
      object d03: TppLabel
        UserName = 'd03'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 124090
        mmTop = 108479
        mmWidth = 4763
        BandType = 4
      end
      object d05: TppLabel
        UserName = 'd05'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 37306
        mmTop = 112713
        mmWidth = 4763
        BandType = 4
      end
      object d06: TppLabel
        UserName = 'd06'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 80698
        mmTop = 112713
        mmWidth = 4763
        BandType = 4
      end
      object d07: TppLabel
        UserName = 'd07'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 124090
        mmTop = 112713
        mmWidth = 4763
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Hr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 27781
        mmTop = 104511
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Days '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 38100
        mmTop = 104511
        mmWidth = 6085
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Period  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 45244
        mmTop = 104511
        mmWidth = 8467
        BandType = 4
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Hr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 70644
        mmTop = 104511
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Days '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 81492
        mmTop = 104511
        mmWidth = 6085
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Period  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 88636
        mmTop = 104511
        mmWidth = 8467
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label503'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Hr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 114036
        mmTop = 104511
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel58: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Days '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 124884
        mmTop = 104511
        mmWidth = 6085
        BandType = 4
      end
      object ppLabel128: TppLabel
        UserName = 'Label128'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Period  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 132027
        mmTop = 104511
        mmWidth = 8467
        BandType = 4
      end
      object p01: TppLabel
        UserName = 'p01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'p01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 44715
        mmTop = 108479
        mmWidth = 3969
        BandType = 4
      end
      object p05: TppLabel
        UserName = 'p05'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'p05'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 44715
        mmTop = 112713
        mmWidth = 3969
        BandType = 4
      end
      object p06: TppLabel
        UserName = 'p06'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'p06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 88106
        mmTop = 112713
        mmWidth = 3969
        BandType = 4
      end
      object p02: TppLabel
        UserName = 'p02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'p02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 88106
        mmTop = 108479
        mmWidth = 3969
        BandType = 4
      end
      object p07: TppLabel
        UserName = 'p07'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 131498
        mmTop = 112713
        mmWidth = 3969
        BandType = 4
      end
      object p03: TppLabel
        UserName = 'p03'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'p03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 131498
        mmTop = 108479
        mmWidth = 3969
        BandType = 4
      end
      object ppLabel146: TppLabel
        UserName = 'Label146'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '4th Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 145786
        mmTop = 108479
        mmWidth = 11113
        BandType = 4
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '8th Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 145786
        mmTop = 112713
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LR4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 158221
        mmTop = 108479
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LR8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 158221
        mmTop = 112713
        mmWidth = 6350
        BandType = 4
      end
      object d04: TppLabel
        UserName = 'd04'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 166423
        mmTop = 108479
        mmWidth = 3969
        BandType = 4
      end
      object d08: TppLabel
        UserName = 'd08'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 166423
        mmTop = 112713
        mmWidth = 3969
        BandType = 4
      end
      object ppLabel151: TppLabel
        UserName = 'Label151'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Hr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 156369
        mmTop = 104511
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel152: TppLabel
        UserName = 'Label152'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Days '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 167217
        mmTop = 104511
        mmWidth = 6085
        BandType = 4
      end
      object ppLabel153: TppLabel
        UserName = 'Label153'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Period  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 174361
        mmTop = 104511
        mmWidth = 8467
        BandType = 4
      end
      object p08: TppLabel
        UserName = 'p08'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 173832
        mmTop = 112713
        mmWidth = 3969
        BandType = 4
      end
      object p04: TppLabel
        UserName = 'p04'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'p03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 173832
        mmTop = 108479
        mmWidth = 3969
        BandType = 4
      end
      object ppLabel45: TppLabel
        UserName = 'Label302'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '4th Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 151607
        mmTop = 81756
        mmWidth = 12785
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LE4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00%;-#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 81756
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '8th Phase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 151607
        mmTop = 86519
        mmWidth = 12785
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LE8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00%;-#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 86519
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 36513
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 11906
        mmLeft = 2381
        mmTop = 22225
        mmWidth = 196850
        BandType = 8
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prepared by  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 6085
        mmWidth = 20638
        BandType = 8
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 33602
        mmTop = 11113
        mmWidth = 38365
        BandType = 8
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Approved by  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 112977
        mmTop = 6085
        mmWidth = 20902
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 135202
        mmTop = 11113
        mmWidth = 38365
        BandType = 8
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Lines.Strings = (
          'Remarks : -  '
          
            '  factory profile is major for those staff involve products oper' +
            'ation function, excl. sample, semi-products (cut panel and molde' +
            'd cups)'
          ''
          '')
        Transparent = True
        mmHeight = 10054
        mmLeft = 2910
        mmTop = 23019
        mmWidth = 195527
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 216
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 248
  end
end
