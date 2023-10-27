object PCBarcodeSvr: TPCBarcodeSvr
  OldCreateOrder = False
  OnDestroy = RemoteDataModuleDestroy
  Left = 124
  Top = 142
  Height = 356
  Width = 494
  object ADOCN_PHGDB: TADOConnection
    CommandTimeout = 0
    ConnectionTimeout = 0
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = ADOCN_PHGDBBeforeConnect
    Left = 31
    Top = 16
  end
  object ADOQuery_BC: TADOQuery
    CacheSize = 1000
    Connection = ADOCN_PHGDB
    CommandTimeout = 0
    Parameters = <>
    Left = 35
    Top = 80
  end
  object dspPHG: TDataSetProvider
    DataSet = ADOQuery_BC
    Options = [poAllowCommandText]
    Left = 32
    Top = 128
  end
  object ADOQuery_FTP: TADOQuery
    Connection = ADOCN_PHGDB
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from PB_SYSTEM')
    Left = 136
    Top = 16
  end
  object IdAntiFreeze1: TIdAntiFreeze
    IdleTimeOut = 50
    OnlyWhenIdle = False
    Left = 384
    Top = 256
  end
  object IdFTP: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    RecvBufferSize = 8192
    SendBufferSize = 4096
    OnWorkBegin = IdFTPWorkBegin
    OnWorkEnd = IdFTPWorkEnd
    Password = 'idftp@client.com'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 312
    Top = 256
  end
  object ADOCN_ZPHLIB: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=MSDASQL.1;Password=mq3hx6gc3t;Persist Security Info=Tru' +
      'e;User ID=ODBC;Data Source=zphlib'
    ConnectionTimeout = 120
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 32
    Top = 248
  end
  object dspPHG1: TDataSetProvider
    DataSet = ADOQuery_BC1
    Options = [poAllowCommandText]
    Left = 120
    Top = 128
  end
  object dspPHG2: TDataSetProvider
    DataSet = ADOQuery_BC2
    Options = [poAllowCommandText]
    Left = 208
    Top = 128
  end
  object ADOQuery_BC1: TADOQuery
    CacheSize = 1000
    Connection = ADOCN_PHGDB
    CommandTimeout = 0
    Parameters = <>
    Left = 120
    Top = 80
  end
  object ADOQuery_BC2: TADOQuery
    CacheSize = 1000
    Connection = ADOCN_PHGDB
    CommandTimeout = 0
    Parameters = <>
    Left = 208
    Top = 80
  end
  object dspPHG_Temp: TDataSetProvider
    DataSet = ADOQuery_BC_Temp
    Options = [poAllowCommandText]
    Left = 312
    Top = 128
  end
  object ADOQuery_BC_Temp: TADOQuery
    CacheSize = 1000
    Connection = ADOCN_PHGDB
    CommandTimeout = 0
    Parameters = <>
    Left = 312
    Top = 80
  end
end
