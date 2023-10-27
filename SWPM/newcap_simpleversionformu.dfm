object frmnewcap_simpleversion: Tfrmnewcap_simpleversion
  Left = 192
  Top = 114
  Caption = 'Capacity Planning - Simple Version'
  ClientHeight = 223
  ClientWidth = 345
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
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object Combobox1: TComboBox
    Left = 72
    Top = 32
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    Text = 'ALL'
    Items.Strings = (
      'SL'
      'KB'
      'FJ'
      'ALL')
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 64
    Width = 289
    Height = 89
    Caption = 'Period Range'
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 95
      Height = 13
      Caption = 'From  Year / Month '
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 85
      Height = 13
      Caption = 'To  Year / Month '
    end
    object Label4: TLabel
      Left = 192
      Top = 24
      Width = 17
      Height = 13
      Caption = '  /  '
    end
    object Label5: TLabel
      Left = 192
      Top = 56
      Width = 17
      Height = 13
      Caption = '  /  '
    end
    object sEdit1: TSpinEdit
      Left = 120
      Top = 24
      Width = 65
      Height = 22
      MaxValue = 2020
      MinValue = 2009
      TabOrder = 0
      Value = 2009
    end
    object sEdit2: TSpinEdit
      Left = 216
      Top = 24
      Width = 57
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object sEdit3: TSpinEdit
      Left = 120
      Top = 56
      Width = 65
      Height = 22
      MaxValue = 2020
      MinValue = 2009
      TabOrder = 2
      Value = 2009
    end
    object sEdit4: TSpinEdit
      Left = 216
      Top = 56
      Width = 57
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 168
    Width = 73
    Height = 25
    Caption = 'Preview'
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 168
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_sversion2'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDESC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'FTY'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'M1'
        DataType = ftInteger
      end
      item
        Name = 'M2'
        DataType = ftInteger
      end
      item
        Name = 'M3'
        DataType = ftInteger
      end
      item
        Name = 'M4'
        DataType = ftInteger
      end
      item
        Name = 'M5'
        DataType = ftInteger
      end
      item
        Name = 'M6'
        DataType = ftInteger
      end
      item
        Name = 'M7'
        DataType = ftInteger
      end
      item
        Name = 'M8'
        DataType = ftInteger
      end
      item
        Name = 'M9'
        DataType = ftInteger
      end
      item
        Name = 'M10'
        DataType = ftInteger
      end
      item
        Name = 'M11'
        DataType = ftInteger
      end
      item
        Name = 'M12'
        DataType = ftInteger
      end
      item
        Name = 'GRP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SEQ2'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 8
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 40
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oafty_tmp02'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'B01'
        DataType = ftInteger
      end
      item
        Name = 'K01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftInteger
      end
      item
        Name = 'T01'
        DataType = ftInteger
      end
      item
        Name = 'B02'
        DataType = ftInteger
      end
      item
        Name = 'K02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftInteger
      end
      item
        Name = 'T02'
        DataType = ftInteger
      end
      item
        Name = 'B03'
        DataType = ftInteger
      end
      item
        Name = 'K03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftInteger
      end
      item
        Name = 'T03'
        DataType = ftInteger
      end
      item
        Name = 'B04'
        DataType = ftInteger
      end
      item
        Name = 'K04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftInteger
      end
      item
        Name = 'T04'
        DataType = ftInteger
      end
      item
        Name = 'B05'
        DataType = ftInteger
      end
      item
        Name = 'K05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftInteger
      end
      item
        Name = 'T05'
        DataType = ftInteger
      end
      item
        Name = 'B06'
        DataType = ftInteger
      end
      item
        Name = 'K06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftInteger
      end
      item
        Name = 'T06'
        DataType = ftInteger
      end
      item
        Name = 'B07'
        DataType = ftInteger
      end
      item
        Name = 'K07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftInteger
      end
      item
        Name = 'T07'
        DataType = ftInteger
      end
      item
        Name = 'B08'
        DataType = ftInteger
      end
      item
        Name = 'K08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftInteger
      end
      item
        Name = 'T08'
        DataType = ftInteger
      end
      item
        Name = 'B09'
        DataType = ftInteger
      end
      item
        Name = 'K09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftInteger
      end
      item
        Name = 'T09'
        DataType = ftInteger
      end
      item
        Name = 'B10'
        DataType = ftInteger
      end
      item
        Name = 'K10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftInteger
      end
      item
        Name = 'T10'
        DataType = ftInteger
      end
      item
        Name = 'B11'
        DataType = ftInteger
      end
      item
        Name = 'K11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftInteger
      end
      item
        Name = 'T11'
        DataType = ftInteger
      end
      item
        Name = 'B12'
        DataType = ftInteger
      end
      item
        Name = 'K12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftInteger
      end
      item
        Name = 'T12'
        DataType = ftInteger
      end
      item
        Name = 'B13'
        DataType = ftInteger
      end
      item
        Name = 'K13'
        DataType = ftInteger
      end
      item
        Name = 'U13'
        DataType = ftInteger
      end
      item
        Name = 'T13'
        DataType = ftInteger
      end
      item
        Name = 'B14'
        DataType = ftInteger
      end
      item
        Name = 'K14'
        DataType = ftInteger
      end
      item
        Name = 'U14'
        DataType = ftInteger
      end
      item
        Name = 'T14'
        DataType = ftInteger
      end
      item
        Name = 'B15'
        DataType = ftInteger
      end
      item
        Name = 'K15'
        DataType = ftInteger
      end
      item
        Name = 'U15'
        DataType = ftInteger
      end
      item
        Name = 'T15'
        DataType = ftInteger
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TB'
        DataType = ftInteger
      end
      item
        Name = 'TK'
        DataType = ftInteger
      end
      item
        Name = 'TU'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oafty_tmp02'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'B01'
        DataType = ftInteger
      end
      item
        Name = 'K01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftInteger
      end
      item
        Name = 'T01'
        DataType = ftInteger
      end
      item
        Name = 'B02'
        DataType = ftInteger
      end
      item
        Name = 'K02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftInteger
      end
      item
        Name = 'T02'
        DataType = ftInteger
      end
      item
        Name = 'B03'
        DataType = ftInteger
      end
      item
        Name = 'K03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftInteger
      end
      item
        Name = 'T03'
        DataType = ftInteger
      end
      item
        Name = 'B04'
        DataType = ftInteger
      end
      item
        Name = 'K04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftInteger
      end
      item
        Name = 'T04'
        DataType = ftInteger
      end
      item
        Name = 'B05'
        DataType = ftInteger
      end
      item
        Name = 'K05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftInteger
      end
      item
        Name = 'T05'
        DataType = ftInteger
      end
      item
        Name = 'B06'
        DataType = ftInteger
      end
      item
        Name = 'K06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftInteger
      end
      item
        Name = 'T06'
        DataType = ftInteger
      end
      item
        Name = 'B07'
        DataType = ftInteger
      end
      item
        Name = 'K07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftInteger
      end
      item
        Name = 'T07'
        DataType = ftInteger
      end
      item
        Name = 'B08'
        DataType = ftInteger
      end
      item
        Name = 'K08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftInteger
      end
      item
        Name = 'T08'
        DataType = ftInteger
      end
      item
        Name = 'B09'
        DataType = ftInteger
      end
      item
        Name = 'K09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftInteger
      end
      item
        Name = 'T09'
        DataType = ftInteger
      end
      item
        Name = 'B10'
        DataType = ftInteger
      end
      item
        Name = 'K10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftInteger
      end
      item
        Name = 'T10'
        DataType = ftInteger
      end
      item
        Name = 'B11'
        DataType = ftInteger
      end
      item
        Name = 'K11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftInteger
      end
      item
        Name = 'T11'
        DataType = ftInteger
      end
      item
        Name = 'B12'
        DataType = ftInteger
      end
      item
        Name = 'K12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftInteger
      end
      item
        Name = 'T12'
        DataType = ftInteger
      end
      item
        Name = 'B13'
        DataType = ftInteger
      end
      item
        Name = 'K13'
        DataType = ftInteger
      end
      item
        Name = 'U13'
        DataType = ftInteger
      end
      item
        Name = 'T13'
        DataType = ftInteger
      end
      item
        Name = 'B14'
        DataType = ftInteger
      end
      item
        Name = 'K14'
        DataType = ftInteger
      end
      item
        Name = 'U14'
        DataType = ftInteger
      end
      item
        Name = 'T14'
        DataType = ftInteger
      end
      item
        Name = 'B15'
        DataType = ftInteger
      end
      item
        Name = 'K15'
        DataType = ftInteger
      end
      item
        Name = 'U15'
        DataType = ftInteger
      end
      item
        Name = 'T15'
        DataType = ftInteger
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TB'
        DataType = ftInteger
      end
      item
        Name = 'TK'
        DataType = ftInteger
      end
      item
        Name = 'TU'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 136
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oafty_tmp02'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'B01'
        DataType = ftInteger
      end
      item
        Name = 'K01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftInteger
      end
      item
        Name = 'T01'
        DataType = ftInteger
      end
      item
        Name = 'B02'
        DataType = ftInteger
      end
      item
        Name = 'K02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftInteger
      end
      item
        Name = 'T02'
        DataType = ftInteger
      end
      item
        Name = 'B03'
        DataType = ftInteger
      end
      item
        Name = 'K03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftInteger
      end
      item
        Name = 'T03'
        DataType = ftInteger
      end
      item
        Name = 'B04'
        DataType = ftInteger
      end
      item
        Name = 'K04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftInteger
      end
      item
        Name = 'T04'
        DataType = ftInteger
      end
      item
        Name = 'B05'
        DataType = ftInteger
      end
      item
        Name = 'K05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftInteger
      end
      item
        Name = 'T05'
        DataType = ftInteger
      end
      item
        Name = 'B06'
        DataType = ftInteger
      end
      item
        Name = 'K06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftInteger
      end
      item
        Name = 'T06'
        DataType = ftInteger
      end
      item
        Name = 'B07'
        DataType = ftInteger
      end
      item
        Name = 'K07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftInteger
      end
      item
        Name = 'T07'
        DataType = ftInteger
      end
      item
        Name = 'B08'
        DataType = ftInteger
      end
      item
        Name = 'K08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftInteger
      end
      item
        Name = 'T08'
        DataType = ftInteger
      end
      item
        Name = 'B09'
        DataType = ftInteger
      end
      item
        Name = 'K09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftInteger
      end
      item
        Name = 'T09'
        DataType = ftInteger
      end
      item
        Name = 'B10'
        DataType = ftInteger
      end
      item
        Name = 'K10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftInteger
      end
      item
        Name = 'T10'
        DataType = ftInteger
      end
      item
        Name = 'B11'
        DataType = ftInteger
      end
      item
        Name = 'K11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftInteger
      end
      item
        Name = 'T11'
        DataType = ftInteger
      end
      item
        Name = 'B12'
        DataType = ftInteger
      end
      item
        Name = 'K12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftInteger
      end
      item
        Name = 'T12'
        DataType = ftInteger
      end
      item
        Name = 'B13'
        DataType = ftInteger
      end
      item
        Name = 'K13'
        DataType = ftInteger
      end
      item
        Name = 'U13'
        DataType = ftInteger
      end
      item
        Name = 'T13'
        DataType = ftInteger
      end
      item
        Name = 'B14'
        DataType = ftInteger
      end
      item
        Name = 'K14'
        DataType = ftInteger
      end
      item
        Name = 'U14'
        DataType = ftInteger
      end
      item
        Name = 'T14'
        DataType = ftInteger
      end
      item
        Name = 'B15'
        DataType = ftInteger
      end
      item
        Name = 'K15'
        DataType = ftInteger
      end
      item
        Name = 'U15'
        DataType = ftInteger
      end
      item
        Name = 'T15'
        DataType = ftInteger
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TB'
        DataType = ftInteger
      end
      item
        Name = 'TK'
        DataType = ftInteger
      end
      item
        Name = 'TU'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 168
  end
  object Query6: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oafty_tmp02'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'B01'
        DataType = ftInteger
      end
      item
        Name = 'K01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftInteger
      end
      item
        Name = 'T01'
        DataType = ftInteger
      end
      item
        Name = 'B02'
        DataType = ftInteger
      end
      item
        Name = 'K02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftInteger
      end
      item
        Name = 'T02'
        DataType = ftInteger
      end
      item
        Name = 'B03'
        DataType = ftInteger
      end
      item
        Name = 'K03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftInteger
      end
      item
        Name = 'T03'
        DataType = ftInteger
      end
      item
        Name = 'B04'
        DataType = ftInteger
      end
      item
        Name = 'K04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftInteger
      end
      item
        Name = 'T04'
        DataType = ftInteger
      end
      item
        Name = 'B05'
        DataType = ftInteger
      end
      item
        Name = 'K05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftInteger
      end
      item
        Name = 'T05'
        DataType = ftInteger
      end
      item
        Name = 'B06'
        DataType = ftInteger
      end
      item
        Name = 'K06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftInteger
      end
      item
        Name = 'T06'
        DataType = ftInteger
      end
      item
        Name = 'B07'
        DataType = ftInteger
      end
      item
        Name = 'K07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftInteger
      end
      item
        Name = 'T07'
        DataType = ftInteger
      end
      item
        Name = 'B08'
        DataType = ftInteger
      end
      item
        Name = 'K08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftInteger
      end
      item
        Name = 'T08'
        DataType = ftInteger
      end
      item
        Name = 'B09'
        DataType = ftInteger
      end
      item
        Name = 'K09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftInteger
      end
      item
        Name = 'T09'
        DataType = ftInteger
      end
      item
        Name = 'B10'
        DataType = ftInteger
      end
      item
        Name = 'K10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftInteger
      end
      item
        Name = 'T10'
        DataType = ftInteger
      end
      item
        Name = 'B11'
        DataType = ftInteger
      end
      item
        Name = 'K11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftInteger
      end
      item
        Name = 'T11'
        DataType = ftInteger
      end
      item
        Name = 'B12'
        DataType = ftInteger
      end
      item
        Name = 'K12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftInteger
      end
      item
        Name = 'T12'
        DataType = ftInteger
      end
      item
        Name = 'B13'
        DataType = ftInteger
      end
      item
        Name = 'K13'
        DataType = ftInteger
      end
      item
        Name = 'U13'
        DataType = ftInteger
      end
      item
        Name = 'T13'
        DataType = ftInteger
      end
      item
        Name = 'B14'
        DataType = ftInteger
      end
      item
        Name = 'K14'
        DataType = ftInteger
      end
      item
        Name = 'U14'
        DataType = ftInteger
      end
      item
        Name = 'T14'
        DataType = ftInteger
      end
      item
        Name = 'B15'
        DataType = ftInteger
      end
      item
        Name = 'K15'
        DataType = ftInteger
      end
      item
        Name = 'U15'
        DataType = ftInteger
      end
      item
        Name = 'T15'
        DataType = ftInteger
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TB'
        DataType = ftInteger
      end
      item
        Name = 'TK'
        DataType = ftInteger
      end
      item
        Name = 'TU'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 200
  end
  object Query1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'B01'
        DataType = ftInteger
      end
      item
        Name = 'K01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftInteger
      end
      item
        Name = 'T01'
        DataType = ftInteger
      end
      item
        Name = 'B02'
        DataType = ftInteger
      end
      item
        Name = 'K02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftInteger
      end
      item
        Name = 'T02'
        DataType = ftInteger
      end
      item
        Name = 'B03'
        DataType = ftInteger
      end
      item
        Name = 'K03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftInteger
      end
      item
        Name = 'T03'
        DataType = ftInteger
      end
      item
        Name = 'B04'
        DataType = ftInteger
      end
      item
        Name = 'K04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftInteger
      end
      item
        Name = 'T04'
        DataType = ftInteger
      end
      item
        Name = 'B05'
        DataType = ftInteger
      end
      item
        Name = 'K05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftInteger
      end
      item
        Name = 'T05'
        DataType = ftInteger
      end
      item
        Name = 'B06'
        DataType = ftInteger
      end
      item
        Name = 'K06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftInteger
      end
      item
        Name = 'T06'
        DataType = ftInteger
      end
      item
        Name = 'B07'
        DataType = ftInteger
      end
      item
        Name = 'K07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftInteger
      end
      item
        Name = 'T07'
        DataType = ftInteger
      end
      item
        Name = 'B08'
        DataType = ftInteger
      end
      item
        Name = 'K08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftInteger
      end
      item
        Name = 'T08'
        DataType = ftInteger
      end
      item
        Name = 'B09'
        DataType = ftInteger
      end
      item
        Name = 'K09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftInteger
      end
      item
        Name = 'T09'
        DataType = ftInteger
      end
      item
        Name = 'B10'
        DataType = ftInteger
      end
      item
        Name = 'K10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftInteger
      end
      item
        Name = 'T10'
        DataType = ftInteger
      end
      item
        Name = 'B11'
        DataType = ftInteger
      end
      item
        Name = 'K11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftInteger
      end
      item
        Name = 'T11'
        DataType = ftInteger
      end
      item
        Name = 'B12'
        DataType = ftInteger
      end
      item
        Name = 'K12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftInteger
      end
      item
        Name = 'T12'
        DataType = ftInteger
      end
      item
        Name = 'B13'
        DataType = ftInteger
      end
      item
        Name = 'K13'
        DataType = ftInteger
      end
      item
        Name = 'U13'
        DataType = ftInteger
      end
      item
        Name = 'T13'
        DataType = ftInteger
      end
      item
        Name = 'B14'
        DataType = ftInteger
      end
      item
        Name = 'K14'
        DataType = ftInteger
      end
      item
        Name = 'U14'
        DataType = ftInteger
      end
      item
        Name = 'T14'
        DataType = ftInteger
      end
      item
        Name = 'B15'
        DataType = ftInteger
      end
      item
        Name = 'K15'
        DataType = ftInteger
      end
      item
        Name = 'U15'
        DataType = ftInteger
      end
      item
        Name = 'T15'
        DataType = ftInteger
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TB'
        DataType = ftInteger
      end
      item
        Name = 'TK'
        DataType = ftInteger
      end
      item
        Name = 'TU'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 72
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline1'
    Left = 232
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
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
    Left = 264
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 13092603
        mmHeight = 10319
        mmLeft = 1588
        mmTop = 15875
        mmWidth = 261938
        BandType = 0
      end
      object m001: TppLabel
        UserName = 'm001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 77788
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m012: TppLabel
        UserName = 'm012'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 249503
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m002: TppLabel
        UserName = 'm002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 93398
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m003: TppLabel
        UserName = 'm003'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 109009
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m004: TppLabel
        UserName = 'm004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 124619
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m005: TppLabel
        UserName = 'm005'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 140229
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m006: TppLabel
        UserName = 'm006'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 155840
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m007: TppLabel
        UserName = 'm007'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 171450
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m008: TppLabel
        UserName = 'm008'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 187061
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m009: TppLabel
        UserName = 'm009'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 202671
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m010: TppLabel
        UserName = 'm010'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 218282
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object m011: TppLabel
        UserName = 'm011'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 233892
        mmTop = 21960
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory Capacity vs Sales Projection including aT3 adjustment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 45773
        mmTop = 2646
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 218337
        mmTop = 10848
        mmWidth = 13039
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        AutoSize = False
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
        mmHeight = 2910
        mmLeft = 233098
        mmTop = 10848
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 252148
        mmTop = 10848
        mmWidth = 7070
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 260880
        mmTop = 10848
        mmWidth = 14817
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 1588
        mmTop = 20902
        mmWidth = 261673
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 74083
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FINANCIAL QUARTER  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 15346
        mmTop = 17198
        mmWidth = 44979
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MONTH  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 15346
        mmTop = 22490
        mmWidth = 44979
        BandType = 0
      end
      object yq1: TppLabel
        UserName = 'yq1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 76994
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq2: TppLabel
        UserName = 'yq2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 92604
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq3: TppLabel
        UserName = 'yq3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 108215
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq4: TppLabel
        UserName = 'yq4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 123825
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq5: TppLabel
        UserName = 'yq5'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 139436
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq6: TppLabel
        UserName = 'yq6'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 155046
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq7: TppLabel
        UserName = 'yq7'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 170657
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq8: TppLabel
        UserName = 'yq8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 186267
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq9: TppLabel
        UserName = 'yq9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 201877
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq10: TppLabel
        UserName = 'm0101'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 217488
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq11: TppLabel
        UserName = 'yq11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 233098
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object yq12: TppLabel
        UserName = 'yq12'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2009-11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 248709
        mmTop = 17198
        mmWidth = 13758
        BandType = 0
      end
      object pl1: TppLine
        UserName = 'pl1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 91546
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object pl2: TppLine
        UserName = 'pl2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 107156
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object pl3: TppLine
        UserName = 'pl3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 122767
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object pl4: TppLine
        UserName = 'pl4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 138377
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object pl5: TppLine
        UserName = 'pl5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 153988
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object pl6: TppLine
        UserName = 'pl6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 169598
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object pl7: TppLine
        UserName = 'pl7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 185209
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object pl8: TppLine
        UserName = 'pl8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 200819
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object pl9: TppLine
        UserName = 'pl9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 216430
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object pl10: TppLine
        UserName = 'pl10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 232040
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
      object pl11: TppLine
        UserName = 'pl11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 247650
        mmTop = 15875
        mmWidth = 2117
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5027
        mmLeft = 1588
        mmTop = 0
        mmWidth = 261938
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SDESC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 2117
        mmTop = 529
        mmWidth = 55298
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 58473
        mmTop = 529
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 81598
        mmTop = 529
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 97208
        mmTop = 529
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 112819
        mmTop = 529
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 128429
        mmTop = 529
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 144040
        mmTop = 529
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 159650
        mmTop = 529
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 173906
        mmTop = 529
        mmWidth = 8128
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M8'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 190871
        mmTop = 529
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M9'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 211900
        mmTop = 529
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M10'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 227510
        mmTop = 529
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M11'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 243121
        mmTop = 529
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M12'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 258731
        mmTop = 529
        mmWidth = 1355
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 57679
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 74083
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 5821
          mmLeft = 1588
          mmTop = 0
          mmWidth = 261938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sales Projection All Customers'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 24606
          mmTop = 1058
          mmWidth = 215107
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 2117
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'GRP'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand2BeforePrint
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          mmHeight = 3704
          mmLeft = 1588
          mmTop = 0
          mmWidth = 261938
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
