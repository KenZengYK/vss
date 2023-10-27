object frmrwosampleqty: Tfrmrwosampleqty
  Left = 0
  Top = 0
  Caption = 'Sample Qty Checking'
  ClientHeight = 417
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 57
    Height = 13
    Caption = 'Project No. '
  end
  object Label2: TLabel
    Left = 247
    Top = 24
    Width = 38
    Height = 13
    Caption = 'WO No.'
  end
  object Label3: TLabel
    Left = 424
    Top = 24
    Width = 56
    Height = 13
    Caption = 'Color Code '
  end
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 56
    Width = 681
    Height = 297
    DataSource = DataSource2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    RowDetailPanel.Color = clBtnFace
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        Title.Caption = 'Project #'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        Title.Caption = 'WO #'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        Title.Caption = 'Cust Style'
        Width = 173
      end
      item
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        Title.Caption = 'Clr Code'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        Title.Caption = 'CWO #'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'PSIZ'
        Footers = <>
        Title.Caption = 'Size'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'SAMPLE'
        Footers = <>
        Title.Caption = 'Sample Qty'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'FSAMPLE'
        Footers = <>
        Title.Caption = 'Finished Sample Qty'
        Width = 73
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 368
    Width = 113
    Height = 25
    Caption = 'Export to Excel'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 80
    Top = 24
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 291
    Top = 24
    Width = 102
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit3: TEdit
    Left = 480
    Top = 24
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit1KeyPress
  end
  object BitBtn2: TBitBtn
    Left = 136
    Top = 368
    Width = 73
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 624
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    CommandTimeout = 300
    Parameters = <>
    SQL.Strings = (
      
        'select distinct projectno,workorderno,customerstyleno,colorcode,' +
        'rwo,'
      'rtrim(custsize)+rtrim(custcup) as sizecup,sampleqty'
      
        'from [ph.rwo1]..view_woc_rwo where projectno='#39'MNSU-530'#39' and samp' +
        'leqty>0')
    Left = 584
    Top = 8
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_rwo_sample where j2_job='#39'W174869'#39
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PSIZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SAMPLE'
        DataType = ftInteger
      end
      item
        Name = 'FSAMPLE'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 56
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = Query1
    Left = 88
    Top = 128
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 120
    Top = 128
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 128
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 496
    Top = 216
  end
end
