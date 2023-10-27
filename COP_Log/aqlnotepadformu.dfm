object frmaqlnotepad: Tfrmaqlnotepad
  Left = 363
  Top = 335
  Caption = 'Weekly Notepad'
  ClientHeight = 261
  ClientWidth = 513
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
    Left = 24
    Top = 16
    Width = 50
    Height = 13
    Caption = 'Customer: '
  end
  object DBText1: TDBText
    Left = 80
    Top = 16
    Width = 65
    Height = 17
    DataField = 'CUST'
    DataSource = DataSource1
  end
  object Label2: TLabel
    Left = 168
    Top = 16
    Width = 28
    Height = 13
    Caption = 'Year: '
  end
  object DBText2: TDBText
    Left = 200
    Top = 16
    Width = 65
    Height = 17
    DataField = 'YR'
    DataSource = DataSource1
  end
  object Label3: TLabel
    Left = 280
    Top = 16
    Width = 35
    Height = 13
    Caption = 'Week: '
  end
  object DBText3: TDBText
    Left = 328
    Top = 16
    Width = 65
    Height = 17
    DataField = 'WK'
    DataSource = DataSource1
  end
  object Label4: TLabel
    Left = 24
    Top = 32
    Width = 41
    Height = 13
    Caption = 'Factory: '
  end
  object DBText4: TDBText
    Left = 80
    Top = 32
    Width = 65
    Height = 17
    DataField = 'TPLANT'
    DataSource = DataSource1
  end
  object Label5: TLabel
    Left = 168
    Top = 32
    Width = 22
    Height = 13
    Caption = 'Ws: '
  end
  object DBText5: TDBText
    Left = 200
    Top = 32
    Width = 65
    Height = 17
    DataField = 'WS'
    DataSource = DataSource1
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 56
    Width = 473
    Height = 145
    DataField = 'REMARKS'
    DataSource = DataSource1
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 216
    Width = 73
    Height = 25
    Caption = 'Save'
    DoubleBuffered = True
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      2222200000000002222203300007030222220330000703000222033000000303
      0222033333333303000203300000330303020307777703030302030777770303
      0302030777770003030203077777070303020000000000000302220307777707
      0302220000000000000222220307777707022222000000000002}
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 216
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_aql_marks_wk'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    AfterPost = Query1AfterPost
    Left = 208
    Top = 200
    object Query1CUST: TStringField
      FieldName = 'CUST'
      Size = 10
    end
    object Query1YR: TIntegerField
      FieldName = 'YR'
    end
    object Query1WK: TIntegerField
      FieldName = 'WK'
    end
    object Query1TPLANT: TStringField
      FieldName = 'TPLANT'
      Size = 10
    end
    object Query1HUN_CHECK: TBooleanField
      FieldName = 'HUN_CHECK'
    end
    object Query1ENDLINE: TBooleanField
      FieldName = 'ENDLINE'
    end
    object Query1REMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 1000
    end
    object Query1DT: TDateField
      FieldName = 'DT'
    end
    object Query1WS: TStringField
      FieldName = 'WS'
      Size = 10
    end
    object Query1DAILYAQL: TBooleanField
      FieldName = 'DAILYAQL'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 200
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 272
    Top = 200
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 304
    Top = 200
  end
end
