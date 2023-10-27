object qcdm: Tqcdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 194
  Top = 107
  Height = 387
  Width = 606
  object Connection1: TSocketConnection
    ServerGUID = '{767063A3-B228-11D4-8C1C-0050BAC1A21C}'
    ServerName = 'server.myserver'
    Address = '198.85.7.30'
    Left = 24
    Top = 16
  end
  object yb1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from yb1'
    FieldDefs = <
      item
        Name = 'Rno'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Rrq'
        DataType = ftDate
      end
      item
        Name = 'Pname'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qc'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Hdo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Pno'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Sh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 160
      end
      item
        Name = 'Chck'
        DataType = ftBoolean
      end
      item
        Name = 'Qaps'
        DataType = ftString
        Size = 160
      end
      item
        Name = 'Cktm'
        DataType = ftTime
      end
      item
        Name = 'Oyes'
        DataType = ftBoolean
      end
      item
        Name = 'Cano'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    IndexFieldNames = 'rno'
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    StoreDefs = True
    Left = 24
    Top = 72
  end
  object yb2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Rno'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Jh'
        DataType = ftInteger
      end
      item
        Name = 'Rch'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Bh'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Cd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Qw'
        DataType = ftBoolean
      end
      item
        Name = 'Zd'
        DataType = ftBoolean
      end
      item
        Name = 'Yz'
        DataType = ftBoolean
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    IndexFieldNames = 'rno;jh;rch;bh'
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    StoreDefs = True
    Left = 24
    Top = 128
  end
  object yb3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Rno'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Jh'
        DataType = ftInteger
      end
      item
        Name = 'Rch'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Color'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Ph'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Mtr'
        DataType = ftFloat
      end
      item
        Name = 'Gh'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Btbfd'
        DataType = ftInteger
      end
      item
        Name = 'Bb'
        DataType = ftInteger
      end
      item
        Name = 'Ufd'
        DataType = ftInteger
      end
      item
        Name = 'Zff'
        DataType = ftInteger
      end
      item
        Name = 'Pff'
        DataType = ftFloat
      end
      item
        Name = 'Ums'
        DataType = ftFloat
      end
      item
        Name = 'Ubl'
        DataType = ftFloat
      end
      item
        Name = 'Ids'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'Bb1'
        DataType = ftInteger
      end
      item
        Name = 'Zl'
        DataType = ftInteger
      end
      item
        Name = 'Rsbj'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Sc'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Blb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Hx'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Wx'
        DataType = ftInteger
      end
      item
        Name = 'Th'
        DataType = ftInteger
      end
      item
        Name = 'Qm'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Btbfd1'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd2'
        DataType = ftInteger
      end
      item
        Name = 'Ufd1'
        DataType = ftInteger
      end
      item
        Name = 'Ufd2'
        DataType = ftInteger
      end
      item
        Name = 'Hsl'
        DataType = ftFloat
      end
      item
        Name = 'Zlcs1'
        DataType = ftFloat
      end
      item
        Name = 'Zlcs2'
        DataType = ftInteger
      end
      item
        Name = 'Zlcs3'
        DataType = ftInteger
      end
      item
        Name = 'Hd'
        DataType = ftFloat
      end
      item
        Name = 'Uom'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Mfd'
        DataType = ftInteger
      end
      item
        Name = 'Mtr1'
        DataType = ftFloat
      end
      item
        Name = 'Ums1'
        DataType = ftFloat
      end
      item
        Name = 'Zlxs'
        DataType = ftFloat
      end
      item
        Name = 'Jcsh'
        DataType = ftFloat
      end
      item
        Name = 'Scsh'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd3'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd4'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd5'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd6'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd7'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd8'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd9'
        DataType = ftInteger
      end
      item
        Name = 'Ufd3'
        DataType = ftInteger
      end
      item
        Name = 'Ufd4'
        DataType = ftInteger
      end
      item
        Name = 'Ufd5'
        DataType = ftInteger
      end
      item
        Name = 'Ufd6'
        DataType = ftInteger
      end
      item
        Name = 'Ufd7'
        DataType = ftInteger
      end
      item
        Name = 'Ufd8'
        DataType = ftInteger
      end
      item
        Name = 'Ufd9'
        DataType = ftInteger
      end
      item
        Name = 'Shl'
        DataType = ftFloat
      end
      item
        Name = 'Zlcs4'
        DataType = ftInteger
      end
      item
        Name = 'Hsl1'
        DataType = ftFloat
      end
      item
        Name = 'Hsl2'
        DataType = ftFloat
      end
      item
        Name = 'Hsl3'
        DataType = ftFloat
      end
      item
        Name = 'Hsl4'
        DataType = ftFloat
      end
      item
        Name = 'Hsl5'
        DataType = ftFloat
      end
      item
        Name = 'Bgzl'
        DataType = ftFloat
      end
      item
        Name = 'Jbshl'
        DataType = ftFloat
      end
      item
        Name = 'Zldjj'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Fsshl'
        DataType = ftFloat
      end
      item
        Name = 'Zldjf'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Zldj'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Gjcl'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Aprvby'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Gjxx'
        DataType = ftInteger
      end
      item
        Name = 'Oyes'
        DataType = ftBoolean
      end
      item
        Name = 'Noca'
        DataType = ftBoolean
      end
      item
        Name = 'Qaps'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <>
    IndexFieldNames = 'rno;jh;rch'
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    StoreDefs = True
    Left = 24
    Top = 184
  end
  object yb4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Rno'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Jh'
        DataType = ftInteger
      end
      item
        Name = 'Rch'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Bh'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Cd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Ff1'
        DataType = ftInteger
      end
      item
        Name = 'Ff11'
        DataType = ftInteger
      end
      item
        Name = 'Ff12'
        DataType = ftInteger
      end
      item
        Name = 'Ff13'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftMemo
        Size = 100
      end>
    IndexDefs = <>
    IndexFieldNames = 'rno;jh;rch;id;bh'
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    StoreDefs = True
    Left = 24
    Top = 240
  end
  object yhb1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from yhb1'
    FieldDefs = <
      item
        Name = 'Rno'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Rrq'
        DataType = ftDate
      end
      item
        Name = 'Pname'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qc'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Hdo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Pno'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Sh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 160
      end
      item
        Name = 'Chck'
        DataType = ftBoolean
      end
      item
        Name = 'Qaps'
        DataType = ftString
        Size = 160
      end
      item
        Name = 'Oyes'
        DataType = ftBoolean
      end
      item
        Name = 'Noca'
        DataType = ftBoolean
      end
      item
        Name = 'Cktm'
        DataType = ftTime
      end>
    IndexDefs = <>
    IndexFieldNames = 'rno'
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    StoreDefs = True
    Left = 136
    Top = 72
  end
  object yhb2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Rno'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Jh'
        DataType = ftInteger
      end
      item
        Name = 'Rch'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Bh'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Cd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Qw'
        DataType = ftBoolean
      end
      item
        Name = 'Zd'
        DataType = ftBoolean
      end
      item
        Name = 'Yz'
        DataType = ftBoolean
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Cd1'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'rno;jh;rch;bh'
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    StoreDefs = True
    Left = 136
    Top = 128
  end
  object yhb3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Rno'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Jh'
        DataType = ftInteger
      end
      item
        Name = 'Rch'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Color'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Ph'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Mtr'
        DataType = ftFloat
      end
      item
        Name = 'Gh'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Btbfd'
        DataType = ftInteger
      end
      item
        Name = 'Bb'
        DataType = ftInteger
      end
      item
        Name = 'Ufd'
        DataType = ftInteger
      end
      item
        Name = 'Zff'
        DataType = ftInteger
      end
      item
        Name = 'Pff'
        DataType = ftFloat
      end
      item
        Name = 'Ums'
        DataType = ftFloat
      end
      item
        Name = 'Ubl'
        DataType = ftFloat
      end
      item
        Name = 'Ids'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'Bb1'
        DataType = ftInteger
      end
      item
        Name = 'Zl'
        DataType = ftInteger
      end
      item
        Name = 'Rsbj'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Sc'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Blb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Hx'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Wx'
        DataType = ftInteger
      end
      item
        Name = 'Th'
        DataType = ftInteger
      end
      item
        Name = 'Qm'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Btbfd1'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd2'
        DataType = ftInteger
      end
      item
        Name = 'Ufd1'
        DataType = ftInteger
      end
      item
        Name = 'Ufd2'
        DataType = ftInteger
      end
      item
        Name = 'Hsl'
        DataType = ftFloat
      end
      item
        Name = 'Zlcs1'
        DataType = ftFloat
      end
      item
        Name = 'Zlcs2'
        DataType = ftInteger
      end
      item
        Name = 'Zlcs3'
        DataType = ftInteger
      end
      item
        Name = 'Hd'
        DataType = ftFloat
      end
      item
        Name = 'Uom'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Mfd'
        DataType = ftInteger
      end
      item
        Name = 'Mtr1'
        DataType = ftFloat
      end
      item
        Name = 'Ums1'
        DataType = ftFloat
      end
      item
        Name = 'Zlxs'
        DataType = ftFloat
      end
      item
        Name = 'Jcsh'
        DataType = ftFloat
      end
      item
        Name = 'Scsh'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd3'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd4'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd5'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd6'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd7'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd8'
        DataType = ftInteger
      end
      item
        Name = 'Btbfd9'
        DataType = ftInteger
      end
      item
        Name = 'Ufd3'
        DataType = ftInteger
      end
      item
        Name = 'Ufd4'
        DataType = ftInteger
      end
      item
        Name = 'Ufd5'
        DataType = ftInteger
      end
      item
        Name = 'Ufd6'
        DataType = ftInteger
      end
      item
        Name = 'Ufd7'
        DataType = ftInteger
      end
      item
        Name = 'Ufd8'
        DataType = ftInteger
      end
      item
        Name = 'Ufd9'
        DataType = ftInteger
      end
      item
        Name = 'Shl'
        DataType = ftFloat
      end
      item
        Name = 'Zlcs4'
        DataType = ftInteger
      end
      item
        Name = 'Hsl1'
        DataType = ftFloat
      end
      item
        Name = 'Hsl2'
        DataType = ftFloat
      end
      item
        Name = 'Hsl3'
        DataType = ftFloat
      end
      item
        Name = 'Hsl4'
        DataType = ftFloat
      end
      item
        Name = 'Hsl5'
        DataType = ftFloat
      end
      item
        Name = 'Bgzl'
        DataType = ftFloat
      end
      item
        Name = 'Jbshl'
        DataType = ftFloat
      end
      item
        Name = 'Zldjj'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Fsshl'
        DataType = ftFloat
      end
      item
        Name = 'Zldjf'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Zldj'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Gjcl'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Aprvby'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Gjxx'
        DataType = ftInteger
      end
      item
        Name = 'Oyes'
        DataType = ftBoolean
      end
      item
        Name = 'Noca'
        DataType = ftBoolean
      end
      item
        Name = 'Qaps'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <>
    IndexFieldNames = 'rno;jh;rch'
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    StoreDefs = True
    Left = 136
    Top = 184
  end
  object yhb4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Rno'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Jh'
        DataType = ftInteger
      end
      item
        Name = 'Rch'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Bh'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Cd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Ff1'
        DataType = ftInteger
      end
      item
        Name = 'Ff11'
        DataType = ftFloat
      end
      item
        Name = 'Ff12'
        DataType = ftInteger
      end
      item
        Name = 'Ff13'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftMemo
        Size = 100
      end>
    IndexDefs = <>
    IndexFieldNames = 'rno;jh;rch;id;bh'
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    StoreDefs = True
    Left = 136
    Top = 240
  end
  object dsyb1: TDataSource
    DataSet = yb1
    OnDataChange = dsyb1DataChange
    Left = 80
    Top = 72
  end
  object dsyb2: TDataSource
    DataSet = yb2
    Left = 80
    Top = 128
  end
  object dsyb3: TDataSource
    DataSet = yb3
    OnDataChange = dsyb3DataChange
    Left = 80
    Top = 184
  end
  object dsyb4: TDataSource
    DataSet = yb4
    Left = 80
    Top = 240
  end
  object dsyhb1: TDataSource
    DataSet = yhb1
    OnDataChange = dsyhb1DataChange
    Left = 192
    Top = 72
  end
  object dsyhb2: TDataSource
    DataSet = yhb2
    Left = 192
    Top = 128
  end
  object dsyhb3: TDataSource
    DataSet = yhb3
    OnDataChange = dsyhb3DataChange
    Left = 192
    Top = 184
  end
  object dsyhb4: TDataSource
    DataSet = yhb4
    Left = 192
    Top = 240
  end
  object qry1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    Left = 80
    Top = 16
  end
  object qry2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    Left = 136
    Top = 16
  end
  object qry3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    Left = 192
    Top = 16
  end
  object qry4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    Left = 248
    Top = 16
  end
  object qry5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    Left = 248
    Top = 72
  end
  object qry6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    Left = 248
    Top = 128
  end
  object qry7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    Left = 248
    Top = 184
  end
  object qry8: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'impqcprvd'
    RemoteServer = Connection1
    Left = 248
    Top = 240
  end
end
