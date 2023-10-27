object DMfcjh: TDMfcjh
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 80
  Top = 103
  Height = 486
  Width = 687
  object Query1: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 224
    Top = 8
  end
  object Query2: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 252
    Top = 8
  end
  object Query3: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 280
    Top = 8
  end
  object Query4: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 308
    Top = 8
  end
  object Query5: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 336
    Top = 8
  end
  object fcjh7: TTable
    AfterPost = fcjh7AfterPost
    DatabaseName = 'Cutplan'
    TableName = 'fcjh7.DB'
    Left = 8
    Top = 8
  end
  object dsfcjh7: TDataSource
    DataSet = fcjh7
    Left = 36
    Top = 8
  end
  object dsfcjy1: TDataSource
    DataSet = fcjy1
    Left = 36
    Top = 64
  end
  object dsfcjy2: TDataSource
    DataSet = fcjy2
    Left = 92
    Top = 64
  end
  object dslbjh1: TDataSource
    DataSet = lbjh1
    Left = 172
    Top = 64
  end
  object dslbjh2: TDataSource
    DataSet = lbjh2
    Left = 228
    Top = 64
  end
  object dslbjh3: TDataSource
    DataSet = lbjh3
    Left = 284
    Top = 64
  end
  object tablefilter: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 336
    Top = 64
  end
  object tbllbtz: TTable
    AfterPost = tbllbtzAfterPost
    DatabaseName = 'cutplan'
    TableName = 'lbtz.db'
    Left = 336
    Top = 120
  end
  object aitem1: TTable
    AfterPost = aitem1AfterPost
    DatabaseName = 'cutplan'
    TableName = 'Aitem1.DB'
    Left = 88
    Top = 8
  end
  object dsaitem1: TDataSource
    DataSet = aitem1
    Left = 116
    Top = 8
  end
  object aitem2: TTable
    AfterPost = aitem2AfterPost
    DatabaseName = 'cutplan'
    IndexFieldNames = 'Stylno'
    MasterFields = 'Stylno'
    MasterSource = dsaitem1
    TableName = 'Aitem2.DB'
    Left = 144
    Top = 8
    object aitem2Stylno: TStringField
      FieldName = 'Stylno'
      Size = 15
    end
    object aitem2Aitem: TStringField
      FieldName = 'Aitem'
      Size = 15
    end
    object aitem2Uwidth: TFloatField
      FieldName = 'Uwidth'
    end
    object aitem2Uom: TStringField
      FieldName = 'Uom'
      Size = 5
    end
    object aitem2Q1: TFloatField
      FieldName = 'Q1'
      OnChange = aitem2Q1Change
    end
    object aitem2Q2: TFloatField
      FieldName = 'Q2'
      OnChange = aitem2Q1Change
    end
    object aitem2Q3: TFloatField
      FieldName = 'Q3'
    end
    object aitem2Q4: TFloatField
      FieldName = 'Q4'
    end
    object aitem2Mem: TStringField
      FieldName = 'Mem'
      Size = 80
    end
  end
  object dsaitem2: TDataSource
    DataSet = aitem2
    Left = 172
    Top = 8
  end
  object fcjy1: TQuery
    AfterPost = fcjy1AfterPost
    DatabaseName = 'cutplan'
    OnFilterRecord = fcjy1FilterRecord
    RequestLive = True
    SQL.Strings = (
      'select * from fcjy1')
    Left = 8
    Top = 64
    object fcjy1Prjno: TStringField
      FieldName = 'Prjno'
      Origin = 'CUTPLAN."fcjy1.DB".Prjno'
    end
    object fcjy1Seq: TIntegerField
      FieldName = 'Seq'
      Origin = 'CUTPLAN."fcjy1.DB".Seq'
    end
    object fcjy1Wl: TStringField
      FieldName = 'Wl'
      Origin = 'CUTPLAN."fcjy1.DB".Wl'
    end
    object fcjy1Xh: TIntegerField
      FieldName = 'Xh'
      Origin = 'CUTPLAN."fcjy1.DB".Xh'
    end
    object fcjy1Lbzs: TIntegerField
      FieldName = 'Lbzs'
      Origin = 'CUTPLAN."fcjy1.DB".Lbzs'
    end
    object fcjy1Scys: TIntegerField
      FieldName = 'Scys'
      Origin = 'CUTPLAN."fcjy1.DB".Scys'
    end
    object fcjy1Zsj: TIntegerField
      FieldName = 'Zsj'
      Origin = 'CUTPLAN."fcjy1.DB".Zsj'
    end
    object fcjy1Zys: TIntegerField
      FieldName = 'Zys'
      Origin = 'CUTPLAN."fcjy1.DB".Zys'
    end
    object fcjy1No: TIntegerField
      FieldName = 'No'
      Origin = 'CUTPLAN."fcjy1.DB".No'
    end
    object fcjy1Zjc: TIntegerField
      FieldName = 'Zjc'
      Origin = 'CUTPLAN."fcjy1.DB".Zjc'
    end
    object fcjy1Jyyl: TFloatField
      FieldName = 'Jyyl'
      Origin = 'CUTPLAN."fcjy1.DB".Jyyl'
    end
    object fcjy1Zyl: TFloatField
      FieldName = 'Zyl'
      Origin = 'CUTPLAN."fcjy1.DB".Zyl'
    end
  end
  object dscgjh1: TDataSource
    DataSet = cgjh1
    Left = 36
    Top = 120
  end
  object dscgjh2: TDataSource
    DataSet = cgjh2
    Left = 92
    Top = 120
  end
  object cgylfx: TTable
    AfterPost = cgylfxAfterPost
    BeforeDelete = cgylfxBeforeDelete
    DatabaseName = 'cutplan'
    IndexFieldNames = 'Prjno'
    MasterFields = 'Prjno'
    MasterSource = dscgjh1
    TableName = 'cgylfx.db'
    Left = 120
    Top = 120
    object cgylfxPrjno: TStringField
      FieldName = 'Prjno'
    end
    object cgylfxWl: TStringField
      FieldName = 'Wl'
    end
    object cgylfxGch: TStringField
      FieldName = 'Gch'
      Size = 60
    end
    object cgylfxZdh: TStringField
      FieldName = 'Zdh'
      Size = 60
    end
    object cgylfxKh: TStringField
      FieldName = 'Kh'
      Size = 160
    end
    object cgylfxSh: TStringField
      FieldName = 'Sh'
      Size = 10
    end
    object cgylfxYsfd: TFloatField
      FieldName = 'Ysfd'
      DisplayFormat = '#0'
    end
    object cgylfxSyfd: TFloatField
      FieldName = 'Syfd'
      DisplayFormat = '#0'
    end
    object cgylfxZds: TIntegerField
      FieldName = 'Zds'
    end
    object cgylfxYcs: TIntegerField
      FieldName = 'Ycs'
    end
    object cgylfxDc: TFloatField
      FieldName = 'Dc'
      DisplayFormat = '#0.00'
    end
    object cgylfxCacyl: TFloatField
      FieldName = 'Cacyl'
      DisplayFormat = '#0.0000'
    end
    object cgylfxJhyl: TFloatField
      FieldName = 'Jhyl'
      DisplayFormat = '#0.0000'
    end
    object cgylfxYlxc: TFloatField
      FieldName = 'Ylxc'
      DisplayFormat = '#0.0000'
    end
    object cgylfxYbl: TFloatField
      FieldName = 'Ybl'
      OnChange = cgylfxYblChange
      DisplayFormat = '#0.00'
    end
    object cgylfxHsl: TFloatField
      FieldName = 'Hsl'
      OnChange = cgylfxYblChange
      DisplayFormat = '#0.00'
    end
    object cgylfxScsh: TFloatField
      FieldName = 'Scsh'
      OnChange = cgylfxYblChange
      DisplayFormat = '#0.00'
    end
    object cgylfxCutyl: TFloatField
      FieldName = 'Cutyl'
      DisplayFormat = '#0.0000'
    end
  end
  object dscgylfx: TDataSource
    DataSet = cgylfx
    Left = 148
    Top = 120
  end
  object cgslfx: TTable
    AfterPost = cgslfxAfterPost
    DatabaseName = 'cutplan'
    IndexFieldNames = 'Prjno'
    MasterFields = 'Prjno'
    MasterSource = dscgjh1
    TableName = 'cgslfx.db'
    Left = 176
    Top = 120
    object cgslfxPrjno: TStringField
      FieldName = 'Prjno'
    end
    object cgslfxKh: TStringField
      FieldName = 'Kh'
    end
    object cgslfxId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object cgslfxZdh: TStringField
      FieldName = 'Zdh'
      Size = 50
    end
    object cgslfxGch: TStringField
      FieldName = 'Gch'
      Size = 60
    end
    object cgslfxSh: TStringField
      FieldName = 'Sh'
      Size = 10
    end
    object cgslfxCm: TStringField
      FieldName = 'Cm'
      Size = 6
    end
    object cgslfxZds: TIntegerField
      FieldName = 'Zds'
    end
    object cgslfxYcs: TIntegerField
      FieldName = 'Ycs'
    end
    object cgslfxDc: TIntegerField
      FieldName = 'Dc'
    end
    object cgslfxDcp: TFloatField
      FieldName = 'Dcp'
      DisplayFormat = '#0.00'
    end
  end
  object dscgslfx: TDataSource
    DataSet = cgslfx
    Left = 204
    Top = 120
  end
  object cgjh3: TTable
    BeforeEdit = cgjh3BeforeEdit
    AfterPost = cgjh3AfterPost
    BeforeDelete = cgjh3BeforeDelete
    DatabaseName = 'cutplan'
    IndexFieldNames = 'Prjno'
    MasterFields = 'Prjno'
    MasterSource = dscgjh1
    TableName = 'cgjh3.DB'
    Left = 232
    Top = 120
    object cgjh3Prjno: TStringField
      FieldName = 'Prjno'
    end
    object cgjh3Wl: TStringField
      FieldName = 'Wl'
    end
    object cgjh3Idno: TStringField
      FieldName = 'Idno'
      Size = 12
    end
    object cgjh3Oaps: TStringField
      FieldName = 'Oaps'
      Size = 200
    end
    object cgjh3Oacm: TStringField
      FieldName = 'Oacm'
      Size = 15
    end
    object cgjh3Rq: TDateField
      FieldName = 'Rq'
    end
    object cgjh3Tm: TTimeField
      FieldName = 'Tm'
    end
    object cgjh3Qr: TBooleanField
      FieldName = 'Qr'
      OnChange = cgjh3QrChange
    end
    object cgjh3Cs: TIntegerField
      FieldName = 'Cs'
    end
  end
  object dscgjh3: TDataSource
    DataSet = cgjh3
    Left = 260
    Top = 120
  end
  object dscgbg1: TDataSource
    DataSet = cgbg1
    Left = 36
    Top = 176
  end
  object dscgbg2: TDataSource
    DataSet = cgbg2
    Left = 92
    Top = 176
  end
  object cgbgylfx: TTable
    AfterPost = cgbgylfxAfterPost
    DatabaseName = 'cutplan'
    IndexFieldNames = 'Prjno'
    MasterFields = 'Prjno'
    MasterSource = dscgbg1
    TableName = 'cgbgylfx.db'
    Left = 120
    Top = 176
    object cgbgylfxPrjno: TStringField
      FieldName = 'Prjno'
    end
    object cgbgylfxWl: TStringField
      FieldName = 'Wl'
    end
    object cgbgylfxGch: TStringField
      FieldName = 'Gch'
      Size = 60
    end
    object cgbgylfxZdh: TStringField
      FieldName = 'Zdh'
      Size = 60
    end
    object cgbgylfxKh: TStringField
      FieldName = 'Kh'
      Size = 160
    end
    object cgbgylfxSh: TStringField
      FieldName = 'Sh'
      Size = 10
    end
    object cgbgylfxYsfd: TFloatField
      FieldName = 'Ysfd'
      DisplayFormat = '#0'
    end
    object cgbgylfxSyfd: TFloatField
      FieldName = 'Syfd'
      DisplayFormat = '#0'
    end
    object cgbgylfxZds: TIntegerField
      FieldName = 'Zds'
    end
    object cgbgylfxYcs: TIntegerField
      FieldName = 'Ycs'
    end
    object cgbgylfxDc: TFloatField
      FieldName = 'Dc'
      DisplayFormat = '#0.00'
    end
    object cgbgylfxCacyl: TFloatField
      FieldName = 'Cacyl'
      DisplayFormat = '#0.0000'
    end
    object cgbgylfxJhyl: TFloatField
      FieldName = 'Jhyl'
      DisplayFormat = '#0.0000'
    end
    object cgbgylfxYlxc: TFloatField
      FieldName = 'Ylxc'
      DisplayFormat = '#0.0000'
    end
    object cgbgylfxYbl: TFloatField
      FieldName = 'Ybl'
      OnChange = cgbgylfxYblChange
      DisplayFormat = '#0.00'
    end
    object cgbgylfxHsl: TFloatField
      FieldName = 'Hsl'
      OnChange = cgbgylfxYblChange
      DisplayFormat = '#0.00'
    end
    object cgbgylfxScsh: TFloatField
      FieldName = 'Scsh'
      OnChange = cgbgylfxYblChange
      DisplayFormat = '#0.00'
    end
    object cgbgylfxCutyl: TFloatField
      FieldName = 'Cutyl'
      DisplayFormat = '#0.0000'
    end
    object cgbgylfxSjyl: TFloatField
      FieldName = 'Sjyl'
      DisplayFormat = '#0.0000'
    end
    object cgbgylfxYfsl: TFloatField
      FieldName = 'Yfsl'
    end
  end
  object dscgbgylfx: TDataSource
    DataSet = cgbgylfx
    Left = 148
    Top = 176
  end
  object cgbgslfx: TTable
    AfterPost = cgbgslfxAfterPost
    BeforeDelete = cgbgslfxBeforeDelete
    DatabaseName = 'cutplan'
    IndexFieldNames = 'Prjno'
    MasterFields = 'Prjno'
    MasterSource = dscgbg1
    TableName = 'cgbgslfx.db'
    Left = 176
    Top = 176
    object cgbgslfxPrjno: TStringField
      FieldName = 'Prjno'
    end
    object cgbgslfxKh: TStringField
      FieldName = 'Kh'
    end
    object cgbgslfxGch: TStringField
      FieldName = 'Gch'
    end
    object cgbgslfxZdh: TStringField
      FieldName = 'Zdh'
    end
    object cgbgslfxSh: TStringField
      FieldName = 'Sh'
      Size = 5
    end
    object cgbgslfxId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object cgbgslfxCm: TStringField
      FieldName = 'Cm'
      Size = 6
    end
    object cgbgslfxZds: TIntegerField
      FieldName = 'Zds'
    end
    object cgbgslfxYcs: TIntegerField
      FieldName = 'Ycs'
    end
    object cgbgslfxDc: TIntegerField
      FieldName = 'Dc'
    end
    object cgbgslfxDcp: TFloatField
      FieldName = 'Dcp'
      DisplayFormat = '#0.00'
    end
  end
  object dscgbgslfx: TDataSource
    DataSet = cgbgslfx
    Left = 204
    Top = 176
  end
  object cgbg3: TTable
    BeforeEdit = cgbg3BeforeEdit
    AfterPost = cgbg3AfterPost
    BeforeDelete = cgbg3BeforeDelete
    DatabaseName = 'cutplan'
    IndexFieldNames = 'Prjno'
    MasterFields = 'Prjno'
    MasterSource = dscgbg1
    TableName = 'cgbg3.db'
    Left = 232
    Top = 176
    object cgbg3Prjno: TStringField
      FieldName = 'Prjno'
    end
    object cgbg3Wl: TStringField
      FieldName = 'Wl'
    end
    object cgbg3Idno: TStringField
      FieldName = 'Idno'
      Size = 12
    end
    object cgbg3Oaps: TStringField
      FieldName = 'Oaps'
      Size = 200
    end
    object cgbg3Oacm: TStringField
      FieldName = 'Oacm'
      Size = 15
    end
    object cgbg3Rq: TDateField
      FieldName = 'Rq'
    end
    object cgbg3Tm: TTimeField
      FieldName = 'Tm'
    end
    object cgbg3Qr: TBooleanField
      FieldName = 'Qr'
      OnChange = cgbg3QrChange
    end
    object cgbg3Cs: TIntegerField
      FieldName = 'Cs'
    end
  end
  object dscgbg3: TDataSource
    DataSet = cgbg3
    Left = 260
    Top = 176
  end
  object lbjh1: TQuery
    BeforePost = lbjh1BeforePost
    AfterPost = lbjh1AfterPost
    DatabaseName = 'cutplan'
    RequestLive = True
    SQL.Strings = (
      'select * from lbjh1')
    Left = 144
    Top = 64
    object lbjh1Prjno: TStringField
      FieldName = 'Prjno'
      Origin = 'CUTPLAN."lbjh1.DB".Prjno'
    end
    object lbjh1Wl: TStringField
      FieldName = 'Wl'
      Origin = 'CUTPLAN."lbjh1.DB".Wl'
    end
    object lbjh1Xh: TIntegerField
      FieldName = 'Xh'
      Origin = 'CUTPLAN."lbjh1.DB".Xh'
    end
    object lbjh1Lbzs: TIntegerField
      FieldName = 'Lbzs'
      Origin = 'CUTPLAN."lbjh1.DB".Lbzs'
      OnChange = lbjh1LbzsChange
    end
    object lbjh1Sjlb: TIntegerField
      FieldName = 'Sjlb'
      Origin = 'CUTPLAN."lbjh1.DB".Sjlb'
    end
    object lbjh1Pjmjfd: TFloatField
      FieldName = 'Pjmjfd'
      Origin = 'CUTPLAN."lbjh1.DB".Pjmjfd'
    end
    object lbjh1Ybl: TFloatField
      FieldName = 'Ybl'
      Origin = 'CUTPLAN."lbjh1.DB".Ybl'
    end
    object lbjh1Mjzcd: TFloatField
      FieldName = 'Mjzcd'
      Origin = 'CUTPLAN."lbjh1.DB".Mjzcd'
    end
    object lbjh1Mjypzbzc: TFloatField
      FieldName = 'Mjypzbzc'
      Origin = 'CUTPLAN."lbjh1.DB".Mjypzbzc'
    end
    object lbjh1Jhdzlbzc: TFloatField
      FieldName = 'Jhdzlbzc'
      Origin = 'CUTPLAN."lbjh1.DB".Jhdzlbzc'
    end
    object lbjh1Jhwlzc: TFloatField
      FieldName = 'Jhwlzc'
      Origin = 'CUTPLAN."lbjh1.DB".Jhwlzc'
    end
    object lbjh1Jhcgzsj: TFloatField
      FieldName = 'Jhcgzsj'
      Origin = 'CUTPLAN."lbjh1.DB".Jhcgzsj'
    end
    object lbjh1Jhscsh: TFloatField
      FieldName = 'Jhscsh'
      Origin = 'CUTPLAN."lbjh1.DB".Jhscsh'
    end
    object lbjh1Sjdzlbzc: TFloatField
      FieldName = 'Sjdzlbzc'
      Origin = 'CUTPLAN."lbjh1.DB".Sjdzlbzc'
    end
    object lbjh1Sjwlzc: TFloatField
      FieldName = 'Sjwlzc'
      Origin = 'CUTPLAN."lbjh1.DB".Sjwlzc'
    end
    object lbjh1Sjcgzsj: TFloatField
      FieldName = 'Sjcgzsj'
      Origin = 'CUTPLAN."lbjh1.DB".Sjcgzsj'
    end
    object lbjh1Sjscsh: TFloatField
      FieldName = 'Sjscsh'
      Origin = 'CUTPLAN."lbjh1.DB".Sjscsh'
    end
    object lbjh1Mjyl: TFloatField
      FieldName = 'Mjyl'
      Origin = 'CUTPLAN."lbjh1.DB".Mjyl'
    end
    object lbjh1Zjs: TIntegerField
      FieldName = 'Zjs'
      Origin = 'CUTPLAN."lbjh1.DB".Zjs'
    end
    object lbjh1Pbl: TFloatField
      FieldName = 'Pbl'
      Origin = 'CUTPLAN."lbjh1.DB".Pbl'
    end
    object lbjh1Hsl: TFloatField
      FieldName = 'Hsl'
      Origin = 'CUTPLAN."lbjh1.DB".Hsl'
    end
    object lbjh1Zdypcd: TFloatField
      FieldName = 'Zdypcd'
      Origin = 'CUTPLAN."lbjh1.DB".Zdypcd'
    end
    object lbjh1Ysmjfd: TFloatField
      FieldName = 'Ysmjfd'
      Origin = 'CUTPLAN."lbjh1.DB".Ysmjfd'
    end
    object lbjh1Zp: TBooleanField
      FieldName = 'Zp'
      Origin = 'CUTPLAN."lbjh1.DB".Zp'
    end
    object lbjh1Dzmjps: TIntegerField
      FieldName = 'Dzmjps'
      Origin = 'CUTPLAN."lbjh1.DB".Dzmjps'
    end
    object lbjh1Mjstatus: TStringField
      FieldName = 'Mjstatus'
      Origin = 'CUTPLAN."lbjh1.DB".Mjstatus'
      Size = 15
    end
    object lbjh1Rq: TDateField
      FieldName = 'Rq'
      Origin = 'CUTPLAN."lbjh1.DB".Rq'
    end
  end
  object lbjh2: TQuery
    AfterPost = lbjh2AfterPost
    OnNewRecord = lbjh2NewRecord
    DatabaseName = 'cutplan'
    DataSource = dslbjh1
    RequestLive = True
    SQL.Strings = (
      'select * from lbjh2 where prjno=:prjno and xh=:xh and wl=:wl')
    Left = 200
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Prjno'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Xh'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Wl'
        ParamType = ptUnknown
      end>
    object lbjh2Prjno: TStringField
      FieldName = 'Prjno'
      Origin = 'CUTPLAN."lbjh2.DB".Prjno'
    end
    object lbjh2Xh: TIntegerField
      FieldName = 'Xh'
      Origin = 'CUTPLAN."lbjh2.DB".Xh'
    end
    object lbjh2Wl: TStringField
      FieldName = 'Wl'
      Origin = 'CUTPLAN."lbjh2.DB".Wl'
    end
    object lbjh2Kh: TStringField
      FieldName = 'Kh'
      Origin = 'CUTPLAN."lbjh2.DB".Kh'
    end
    object lbjh2Id: TAutoIncField
      FieldName = 'Id'
      Origin = 'CUTPLAN."lbjh2.DB".Id'
      ReadOnly = True
    end
    object lbjh2Cm: TStringField
      FieldName = 'Cm'
      Origin = 'CUTPLAN."lbjh2.DB".Cm'
      Size = 6
    end
    object lbjh2Gch: TStringField
      FieldName = 'Gch'
      Origin = 'CUTPLAN."lbjh2.DB".Gch'
      Size = 60
    end
    object lbjh2Zdh: TStringField
      FieldName = 'Zdh'
      Origin = 'CUTPLAN."lbjh2.DB".Zdh'
      Size = 60
    end
    object lbjh2Sh: TStringField
      FieldName = 'Sh'
      Origin = 'CUTPLAN."lbjh2.DB".Sh'
      Size = 30
    end
    object lbjh2Mjjs: TIntegerField
      FieldName = 'Mjjs'
      Origin = 'CUTPLAN."lbjh2.DB".Mjjs'
    end
    object lbjh2Mjs: TFloatField
      FieldName = 'Mjs'
      Origin = 'CUTPLAN."lbjh2.DB".Mjs'
      OnChange = lbjh2MjsChange
    end
    object lbjh2Zds: TIntegerField
      FieldName = 'Zds'
      Origin = 'CUTPLAN."lbjh2.DB".Zds'
    end
    object lbjh2Ys: TIntegerField
      FieldName = 'Ys'
      Origin = 'CUTPLAN."lbjh2.DB".Ys'
    end
    object lbjh2Jc: TIntegerField
      FieldName = 'Jc'
      Origin = 'CUTPLAN."lbjh2.DB".Jc'
    end
    object lbjh2Bz: TStringField
      FieldName = 'Bz'
      Origin = 'CUTPLAN."lbjh2.DB".Bz'
      Size = 30
    end
    object lbjh2Cacyl: TFloatField
      FieldName = 'Cacyl'
      Origin = 'CUTPLAN."lbjh2.DB".Cacyl'
    end
  end
  object lbjh3: TQuery
    AfterPost = lbjh3AfterPost
    OnNewRecord = lbjh3NewRecord
    DatabaseName = 'cutplan'
    DataSource = dslbjh1
    RequestLive = True
    SQL.Strings = (
      'select * from lbjh3 where prjno=:prjno and xh=:xh and wl=:wl')
    Left = 256
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Prjno'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Xh'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Wl'
        ParamType = ptUnknown
      end>
    object lbjh3Prjno: TStringField
      FieldName = 'Prjno'
      Origin = 'CUTPLAN."lbjh3.DB".Prjno'
    end
    object lbjh3Xh: TIntegerField
      FieldName = 'Xh'
      Origin = 'CUTPLAN."lbjh3.DB".Xh'
    end
    object lbjh3Wl: TStringField
      FieldName = 'Wl'
      Origin = 'CUTPLAN."lbjh3.DB".Wl'
    end
    object lbjh3Mjh: TStringField
      FieldName = 'Mjh'
      Origin = 'CUTPLAN."lbjh3.DB".Mjh'
    end
    object lbjh3Mjfd: TIntegerField
      FieldName = 'Mjfd'
      Origin = 'CUTPLAN."lbjh3.DB".Mjfd'
    end
    object lbjh3Ysmjfd: TIntegerField
      FieldName = 'Ysmjfd'
      Origin = 'CUTPLAN."lbjh3.DB".Ysmjfd'
    end
    object lbjh3Mjcd: TFloatField
      FieldName = 'Mjcd'
      Origin = 'CUTPLAN."lbjh3.DB".Mjcd'
    end
    object lbjh3Mjypzbc: TFloatField
      FieldName = 'Mjypzbc'
      Origin = 'CUTPLAN."lbjh3.DB".Mjypzbc'
    end
    object lbjh3Jhlbzs: TIntegerField
      FieldName = 'Jhlbzs'
      Origin = 'CUTPLAN."lbjh3.DB".Jhlbzs'
    end
    object lbjh3Jhdzlbcd: TFloatField
      FieldName = 'Jhdzlbcd'
      Origin = 'CUTPLAN."lbjh3.DB".Jhdzlbcd'
    end
    object lbjh3Jhwlcd: TFloatField
      FieldName = 'Jhwlcd'
      Origin = 'CUTPLAN."lbjh3.DB".Jhwlcd'
    end
    object lbjh3Sjlbzs: TIntegerField
      FieldName = 'Sjlbzs'
      Origin = 'CUTPLAN."lbjh3.DB".Sjlbzs'
    end
    object lbjh3Sjdzlbcd: TFloatField
      FieldName = 'Sjdzlbcd'
      Origin = 'CUTPLAN."lbjh3.DB".Sjdzlbcd'
    end
    object lbjh3Sjwlcd: TFloatField
      FieldName = 'Sjwlcd'
      Origin = 'CUTPLAN."lbjh3.DB".Sjwlcd'
    end
    object lbjh3Ybl: TFloatField
      FieldName = 'Ybl'
      Origin = 'CUTPLAN."lbjh3.DB".Ybl'
    end
    object lbjh3Jhcgsj: TFloatField
      FieldName = 'Jhcgsj'
      Origin = 'CUTPLAN."lbjh3.DB".Jhcgsj'
    end
    object lbjh3Jhscsh: TFloatField
      FieldName = 'Jhscsh'
      Origin = 'CUTPLAN."lbjh3.DB".Jhscsh'
    end
    object lbjh3Sjcgsj: TFloatField
      FieldName = 'Sjcgsj'
      Origin = 'CUTPLAN."lbjh3.DB".Sjcgsj'
    end
    object lbjh3Sjscsh: TFloatField
      FieldName = 'Sjscsh'
      Origin = 'CUTPLAN."lbjh3.DB".Sjscsh'
    end
    object lbjh3Pbl: TFloatField
      FieldName = 'Pbl'
      Origin = 'CUTPLAN."lbjh3.DB".Pbl'
    end
    object lbjh3Hsl: TFloatField
      FieldName = 'Hsl'
      Origin = 'CUTPLAN."lbjh3.DB".Hsl'
    end
  end
  object cgjh1: TQuery
    BeforePost = cgjh1BeforePost
    AfterPost = cgjh1AfterPost
    DatabaseName = 'cutplan'
    RequestLive = True
    SQL.Strings = (
      'select * from cgjh1')
    Left = 8
    Top = 120
    object cgjh1Prjno: TStringField
      FieldName = 'Prjno'
      Origin = 'CUTPLAN."cgjh1.DB".Prjno'
    end
    object cgjh1Wl: TStringField
      FieldName = 'Wl'
      Origin = 'CUTPLAN."cgjh1.DB".Wl'
    end
    object cgjh1Xh: TIntegerField
      FieldName = 'Xh'
      Origin = 'CUTPLAN."cgjh1.DB".Xh'
    end
    object cgjh1Mjh: TStringField
      FieldName = 'Mjh'
      Origin = 'CUTPLAN."cgjh1.DB".Mjh'
      Size = 60
    end
    object cgjh1Lbzs: TIntegerField
      FieldName = 'Lbzs'
      Origin = 'CUTPLAN."cgjh1.DB".Lbzs'
      OnChange = cgjh1LbzsChange
    end
    object cgjh1Lbzs1: TIntegerField
      FieldName = 'Lbzs1'
      Origin = 'CUTPLAN."cgjh1.DB".Lbzs1'
      OnChange = cgjh1LbzsChange
    end
    object cgjh1Lbzs2: TIntegerField
      FieldName = 'Lbzs2'
      Origin = 'CUTPLAN."cgjh1.DB".Lbzs2'
      OnChange = cgjh1LbzsChange
    end
    object cgjh1Scmjcd: TFloatField
      FieldName = 'Scmjcd'
      Origin = 'CUTPLAN."cgjh1.DB".Scmjcd'
      DisplayFormat = '#0.0000'
    end
    object cgjh1Ysmjfd: TFloatField
      FieldName = 'Ysmjfd'
      Origin = 'CUTPLAN."cgjh1.DB".Ysmjfd'
      DisplayFormat = '#0'
    end
    object cgjh1Scmjfd: TFloatField
      FieldName = 'Scmjfd'
      Origin = 'CUTPLAN."cgjh1.DB".Scmjfd'
      DisplayFormat = '#0'
    end
    object cgjh1Dzmjps: TIntegerField
      FieldName = 'Dzmjps'
      Origin = 'CUTPLAN."cgjh1.DB".Dzmjps'
    end
    object cgjh1Scmjyl: TFloatField
      FieldName = 'Scmjyl'
      Origin = 'CUTPLAN."cgjh1.DB".Scmjyl'
      DisplayFormat = '#0.0000'
    end
    object cgjh1Ybl: TFloatField
      FieldName = 'Ybl'
      Origin = 'CUTPLAN."cgjh1.DB".Ybl'
      DisplayFormat = '#0.00'
    end
    object cgjh1Cgsj: TFloatField
      FieldName = 'Cgsj'
      Origin = 'CUTPLAN."cgjh1.DB".Cgsj'
      DisplayFormat = '#0.00'
    end
    object cgjh1Scmjzc: TFloatField
      FieldName = 'Scmjzc'
      Origin = 'CUTPLAN."cgjh1.DB".Scmjzc'
      DisplayFormat = '#0.0'
    end
    object cgjh1Zdypcd: TFloatField
      FieldName = 'Zdypcd'
      Origin = 'CUTPLAN."cgjh1.DB".Zdypcd'
      DisplayFormat = '#0.00'
    end
    object cgjh1Mjjs: TFloatField
      FieldName = 'Mjjs'
      Origin = 'CUTPLAN."cgjh1.DB".Mjjs'
      DisplayFormat = '#0.0'
    end
    object cgjh1Mjstatus: TStringField
      FieldName = 'Mjstatus'
      Origin = 'CUTPLAN."cgjh1.DB".Mjstatus'
      Size = 16
    end
    object cgjh1Zp: TBooleanField
      FieldName = 'Zp'
      Origin = 'CUTPLAN."cgjh1.DB".Zp'
    end
    object cgjh1Rq: TDateField
      FieldName = 'Rq'
      Origin = 'CUTPLAN."cgjh1.DB".Rq'
    end
    object cgjh1Bzmj: TBooleanField
      FieldName = 'Bzmj'
      Origin = 'CUTPLAN."cgjh1.DB".Bzmj'
    end
    object cgjh1Zbmj: TBooleanField
      FieldName = 'Zbmj'
      Origin = 'CUTPLAN."cgjh1.DB".Zbmj'
    end
    object cgjh1Twmj: TBooleanField
      FieldName = 'Twmj'
      Origin = 'CUTPLAN."cgjh1.DB".Twmj'
    end
    object cgjh1Pzx: TBooleanField
      FieldName = 'Pzx'
      Origin = 'CUTPLAN."cgjh1.DB".Pzx'
    end
    object cgjh1Yymj: TBooleanField
      FieldName = 'Yymj'
      Origin = 'CUTPLAN."cgjh1.DB".Yymj'
    end
    object cgjh1Dk: TBooleanField
      FieldName = 'Dk'
      Origin = 'CUTPLAN."cgjh1.DB".Dk'
    end
    object cgjh1Hk: TBooleanField
      FieldName = 'Hk'
      Origin = 'CUTPLAN."cgjh1.DB".Hk'
    end
    object cgjh1Ds: TBooleanField
      FieldName = 'Ds'
      Origin = 'CUTPLAN."cgjh1.DB".Ds'
    end
    object cgjh1Hs: TBooleanField
      FieldName = 'Hs'
      Origin = 'CUTPLAN."cgjh1.DB".Hs'
    end
    object cgjh1Dzd: TBooleanField
      FieldName = 'Dzd'
      Origin = 'CUTPLAN."cgjh1.DB".Dzd'
    end
    object cgjh1Hzd: TBooleanField
      FieldName = 'Hzd'
      Origin = 'CUTPLAN."cgjh1.DB".Hzd'
    end
    object cgjh1Ldz: TBooleanField
      FieldName = 'Ldz'
      Origin = 'CUTPLAN."cgjh1.DB".Ldz'
    end
    object cgjh1Lhz: TBooleanField
      FieldName = 'Lhz'
      Origin = 'CUTPLAN."cgjh1.DB".Lhz'
    end
    object cgjh1Yqxg: TBooleanField
      FieldName = 'Yqxg'
      Origin = 'CUTPLAN."cgjh1.DB".Yqxg'
    end
    object cgjh1Zysc: TBooleanField
      FieldName = 'Zysc'
      Origin = 'CUTPLAN."cgjh1.DB".Zysc'
    end
    object cgjh1Oaps: TStringField
      FieldName = 'Oaps'
      Origin = 'CUTPLAN."cgjh1.DB".Oaps'
      Size = 200
    end
    object cgjh1Scmjcd1: TFloatField
      FieldName = 'Scmjcd1'
      Origin = 'CUTPLAN."cgjh1.DB".Scmjcd1'
      DisplayFormat = '#0.0000'
    end
    object cgjh1Scmjcd2: TFloatField
      FieldName = 'Scmjcd2'
      Origin = 'CUTPLAN."cgjh1.DB".Scmjcd2'
      DisplayFormat = '#0.0000'
    end
    object cgjh1Ysmjfd1: TFloatField
      FieldName = 'Ysmjfd1'
      Origin = 'CUTPLAN."cgjh1.DB".Ysmjfd1'
      DisplayFormat = '#0'
    end
    object cgjh1Ysmjfd2: TFloatField
      FieldName = 'Ysmjfd2'
      Origin = 'CUTPLAN."cgjh1.DB".Ysmjfd2'
      DisplayFormat = '#0'
    end
    object cgjh1Scmjfd1: TFloatField
      FieldName = 'Scmjfd1'
      Origin = 'CUTPLAN."cgjh1.DB".Scmjfd1'
      DisplayFormat = '#0'
    end
    object cgjh1Scmjfd2: TFloatField
      FieldName = 'Scmjfd2'
      Origin = 'CUTPLAN."cgjh1.DB".Scmjfd2'
      DisplayFormat = '#0'
    end
    object cgjh1Ybl1: TFloatField
      FieldName = 'Ybl1'
      Origin = 'CUTPLAN."cgjh1.DB".Ybl1'
      DisplayFormat = '#0.00'
    end
    object cgjh1Ybl2: TFloatField
      FieldName = 'Ybl2'
      Origin = 'CUTPLAN."cgjh1.DB".Ybl2'
      DisplayFormat = '#0.00'
    end
    object cgjh1Cgsj1: TFloatField
      FieldName = 'Cgsj1'
      Origin = 'CUTPLAN."cgjh1.DB".Cgsj1'
      DisplayFormat = '#0.00'
    end
    object cgjh1Cgsj2: TFloatField
      FieldName = 'Cgsj2'
      Origin = 'CUTPLAN."cgjh1.DB".Cgsj2'
      DisplayFormat = '#0.00'
    end
    object cgjh1Scmjzc1: TFloatField
      FieldName = 'Scmjzc1'
      Origin = 'CUTPLAN."cgjh1.DB".Scmjzc1'
      DisplayFormat = '#0.0'
    end
    object cgjh1Scmjzc2: TFloatField
      FieldName = 'Scmjzc2'
      Origin = 'CUTPLAN."cgjh1.DB".Scmjzc2'
      DisplayFormat = '#0.0'
    end
    object cgjh1Tm: TTimeField
      FieldName = 'Tm'
      Origin = 'CUTPLAN."cgjh1.DB".Tm'
    end
  end
  object cgjh2: TQuery
    AfterPost = cgjh2AfterPost
    OnNewRecord = cgjh2NewRecord
    DatabaseName = 'cutplan'
    DataSource = dscgjh1
    RequestLive = True
    SQL.Strings = (
      'select * from cgjh2 where prjno=:prjno and wl=:wl and xh=:xh')
    Left = 64
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'Prjno'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Wl'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Xh'
        ParamType = ptUnknown
      end>
    object cgjh2Prjno: TStringField
      FieldName = 'Prjno'
      Origin = 'CUTPLAN."cgjh2.DB".Prjno'
    end
    object cgjh2Wl: TStringField
      FieldName = 'Wl'
      Origin = 'CUTPLAN."cgjh2.DB".Wl'
    end
    object cgjh2Xh: TIntegerField
      FieldName = 'Xh'
      Origin = 'CUTPLAN."cgjh2.DB".Xh'
    end
    object cgjh2Kh: TStringField
      FieldName = 'Kh'
      Origin = 'CUTPLAN."cgjh2.DB".Kh'
    end
    object cgjh2Id: TAutoIncField
      FieldName = 'Id'
      Origin = 'CUTPLAN."cgjh2.DB".Id'
      ReadOnly = True
    end
    object cgjh2Gch: TStringField
      FieldName = 'Gch'
      Origin = 'CUTPLAN."cgjh2.DB".Gch'
      Size = 60
    end
    object cgjh2Zdh: TStringField
      FieldName = 'Zdh'
      Origin = 'CUTPLAN."cgjh2.DB".Zdh'
      Size = 30
    end
    object cgjh2Sh: TStringField
      FieldName = 'Sh'
      Origin = 'CUTPLAN."cgjh2.DB".Sh'
      Size = 15
    end
    object cgjh2Cm: TStringField
      FieldName = 'Cm'
      Origin = 'CUTPLAN."cgjh2.DB".Cm'
      Size = 6
    end
    object cgjh2Mjjs: TIntegerField
      FieldName = 'Mjjs'
      Origin = 'CUTPLAN."cgjh2.DB".Mjjs'
    end
    object cgjh2Mjs: TFloatField
      FieldName = 'Mjs'
      Origin = 'CUTPLAN."cgjh2.DB".Mjs'
    end
    object cgjh2Ymjjs: TIntegerField
      FieldName = 'Ymjjs'
      Origin = 'CUTPLAN."cgjh2.DB".Ymjjs'
    end
  end
  object cgbg1: TQuery
    BeforePost = cgbg1BeforePost
    AfterPost = cgbg1AfterPost
    DatabaseName = 'cutplan'
    RequestLive = True
    SQL.Strings = (
      'select * from cgbg1')
    Left = 8
    Top = 176
    object cgbg1Prjno: TStringField
      FieldName = 'Prjno'
      Origin = 'CUTPLAN."cgbg1.DB".Prjno'
    end
    object cgbg1Wl: TStringField
      FieldName = 'Wl'
      Origin = 'CUTPLAN."cgbg1.DB".Wl'
    end
    object cgbg1Xh: TIntegerField
      FieldName = 'Xh'
      Origin = 'CUTPLAN."cgbg1.DB".Xh'
    end
    object cgbg1Mjh: TStringField
      FieldName = 'Mjh'
      Origin = 'CUTPLAN."cgbg1.DB".Mjh'
      Size = 60
    end
    object cgbg1Lbzs: TIntegerField
      FieldName = 'Lbzs'
      Origin = 'CUTPLAN."cgbg1.DB".Lbzs'
      OnChange = cgbg1LbzsChange
    end
    object cgbg1Lbzs1: TIntegerField
      FieldName = 'Lbzs1'
      Origin = 'CUTPLAN."cgbg1.DB".Lbzs1'
      OnChange = cgbg1LbzsChange
    end
    object cgbg1Lbzs2: TIntegerField
      FieldName = 'Lbzs2'
      Origin = 'CUTPLAN."cgbg1.DB".Lbzs2'
      OnChange = cgbg1LbzsChange
    end
    object cgbg1Scmjcd: TFloatField
      FieldName = 'Scmjcd'
      Origin = 'CUTPLAN."cgbg1.DB".Scmjcd'
      OnChange = cgbg1LbzsChange
      DisplayFormat = '#0.0000'
    end
    object cgbg1Ysmjfd: TFloatField
      FieldName = 'Ysmjfd'
      Origin = 'CUTPLAN."cgbg1.DB".Ysmjfd'
      DisplayFormat = '#0'
    end
    object cgbg1Scmjfd: TFloatField
      FieldName = 'Scmjfd'
      Origin = 'CUTPLAN."cgbg1.DB".Scmjfd'
      DisplayFormat = '#0'
    end
    object cgbg1Dzmjps: TIntegerField
      FieldName = 'Dzmjps'
      Origin = 'CUTPLAN."cgbg1.DB".Dzmjps'
    end
    object cgbg1Scmjyl: TFloatField
      FieldName = 'Scmjyl'
      Origin = 'CUTPLAN."cgbg1.DB".Scmjyl'
      DisplayFormat = '#0.0000'
    end
    object cgbg1Ybl: TFloatField
      FieldName = 'Ybl'
      Origin = 'CUTPLAN."cgbg1.DB".Ybl'
      DisplayFormat = '#0.00'
    end
    object cgbg1Cgsj: TFloatField
      FieldName = 'Cgsj'
      Origin = 'CUTPLAN."cgbg1.DB".Cgsj'
      DisplayFormat = '#0.00'
    end
    object cgbg1Scmjzc: TFloatField
      FieldName = 'Scmjzc'
      Origin = 'CUTPLAN."cgbg1.DB".Scmjzc'
      DisplayFormat = '#0.0'
    end
    object cgbg1Zdypcd: TFloatField
      FieldName = 'Zdypcd'
      Origin = 'CUTPLAN."cgbg1.DB".Zdypcd'
      DisplayFormat = '#0.00'
    end
    object cgbg1Mjjs: TFloatField
      FieldName = 'Mjjs'
      Origin = 'CUTPLAN."cgbg1.DB".Mjjs'
    end
    object cgbg1Mjstatus: TStringField
      FieldName = 'Mjstatus'
      Origin = 'CUTPLAN."cgbg1.DB".Mjstatus'
      Size = 16
    end
    object cgbg1Zp: TBooleanField
      FieldName = 'Zp'
      Origin = 'CUTPLAN."cgbg1.DB".Zp'
    end
    object cgbg1Rq: TDateField
      FieldName = 'Rq'
      Origin = 'CUTPLAN."cgbg1.DB".Rq'
    end
    object cgbg1Bzmj: TBooleanField
      FieldName = 'Bzmj'
      Origin = 'CUTPLAN."cgbg1.DB".Bzmj'
    end
    object cgbg1Zbmj: TBooleanField
      FieldName = 'Zbmj'
      Origin = 'CUTPLAN."cgbg1.DB".Zbmj'
    end
    object cgbg1Twmj: TBooleanField
      FieldName = 'Twmj'
      Origin = 'CUTPLAN."cgbg1.DB".Twmj'
    end
    object cgbg1Pzx: TBooleanField
      FieldName = 'Pzx'
      Origin = 'CUTPLAN."cgbg1.DB".Pzx'
    end
    object cgbg1Yymj: TBooleanField
      FieldName = 'Yymj'
      Origin = 'CUTPLAN."cgbg1.DB".Yymj'
    end
    object cgbg1Dk: TBooleanField
      FieldName = 'Dk'
      Origin = 'CUTPLAN."cgbg1.DB".Dk'
    end
    object cgbg1Hk: TBooleanField
      FieldName = 'Hk'
      Origin = 'CUTPLAN."cgbg1.DB".Hk'
    end
    object cgbg1Ds: TBooleanField
      FieldName = 'Ds'
      Origin = 'CUTPLAN."cgbg1.DB".Ds'
    end
    object cgbg1Hs: TBooleanField
      FieldName = 'Hs'
      Origin = 'CUTPLAN."cgbg1.DB".Hs'
    end
    object cgbg1Dzd: TBooleanField
      FieldName = 'Dzd'
      Origin = 'CUTPLAN."cgbg1.DB".Dzd'
    end
    object cgbg1Hzd: TBooleanField
      FieldName = 'Hzd'
      Origin = 'CUTPLAN."cgbg1.DB".Hzd'
    end
    object cgbg1Ldz: TBooleanField
      FieldName = 'Ldz'
      Origin = 'CUTPLAN."cgbg1.DB".Ldz'
    end
    object cgbg1Lhz: TBooleanField
      FieldName = 'Lhz'
      Origin = 'CUTPLAN."cgbg1.DB".Lhz'
    end
    object cgbg1Yqxg: TBooleanField
      FieldName = 'Yqxg'
      Origin = 'CUTPLAN."cgbg1.DB".Yqxg'
    end
    object cgbg1Zysc: TBooleanField
      FieldName = 'Zysc'
      Origin = 'CUTPLAN."cgbg1.DB".Zysc'
    end
    object cgbg1Oaps: TStringField
      FieldName = 'Oaps'
      Origin = 'CUTPLAN."cgbg1.DB".Oaps'
      Size = 200
    end
    object cgbg1Scmjcd1: TFloatField
      FieldName = 'Scmjcd1'
      Origin = 'CUTPLAN."cgbg1.DB".Scmjcd1'
      OnChange = cgbg1LbzsChange
      DisplayFormat = '#0.0000'
    end
    object cgbg1Scmjcd2: TFloatField
      FieldName = 'Scmjcd2'
      Origin = 'CUTPLAN."cgbg1.DB".Scmjcd2'
      OnChange = cgbg1LbzsChange
      DisplayFormat = '#0.0000'
    end
    object cgbg1Ysmjfd1: TFloatField
      FieldName = 'Ysmjfd1'
      Origin = 'CUTPLAN."cgbg1.DB".Ysmjfd1'
      DisplayFormat = '#0'
    end
    object cgbg1Ysmjfd2: TFloatField
      FieldName = 'Ysmjfd2'
      Origin = 'CUTPLAN."cgbg1.DB".Ysmjfd2'
      DisplayFormat = '#0'
    end
    object cgbg1Scmjfd1: TFloatField
      FieldName = 'Scmjfd1'
      Origin = 'CUTPLAN."cgbg1.DB".Scmjfd1'
      DisplayFormat = '#0'
    end
    object cgbg1Scmjfd2: TFloatField
      FieldName = 'Scmjfd2'
      Origin = 'CUTPLAN."cgbg1.DB".Scmjfd2'
      DisplayFormat = '#0'
    end
    object cgbg1Ybl1: TFloatField
      FieldName = 'Ybl1'
      Origin = 'CUTPLAN."cgbg1.DB".Ybl1'
      DisplayFormat = '#0.00'
    end
    object cgbg1Ybl2: TFloatField
      FieldName = 'Ybl2'
      Origin = 'CUTPLAN."cgbg1.DB".Ybl2'
      DisplayFormat = '#0.00'
    end
    object cgbg1Cgsj1: TFloatField
      FieldName = 'Cgsj1'
      Origin = 'CUTPLAN."cgbg1.DB".Cgsj1'
      DisplayFormat = '#0.00'
    end
    object cgbg1Cgsj2: TFloatField
      FieldName = 'Cgsj2'
      Origin = 'CUTPLAN."cgbg1.DB".Cgsj2'
      DisplayFormat = '#0.00'
    end
    object cgbg1Scmjzc1: TFloatField
      FieldName = 'Scmjzc1'
      Origin = 'CUTPLAN."cgbg1.DB".Scmjzc1'
      DisplayFormat = '#0.0'
    end
    object cgbg1Scmjzc2: TFloatField
      FieldName = 'Scmjzc2'
      Origin = 'CUTPLAN."cgbg1.DB".Scmjzc2'
      DisplayFormat = '#0.0'
    end
    object cgbg1Cfm: TBooleanField
      FieldName = 'Cfm'
      Origin = 'CUTPLAN."cgbg1.DB".Cfm'
    end
    object cgbg1Yxh: TIntegerField
      FieldName = 'Yxh'
      Origin = 'CUTPLAN."cgbg1.DB".Yxh'
    end
    object cgbg1Tm: TTimeField
      FieldName = 'Tm'
      Origin = 'CUTPLAN."cgbg1.DB".Tm'
    end
    object cgbg1Ylbzs: TIntegerField
      FieldName = 'Ylbzs'
      Origin = 'CUTPLAN."cgbg1.DB".Ylbzs'
    end
    object cgbg1Ylbzs1: TIntegerField
      FieldName = 'Ylbzs1'
      Origin = 'CUTPLAN."cgbg1.DB".Ylbzs1'
    end
    object cgbg1Ylbzs2: TIntegerField
      FieldName = 'Ylbzs2'
      Origin = 'CUTPLAN."cgbg1.DB".Ylbzs2'
    end
  end
  object cgbg2: TQuery
    AfterPost = cgbg2AfterPost
    OnNewRecord = cgbg2NewRecord
    DatabaseName = 'cutplan'
    DataSource = dscgbg1
    RequestLive = True
    SQL.Strings = (
      'select * from cgbg2 where prjno=:prjno and wl=:wl and xh=:xh')
    Left = 64
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'Prjno'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Wl'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Xh'
        ParamType = ptUnknown
      end>
    object cgbg2Prjno: TStringField
      FieldName = 'Prjno'
      Origin = 'CUTPLAN."cgbg2.DB".Prjno'
    end
    object cgbg2Wl: TStringField
      FieldName = 'Wl'
      Origin = 'CUTPLAN."cgbg2.DB".Wl'
    end
    object cgbg2Xh: TIntegerField
      FieldName = 'Xh'
      Origin = 'CUTPLAN."cgbg2.DB".Xh'
    end
    object cgbg2Kh: TStringField
      FieldName = 'Kh'
      Origin = 'CUTPLAN."cgbg2.DB".Kh'
    end
    object cgbg2Id: TAutoIncField
      FieldName = 'Id'
      Origin = 'CUTPLAN."cgbg2.DB".Id'
      ReadOnly = True
    end
    object cgbg2Gch: TStringField
      FieldName = 'Gch'
      Origin = 'CUTPLAN."cgbg2.DB".Gch'
      Size = 60
    end
    object cgbg2Zdh: TStringField
      FieldName = 'Zdh'
      Origin = 'CUTPLAN."cgbg2.DB".Zdh'
      Size = 30
    end
    object cgbg2Sh: TStringField
      FieldName = 'Sh'
      Origin = 'CUTPLAN."cgbg2.DB".Sh'
      Size = 15
    end
    object cgbg2Cm: TStringField
      FieldName = 'Cm'
      Origin = 'CUTPLAN."cgbg2.DB".Cm'
      Size = 6
    end
    object cgbg2Mjjs: TIntegerField
      FieldName = 'Mjjs'
      Origin = 'CUTPLAN."cgbg2.DB".Mjjs'
    end
    object cgbg2Mjs: TFloatField
      FieldName = 'Mjs'
      Origin = 'CUTPLAN."cgbg2.DB".Mjs'
      DisplayFormat = '#0.0'
    end
    object cgbg2Ymjjs: TIntegerField
      FieldName = 'Ymjjs'
      Origin = 'CUTPLAN."cgbg2.DB".Ymjjs'
    end
  end
  object fcjy2: TTable
    AfterPost = fcjy2AfterPost
    AfterRefresh = fcjy2AfterPost
    OnNewRecord = fcjy2NewRecord
    DatabaseName = 'cutplan'
    IndexFieldNames = 'Prjno;Wl;Xh'
    MasterFields = 'Prjno;Wl;Xh'
    MasterSource = dsfcjy1
    TableName = 'fcjy2.DB'
    Left = 64
    Top = 64
    object fcjy2Prjno: TStringField
      FieldName = 'Prjno'
    end
    object fcjy2Wl: TStringField
      FieldName = 'Wl'
    end
    object fcjy2Xh: TIntegerField
      FieldName = 'Xh'
    end
    object fcjy2Kh: TStringField
      FieldName = 'Kh'
    end
    object fcjy2Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object fcjy2Gch: TStringField
      FieldName = 'Gch'
      Size = 60
    end
    object fcjy2Zdh: TStringField
      FieldName = 'Zdh'
      Size = 60
    end
    object fcjy2Sh: TStringField
      FieldName = 'Sh'
      Size = 30
    end
    object fcjy2Cm: TStringField
      FieldName = 'Cm'
      Size = 6
    end
    object fcjy2Zds: TIntegerField
      FieldName = 'Zds'
    end
    object fcjy2Jy: TFloatField
      FieldName = 'Jy'
    end
    object fcjy2Sj: TFloatField
      FieldName = 'Sj'
      OnChange = fcjy2SjChange
    end
    object fcjy2Ys: TIntegerField
      FieldName = 'Ys'
    end
    object fcjy2Jc: TIntegerField
      FieldName = 'Jc'
      OnChange = fcjy2JcChange
    end
    object fcjy2Bz: TStringField
      FieldName = 'Bz'
      Size = 60
    end
    object fcjy2No: TIntegerField
      FieldName = 'No'
    end
    object fcjy2Gm: TIntegerField
      FieldName = 'Gm'
    end
    object fcjy2Cacyl: TFloatField
      FieldName = 'Cacyl'
    end
    object fcjy2Gmc: TStringField
      FieldName = 'Gmc'
      Size = 6
    end
    object fcjy2Gmt: TStringField
      FieldName = 'Gmt'
      Size = 6
    end
  end
  object cgd1: TQuery
    AfterPost = cgd1AfterPost
    DatabaseName = 'cutplan'
    RequestLive = True
    SQL.Strings = (
      'select * from cgd1')
    Left = 8
    Top = 240
  end
  object dscgd1: TDataSource
    DataSet = cgd1
    Left = 36
    Top = 240
  end
  object cgd2: TQuery
    AfterPost = cgd2AfterPost
    DatabaseName = 'cutplan'
    DataSource = dscgd1
    RequestLive = True
    SQL.Strings = (
      'select * from cgd2 where prjno=:prjno and wl=:wl and xh=:xh')
    Left = 64
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'Prjno'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Wl'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Xh'
        ParamType = ptUnknown
      end>
    object cgd2Prjno: TStringField
      FieldName = 'Prjno'
      Origin = 'CUTPLAN."cgd2.DB".Prjno'
    end
    object cgd2Xh: TIntegerField
      FieldName = 'Xh'
      Origin = 'CUTPLAN."cgd2.DB".Xh'
    end
    object cgd2Wl: TStringField
      FieldName = 'Wl'
      Origin = 'CUTPLAN."cgd2.DB".Wl'
    end
    object cgd2Kh: TStringField
      FieldName = 'Kh'
      Origin = 'CUTPLAN."cgd2.DB".Kh'
    end
    object cgd2Id: TAutoIncField
      FieldName = 'Id'
      Origin = 'CUTPLAN."cgd2.DB".Id'
      ReadOnly = True
    end
    object cgd2Cm: TStringField
      FieldName = 'Cm'
      Origin = 'CUTPLAN."cgd2.DB".Cm'
      Size = 6
    end
    object cgd2Gch: TStringField
      FieldName = 'Gch'
      Origin = 'CUTPLAN."cgd2.DB".Gch'
      Size = 60
    end
    object cgd2Zdh: TStringField
      FieldName = 'Zdh'
      Origin = 'CUTPLAN."cgd2.DB".Zdh'
      Size = 60
    end
    object cgd2Sh: TStringField
      FieldName = 'Sh'
      Origin = 'CUTPLAN."cgd2.DB".Sh'
      Size = 30
    end
    object cgd2Mjjs: TIntegerField
      FieldName = 'Mjjs'
      Origin = 'CUTPLAN."cgd2.DB".Mjjs'
    end
    object cgd2Mjs: TFloatField
      FieldName = 'Mjs'
      Origin = 'CUTPLAN."cgd2.DB".Mjs'
      OnChange = cgd2MjsChange
    end
    object cgd2Zds: TIntegerField
      FieldName = 'Zds'
      Origin = 'CUTPLAN."cgd2.DB".Zds'
    end
    object cgd2Ys: TIntegerField
      FieldName = 'Ys'
      Origin = 'CUTPLAN."cgd2.DB".Ys'
    end
    object cgd2Jc: TIntegerField
      FieldName = 'Jc'
      Origin = 'CUTPLAN."cgd2.DB".Jc'
    end
    object cgd2Bz: TStringField
      FieldName = 'Bz'
      Origin = 'CUTPLAN."cgd2.DB".Bz'
      Size = 30
    end
    object cgd2Cacyl: TFloatField
      FieldName = 'Cacyl'
      Origin = 'CUTPLAN."cgd2.DB".Cacyl'
    end
  end
  object dscgd2: TDataSource
    DataSet = cgd2
    Left = 92
    Top = 240
  end
  object cgd3: TQuery
    AfterPost = cgd3AfterPost
    DatabaseName = 'cutplan'
    DataSource = dscgd1
    RequestLive = True
    SQL.Strings = (
      'select * from cgd3 where prjno=:prjno and wl=:wl and xh=:xh')
    Left = 120
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'Prjno'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Wl'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Xh'
        ParamType = ptUnknown
      end>
  end
  object dscgd3: TDataSource
    DataSet = cgd3
    Left = 148
    Top = 240
  end
  object cgdwl: TQuery
    AfterPost = cgdwlAfterPost
    DatabaseName = 'cutplan'
    DataSource = dscgd1
    RequestLive = True
    SQL.Strings = (
      'select * from cgdwl where prjno=:prjno and wl=:wl and xh=:xh')
    Left = 176
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'Prjno'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Wl'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Xh'
        ParamType = ptUnknown
      end>
  end
  object dscgdwl: TDataSource
    DataSet = cgdwl
    Left = 204
    Top = 240
  end
end
