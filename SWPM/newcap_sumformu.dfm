object frmnewcap_sum: Tfrmnewcap_sum
  Left = 192
  Top = 114
  Caption = 'frmnewcap_sum'
  ClientHeight = 37
  ClientWidth = 269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oafty_tmp02_s'
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
        DataType = ftFloat
      end
      item
        Name = 'K01'
        DataType = ftFloat
      end
      item
        Name = 'U01'
        DataType = ftFloat
      end
      item
        Name = 'T01'
        DataType = ftFloat
      end
      item
        Name = 'B02'
        DataType = ftFloat
      end
      item
        Name = 'K02'
        DataType = ftFloat
      end
      item
        Name = 'U02'
        DataType = ftFloat
      end
      item
        Name = 'T02'
        DataType = ftFloat
      end
      item
        Name = 'B03'
        DataType = ftFloat
      end
      item
        Name = 'K03'
        DataType = ftFloat
      end
      item
        Name = 'U03'
        DataType = ftFloat
      end
      item
        Name = 'T03'
        DataType = ftFloat
      end
      item
        Name = 'B04'
        DataType = ftFloat
      end
      item
        Name = 'K04'
        DataType = ftFloat
      end
      item
        Name = 'U04'
        DataType = ftFloat
      end
      item
        Name = 'T04'
        DataType = ftFloat
      end
      item
        Name = 'B05'
        DataType = ftFloat
      end
      item
        Name = 'K05'
        DataType = ftFloat
      end
      item
        Name = 'U05'
        DataType = ftFloat
      end
      item
        Name = 'T05'
        DataType = ftFloat
      end
      item
        Name = 'TB'
        DataType = ftFloat
      end
      item
        Name = 'TK'
        DataType = ftFloat
      end
      item
        Name = 'TU'
        DataType = ftFloat
      end
      item
        Name = 'TTL'
        DataType = ftFloat
      end
      item
        Name = 'VDES'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'XDES'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 16
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 48
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 80
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
    Left = 144
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
    Left = 176
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
    Left = 208
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
    Left = 240
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 3810
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 3810
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
    Left = 112
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Planning '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 71702
        mmTop = 1588
        mmWidth = 50271
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 2910
        mmTop = 9260
        mmWidth = 10848
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 16669
        mmTop = 9260
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Year   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 65617
        mmTop = 9260
        mmWidth = 7408
        BandType = 0
      end
      object yr001: TppLabel
        UserName = 'yr001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 75142
        mmTop = 9260
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label15'
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 224632
        mmTop = 9260
        mmWidth = 13758
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
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 241565
        mmTop = 9260
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label16'
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 258763
        mmTop = 9260
        mmWidth = 7144
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
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 268288
        mmTop = 9260
        mmWidth = 6350
        BandType = 0
      end
      object x001: TppLabel
        UserName = 'x0001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week from    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 97367
        mmTop = 9260
        mmWidth = 15346
        BandType = 0
      end
      object wk001: TppLabel
        UserName = 'wk001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 120650
        mmTop = 9260
        mmWidth = 8467
        BandType = 0
      end
      object x002: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'to    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 132557
        mmTop = 9260
        mmWidth = 5027
        BandType = 0
      end
      object wk002: TppLabel
        UserName = 'wk002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 141023
        mmTop = 9260
        mmWidth = 8467
        BandType = 0
      end
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - Comparison 1    (Ex-fty)    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 123296
        mmTop = 2381
        mmWidth = 56092
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object pst02: TppShape
        UserName = 'Shape5'
        Brush.Color = 16711654
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 17727
        mmTop = 265
        mmWidth = 19844
        BandType = 4
      end
      object spt02: TppShape
        UserName = 'Shape4'
        Brush.Color = 16711654
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 68263
        mmTop = 265
        mmWidth = 10583
        BandType = 4
      end
      object spt01: TppShape
        UserName = 'Shape3'
        Brush.Color = 13092603
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 68263
        mmTop = 265
        mmWidth = 10583
        BandType = 4
      end
      object spa01: TppShape
        UserName = 'spa01'
        Brush.Color = 13092603
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 265
        mmWidth = 7673
        BandType = 4
      end
      object sp101: TppShape
        UserName = 'sp101'
        Brush.Color = 16711654
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 265
        mmWidth = 5556
        BandType = 4
      end
      object pst01: TppShape
        UserName = 'pst01'
        Brush.Color = 13092603
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 17727
        mmTop = 265
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'vdes'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 2381
        mmTop = 265
        mmWidth = 8202
        BandType = 4
      end
      object t001: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TB'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 36110
        mmTop = 265
        mmWidth = 11515
        BandType = 4
      end
      object t002: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TK'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 40482
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object t003: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TU'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 65849
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object t004: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTL'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 63299
        mmTop = 265
        mmWidth = 14224
        BandType = 4
      end
      object ax001: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 73618
        mmTop = 265
        mmWidth = 14224
        BandType = 4
      end
      object ax002: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 80624
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ax003: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 105834
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax004: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 104807
        mmTop = 265
        mmWidth = 12869
        BandType = 4
      end
      object ax006: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 122798
        mmTop = 265
        mmWidth = 15579
        BandType = 4
      end
      object ax007: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 146547
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax008: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 156072
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax009: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 152887
        mmTop = 265
        mmWidth = 15579
        BandType = 4
      end
      object ax011: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 188087
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax012: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 197612
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax013: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 207137
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax014: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 218186
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText74: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SDSC'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 17727
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 37835
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 78581
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ax005: TppDBText
        UserName = 'ax005'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B04'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 121973
        mmTop = 265
        mmWidth = 6096
        BandType = 4
      end
      object ax010: TppDBText
        UserName = 'ax010'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K04'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 173302
        mmTop = 265
        mmWidth = 6096
        BandType = 4
      end
      object ax015: TppDBText
        UserName = 'ax015'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U04'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 225458
        mmTop = 265
        mmWidth = 4741
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 282311
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'XDES'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup8
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2910
        mmLeft = 11113
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 10583
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine80: TppLine
        UserName = 'Line80'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 78846
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine89: TppLine
        UserName = 'Line89'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 67733
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1058
      mmPrintPosition = 0
    end
    object ppGroup7: TppGroup
      BreakName = 'TM'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10848
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape1'
          mmHeight = 10319
          mmLeft = 2381
          mmTop = 529
          mmWidth = 280194
          BandType = 3
          GroupNo = 0
        end
        object ppShape10: TppShape
          UserName = 'Shape10'
          Brush.Color = 13092603
          Pen.Style = psClear
          mmHeight = 4763
          mmLeft = 68263
          mmTop = 5821
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object w0001: TppLabel
          UserName = 'x0002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Week '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3175
          mmTop = 4498
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
        end
        object ppLine25: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 37835
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine26: TppLine
          UserName = 'Line5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 78581
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object tc01: TppLabel
          UserName = 'tc01'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 40481
          mmTop = 1588
          mmWidth = 35719
          BandType = 3
          GroupNo = 0
        end
        object ppLabel100: TppLabel
          UserName = 'Label201'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 39952
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel101: TppLabel
          UserName = 'Label22'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 49742
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel102: TppLabel
          UserName = 'Label47'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 59531
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel103: TppLabel
          UserName = 'Label48'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 70115
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLine27: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 38100
          mmTop = 5556
          mmWidth = 244211
          BandType = 3
          GroupNo = 0
        end
        object ppLine28: TppLine
          UserName = 'Line6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 129117
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine29: TppLine
          UserName = 'Line7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 179917
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine30: TppLine
          UserName = 'Line8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 230717
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object at001: TppLabel
          UserName = 'Label26'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 80433
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at002: TppLabel
          UserName = 'Label27'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 89959
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at003: TppLabel
          UserName = 'Label28'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 99484
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at004: TppLabel
          UserName = 'Label43'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 110331
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at006: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 130704
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at007: TppLabel
          UserName = 'Label45'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 140229
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at008: TppLabel
          UserName = 'Label49'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 149754
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at009: TppLabel
          UserName = 'Label50'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 160867
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at011: TppLabel
          UserName = 'Label51'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 181769
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at012: TppLabel
          UserName = 'Label52'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 191294
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at013: TppLabel
          UserName = 'Label53'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 200819
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at014: TppLabel
          UserName = 'Label501'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 211932
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ac01: TppLabel
          UserName = 'ac01'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'TEAM [A]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 93398
          mmTop = 1588
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ac02: TppLabel
          UserName = 'ac02'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'TEAM [B]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 144727
          mmTop = 1588
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ac03: TppLabel
          UserName = 'ac03'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'TEAM [C]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 195263
          mmTop = 1588
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object at005: TppLabel
          UserName = 'at005'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '    %   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 120121
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at010: TppLabel
          UserName = 'Label503'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '    %   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 170657
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at015: TppLabel
          UserName = 'at015'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '    %   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 221721
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLine79: TppLine
          UserName = 'Line79'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 78846
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine94: TppLine
          UserName = 'Line94'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 67733
          mmTop = 5821
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 19050
        mmPrintPosition = 0
        object sp0001: TppShape
          UserName = 'Shape2'
          mmHeight = 12435
          mmLeft = 2381
          mmTop = 6085
          mmWidth = 280194
          BandType = 5
          GroupNo = 0
        end
        object ppRichText1: TppRichText
          UserName = 'RichText1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RichText1'
          RichText = 
            '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
            '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
            'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
            't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
            'ojection / Scheduled based on Ex-fty\lang1028\f0\par'#13#10'\lang1033\' +
            'f2           How to measure PH Fty capacity? - - - - - -\par'#13#10'  ' +
            '        What is GSD Fty capacity? - - - - - -\par'#13#10'\pard\lang102' +
            '8\f0\par'#13#10'}'#13#10#0
          mmHeight = 11377
          mmLeft = 2910
          mmTop = 6615
          mmWidth = 277813
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeftMargin = 794
        end
        object ppRichText2: TppRichText
          UserName = 'RichText2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RichText2'
          RichText = 
            '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
            '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
            'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
            't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
            'ojection / Scheduled based on T3\lang1028\f0\par'#13#10'\lang1033\f2  ' +
            '         How to measure PH Fty capacity? - - - - - -\par'#13#10'      ' +
            '    What is GSD Fty capacity? - - - - - -\par'#13#10'\pard\lang1028\f0' +
            '\par'#13#10'}'#13#10#0
          mmHeight = 11377
          mmLeft = 2910
          mmTop = 6615
          mmWidth = 277813
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeftMargin = 794
        end
        object ttl001: TppLabel
          UserName = 'ttl001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2921
          mmLeft = 2910
          mmTop = 1588
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'WK'
      DataPipeline = ppDBPipeline2
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand8: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 529
        mmPrintPosition = 0
        object ppLine38: TppLine
          UserName = 'Line38'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 2381
          mmTop = 0
          mmWidth = 280194
          BandType = 5
          GroupNo = 1
        end
        object ppLine49: TppLine
          UserName = 'Line49'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 2381
          mmTop = 264
          mmWidth = 280194
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'XDES'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand13: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand13BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLine61: TppLine
          UserName = 'Line61'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 17198
          mmTop = 0
          mmWidth = 265378
          BandType = 5
          GroupNo = 2
        end
        object ppLine73: TppLine
          UserName = 'Line73'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 10583
          mmTop = 3969
          mmWidth = 271992
          BandType = 5
          GroupNo = 2
        end
        object xt001: TppLabel
          UserName = 'xt001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 2910
          mmLeft = 17727
          mmTop = 529
          mmWidth = 6350
          BandType = 5
          GroupNo = 2
        end
        object ppLine74: TppLine
          UserName = 'Line74'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 2381
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object ppLine75: TppLine
          UserName = 'Line75'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 10583
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object ppLine76: TppLine
          UserName = 'Line76'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 282311
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 2
        end
        object ppLine32: TppLine
          UserName = 'Line32'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 17198
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup17: TppGroup
      BreakName = 'XDES'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group17'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand17: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand17: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand17BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine1: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 17198
          mmTop = 0
          mmWidth = 265378
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
