object frmERPDebug: TfrmERPDebug
  Left = 282
  Top = 183
  Width = 715
  Height = 538
  Caption = 'ERP Debug'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 448
    Top = 136
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 336
    Top = 88
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 568
    Top = 88
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object btnDebug: TButton
    Left = 56
    Top = 48
    Width = 121
    Height = 25
    Caption = 'Show Debug Form'
    TabOrder = 0
    OnClick = btnDebugClick
  end
  object Button1: TButton
    Left = 216
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 208
    Width = 707
    Height = 296
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 40
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 136
    Top = 176
    Width = 417
    Height = 21
    TabOrder = 4
    Text = 'ErpSuccess = 0'
  end
  object Button3: TButton
    Left = 448
    Top = 80
    Width = 75
    Height = 25
    Caption = 'INP71'
    TabOrder = 5
    OnClick = Button3Click
  end
  object cxProgressBar1: TcxProgressBar
    Left = 304
    Top = 112
    TabOrder = 6
    Width = 369
  end
  object Button4: TButton
    Left = 568
    Top = 176
    Width = 75
    Height = 25
    Caption = 'inp40'
    TabOrder = 7
    OnClick = Button4Click
  end
  object cxMemo1: TcxMemo
    Left = 328
    Top = 16
    Lines.Strings = (
      'cxMemo1')
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Microsoft Sans Serif'
    Style.Font.Style = []
    TabOrder = 8
    Height = 145
    Width = 313
  end
  object cxFontNameComboBox1: TcxFontNameComboBox
    Left = 144
    Top = 16
    Properties.OnChange = cxFontNameComboBox1PropertiesChange
    TabOrder = 9
    Width = 121
  end
  object Myserver: TSocketConnection
    ServerName = 'pkserver.Myserver'
    Address = '10.2.1.30'
    Left = 128
    Top = 112
  end
  object clsschedule: TSocketConnection
    ServerName = 'schedule_svr.clsschedule'
    Address = '10.2.1.30'
    Left = 168
    Top = 112
  end
  object Phgconn: TSocketConnection
    ServerName = 'AppServer_Test.ccn_testsvr'
    Address = '10.2.1.30'
    Left = 208
    Top = 112
  end
  object ZPHLIB1: TSocketConnection
    ServerName = 'ERP_AppServer.ccn_erp'
    Address = '10.2.1.30'
    Left = 248
    Top = 112
  end
  object ADO_ZPHLIB: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=MSDASQL.1;Password=mq3hx6gc3t;Persist Security Info=Tru' +
      'e;User ID=ODBC;Data Source=zphlib;Location=1388;Initial Catalog=' +
      '1388'
    ConnectionTimeout = 0
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 248
    Top = 80
  end
  object SocketConnection1: TSocketConnection
    ServerGUID = '{EDF103F5-1429-4536-885D-83BA3A06CBF4}'
    ServerName = 'BarcodeSvr.PCBarcodeSvr'
    Address = '10.2.1.30'
    Left = 24
    Top = 88
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from INP71'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = SocketConnection1
    Left = 64
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 64
    Top = 120
  end
  object ADOQuery1: TADOQuery
    CacheSize = 1000
    Connection = ADO_ZPHLIB
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from ault4f1.inp71 where cono71='#39'P1'#39)
    Left = 288
    Top = 80
  end
  object ADOConnection1: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=teamwork;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=PHGDB_TEST;Data Source=S99VF403'
    ConnectionTimeout = 0
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 456
    Top = 16
  end
  object ADOQuery2: TADOQuery
    CacheSize = 1000
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    Left = 496
    Top = 16
  end
  object ADOConnection2: TADOConnection
    CommandTimeout = 120
    ConnectionString = 
      'Provider=IBMDA400.DataSource.1;Password=mq3hx6gc3t;Persist Secur' +
      'ity Info=True;User ID=odbc;Data Source=10.1.1.8'
    LoginPrompt = False
    Provider = 'IBMDA400.DataSource.1'
    Left = 208
    Top = 8
  end
  object ADOQuery3: TADOQuery
    CacheSize = 1000
    Connection = ADOConnection2
    CommandTimeout = 120
    Parameters = <>
    Left = 248
    Top = 8
  end
  object Query1: TQuery
    DatabaseName = 'phlib'
    SQL.Strings = (
      'select * from stylecover a,sizratio1 b,sizratio2 c '
      'where a.dt=b.dt and a.tm=b.tm and a.cono=b.cono '
      'and a.style=b.style and a.rout=b.rout '
      'and a.dt=c.dt and a.tm=c.tm and a.cono=c.cono '
      'and a.style=c.style and a.rout=c.rout ')
    Left = 192
    Top = 280
  end
  object Database1: TDatabase
    AliasName = 'ZPHLIB'
    DatabaseName = 'phlib'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME=odbc'
      'ODBC DSN=zphlib'
      'OPEN MODE=READ/WRITE'
      'BATCH COUNT=200'
      'LANGDRIVER='
      'MAX ROWS=-1'
      'SCHEMA CACHE DIR='
      'SCHEMA CACHE SIZE=8'
      'SCHEMA CACHE TIME=-1'
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SQLQRYMODE=SERVER'
      'ENABLE SCHEMA CACHE=FALSE'
      'ENABLE BCD=FALSE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'PASSWORD=mq3hx6gc3t')
    SessionName = 'Default'
    Left = 232
    Top = 280
  end
end
