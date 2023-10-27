object frmaql_notepad: Tfrmaql_notepad
  Left = 192
  Top = 114
  Caption = 'AQL Notepad'
  ClientHeight = 485
  ClientWidth = 665
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
    Width = 29
    Height = 13
    Caption = 'Date: '
  end
  object DBText2: TDBText
    Left = 200
    Top = 16
    Width = 65
    Height = 17
    DataField = 'DT'
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
  object Label3: TLabel
    Left = 24
    Top = 56
    Width = 102
    Height = 13
    Caption = 'Notepad 1 (General): '
  end
  object Label6: TLabel
    Left = 24
    Top = 224
    Width = 163
    Height = 13
    Caption = 'Notepad 2 (Audit Failure Reason): '
  end
  object SpeedButton1: TSpeedButton
    Left = 624
    Top = 240
    Width = 25
    Height = 25
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
    OnClick = SpeedButton1Click
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 73
    Width = 601
    Height = 145
    DataField = 'REMARKS'
    DataSource = DataSource1
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 440
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
    Top = 440
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object DBMemo2: TDBMemo
    Left = 24
    Top = 240
    Width = 601
    Height = 185
    DataField = 'FAILREASON'
    DataSource = DataSource1
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_aql_dailyaqlnotepad'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    AfterPost = Query1AfterPost
    Left = 288
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 320
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 352
    Top = 8
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 384
    Top = 8
  end
end
