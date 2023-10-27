object frmordersummary_03: Tfrmordersummary_03
  Left = 192
  Top = 114
  Caption = 'frmordersummary_03'
  ClientHeight = 237
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 64
    Width = 39
    Height = 13
    Caption = 'Season '
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 47
    Height = 13
    Caption = 'Customer '
  end
  object Label3: TLabel
    Left = 32
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object ComboBox1: TComboBox
    Left = 240
    Top = 64
    Width = 81
    Height = 21
    TabOrder = 0
    Items.Strings = (
      '81'
      '83'
      '84'
      '91'
      '92'
      '93'
      '94')
  end
  object ComboBox2: TComboBox
    Left = 88
    Top = 64
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    Items.Strings = (
      'BALE'
      'CALD'
      'CANA'
      'CANN'
      'CMYR'
      'COUR'
      'DAXO'
      'ESSE'
      'ETAA'
      'ETAM'
      'EBIM'
      'GAPA'
      'HBIB'
      'HBIU'
      'LARD'
      'MASC'
      'MAST'
      'MEXX'
      'MONO'
      'MNSU'
      'NEXT'
      'PLUK'
      'SALL'
      'SARA'
      'TAIL'
      'TAMA'
      'TORD'
      'WARN'
      'CNAP'
      'QVCP'
      'AFGH'
      'AFGD')
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 184
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
    Top = 184
    Width = 73
    Height = 25
    Caption = 'Summary'
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object rg01: TRadioGroup
    Left = 32
    Top = 96
    Width = 289
    Height = 33
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'LWPM'
      'SOPC')
    TabOrder = 4
  end
  object ComboBox3: TComboBox
    Left = 88
    Top = 32
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    Text = 'SL'
    Items.Strings = (
      'ALL'
      'SL'
      'KB'
      'FJ')
  end
  object BitBtn3: TBitBtn
    Left = 176
    Top = 184
    Width = 65
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 6
  end
  object xh1: TRadioGroup
    Left = 32
    Top = 136
    Width = 289
    Height = 33
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Summary'
      'Out Summary')
    TabOrder = 7
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select distinct jhrs1,count(cstyle) as s1,sum(scqty) as s2,count' +
      '(acol) as s3 from tbl_tmp_ordsummary group by jhrs1'
    FieldDefs = <
      item
        Name = 'JHRS1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'S1'
        DataType = ftInteger
      end
      item
        Name = 'S2'
        DataType = ftFloat
      end
      item
        Name = 'S3'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 8
    Top = 65528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_tmp_ordsummary'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 40
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 72
    Top = 65528
  end
  object Query4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'CFMTM'
        DataType = ftDateTime
      end
      item
        Name = 'SHPD'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'OSQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 104
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 65528
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 168
    Top = 65528
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 200
    Top = 65528
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'JHRS1'
      FieldName = 'JHRS1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'S1'
      FieldName = 'S1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'S2'
      FieldName = 'S2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'S3'
      FieldName = 'S3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 232
    Top = 65528
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'CFMTM'
        DataType = ftDateTime
      end
      item
        Name = 'SHPD'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'OSQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 184
    Top = 24
  end
  object DataSet2: TADOQuery
    Connection = frmmain.ADOConnection1
    Parameters = <>
    Left = 296
    Top = 65528
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
    Top = 65528
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppTitleBand2: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'X'#39'mas 08 Order Summary - SALL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 57944
        mmTop = 6615
        mmWidth = 149754
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 196850
        mmTop = 14023
        mmWidth = 14288
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
        VarType = vtDateTime
        DisplayFormat = 'yyyy-MM-dd hh:nn:ss'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 212990
        mmTop = 14023
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 245798
        mmTop = 14023
        mmWidth = 7408
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
        mmHeight = 3175
        mmLeft = 255059
        mmTop = 14023
        mmWidth = 7144
        BandType = 0
      end
      object subtitle001: TppLabel
        UserName = 'subtitle001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(LWPM)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 101600
        mmTop = 12700
        mmWidth = 49477
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'XH'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 1736
        mmTop = 1058
        mmWidth = 1185
        BandType = 4
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Stretch = True
        mmHeight = 6085
        mmLeft = 3175
        mmTop = 0
        mmWidth = 279136
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ck003: TppMemo
          UserName = 'ck003'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          Stretch = True
          Transparent = True
          Visible = False
          mmHeight = 4233
          mmLeft = 219605
          mmTop = 794
          mmWidth = 14817
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object x06: TppMemo
          UserName = 'x06'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          Stretch = True
          Transparent = True
          mmHeight = 4233
          mmLeft = 227542
          mmTop = 794
          mmWidth = 53711
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'JHRS1'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 4233
          mmTop = 1323
          mmWidth = 11515
          BandType = 4
        end
        object x0001: TppLabel
          UserName = 'x0001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 38365
          mmTop = 1323
          mmWidth = 2371
          BandType = 4
        end
        object x01: TppLabel
          UserName = 'x01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 78317
          mmTop = 1323
          mmWidth = 3556
          BandType = 4
        end
        object ra01: TppLabel
          UserName = 'ra01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 82286
          mmTop = 1323
          mmWidth = 3556
          BandType = 4
        end
        object x02: TppLabel
          UserName = 'x02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 86784
          mmTop = 1323
          mmWidth = 3556
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
          DataField = 'S1'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 93398
          mmTop = 1323
          mmWidth = 2582
          BandType = 4
        end
        object x03: TppLabel
          UserName = 'x03'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 124619
          mmTop = 1323
          mmWidth = 7144
          BandType = 4
        end
        object ra02: TppLabel
          UserName = 'ra02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 132557
          mmTop = 1323
          mmWidth = 7144
          BandType = 4
        end
        object x04: TppLabel
          UserName = 'x04'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 140494
          mmTop = 1323
          mmWidth = 7112
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
          DataField = 'S2'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 154316
          mmTop = 1323
          mmWidth = 2582
          BandType = 4
        end
        object c01: TppLabel
          UserName = 'c01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 157692
          mmTop = 1323
          mmWidth = 3440
          BandType = 4
        end
        object c02: TppLabel
          UserName = 'c02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 162984
          mmTop = 1323
          mmWidth = 3440
          BandType = 4
        end
        object x05: TppMemo
          UserName = 'x05'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          Stretch = True
          Transparent = True
          Visible = False
          mmHeight = 4233
          mmLeft = 235215
          mmTop = 794
          mmWidth = 14817
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppLine34: TppLine
          UserName = 'Line34'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 37835
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ra03: TppMemo
          UserName = 'ra03'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          Stretch = True
          Transparent = True
          Visible = False
          mmHeight = 4233
          mmLeft = 250825
          mmTop = 794
          mmWidth = 14817
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppLine91: TppLine
          UserName = 'Line91'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 58738
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine92: TppLine
          UserName = 'Line92'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 81756
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine93: TppLine
          UserName = 'Line93'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 172244
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine95: TppLine
          UserName = 'Line95'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 86254
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine96: TppLine
          UserName = 'Line96'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 227013
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine97: TppLine
          UserName = 'Line97'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 91811
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine98: TppLine
          UserName = 'Line98'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 139965
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine99: TppLine
          UserName = 'Line99'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 147902
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine100: TppLine
          UserName = 'Line100'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 157163
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine101: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 162454
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine102: TppLine
          UserName = 'Line102'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 167217
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine103: TppLine
          UserName = 'Line103'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 132027
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine104: TppLine
          UserName = 'Line104'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 96309
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 41804
          mmTop = 0
          mmWidth = 1588
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
          DataField = 'DCDATE'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2032
          mmLeft = 42333
          mmTop = 1323
          mmWidth = 6435
          BandType = 4
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 50006
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppDBText11: TppDBText
          UserName = 'DBText101'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SHPM'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2032
          mmLeft = 50536
          mmTop = 1323
          mmWidth = 8382
          BandType = 4
        end
        object ppLine109: TppLine
          UserName = 'Line109'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 124090
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine114: TppLine
          UserName = 'Line114'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 77788
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ck001: TppLabel
          UserName = 'ck001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 72761
          mmTop = 1323
          mmWidth = 4763
          BandType = 4
        end
        object ck002: TppLabel
          UserName = 'ck002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 116681
          mmTop = 1323
          mmWidth = 7144
          BandType = 4
        end
        object sc002: TppLabel
          UserName = 'sc002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 168275
          mmTop = 1323
          mmWidth = 3704
          BandType = 4
        end
        object rpt003: TppMemo
          UserName = 'rpt003'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          Stretch = True
          Transparent = True
          mmHeight = 4233
          mmLeft = 172773
          mmTop = 794
          mmWidth = 53711
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppLine150: TppLine
          UserName = 'Line150'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 116152
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object rpt001: TppLabel
          UserName = 'rpt001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 59267
          mmTop = 1323
          mmWidth = 3556
          BandType = 4
        end
        object rpt002: TppLabel
          UserName = 'rpt002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 96838
          mmTop = 1323
          mmWidth = 5927
          BandType = 4
        end
        object rnc003: TppMemo
          UserName = 'rnc003'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          Stretch = True
          Transparent = True
          Visible = False
          mmHeight = 4233
          mmLeft = 188384
          mmTop = 794
          mmWidth = 14817
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object rvs003: TppMemo
          UserName = 'rvs003'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          Stretch = True
          Transparent = True
          Visible = False
          mmHeight = 4233
          mmLeft = 203994
          mmTop = 794
          mmWidth = 14817
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object rnc002: TppLabel
          UserName = 'rnc002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 103452
          mmTop = 1323
          mmWidth = 5821
          BandType = 4
        end
        object rvs002: TppLabel
          UserName = 'rvs002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 110067
          mmTop = 1323
          mmWidth = 5927
          BandType = 4
        end
        object ppLine187: TppLine
          UserName = 'Line187'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 102923
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object rnc001: TppLabel
          UserName = 'rnc001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 64558
          mmTop = 1323
          mmWidth = 3556
          BandType = 4
        end
        object rvs001: TppLabel
          UserName = 'rvs001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 68527
          mmTop = 1323
          mmWidth = 3556
          BandType = 4
        end
      end
      object ppLine194: TppLine
        UserName = 'Line1901'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 67998
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine190: TppLine
        UserName = 'Line190'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 64029
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine185: TppLine
        UserName = 'Line185'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 109538
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine153: TppLine
        UserName = 'Line153'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 72231
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 65352
      mmPrintPosition = 0
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 59796
        mmLeft = 3175
        mmTop = 5027
        mmWidth = 123031
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad: - Revision for flow style(s)   '
        Color = 8953851
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        mmHeight = 2910
        mmLeft = 3175
        mmTop = 1058
        mmWidth = 43392
        BandType = 7
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Range(s) - Out :  '
        Color = 8953851
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        mmHeight = 2646
        mmLeft = 150548
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Style(s) - Out :  '
        Color = 8953851
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        mmHeight = 2646
        mmLeft = 150548
        mmTop = 5292
        mmWidth = 15610
        BandType = 7
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Color(s) - Out :  '
        Color = 8953851
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        mmHeight = 2646
        mmLeft = 150548
        mmTop = 9525
        mmWidth = 16140
        BandType = 7
      end
      object ox01: TppLabel
        UserName = 'ox01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 171186
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ox02: TppLabel
        UserName = 'ox02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 171186
        mmTop = 5292
        mmWidth = 15610
        BandType = 7
      end
      object ox03: TppLabel
        UserName = 'ox03'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 171186
        mmTop = 9525
        mmWidth = 16140
        BandType = 7
      end
      object ppLabel105: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(Based on projection figure)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2582
        mmLeft = 150548
        mmTop = 13758
        mmWidth = 29549
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'TM'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand3BeforePrint
        Visible = False
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 34396
        mmPrintPosition = 0
        object ppRegion2: TppRegion
          UserName = 'Region2'
          mmHeight = 32544
          mmLeft = 3175
          mmTop = 794
          mmWidth = 279136
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppShape10: TppShape
            UserName = 'Shape10'
            Brush.Color = 10024081
            Pen.Style = psClear
            mmHeight = 26988
            mmLeft = 50536
            mmTop = 5821
            mmWidth = 20108
            BandType = 5
            GroupNo = 0
          end
          object ppLine122: TppLine
            UserName = 'Line122'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 1588
            mmLeft = 3175
            mmTop = 5292
            mmWidth = 278871
            BandType = 5
            GroupNo = 0
          end
          object ppLine127: TppLine
            UserName = 'Line127'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 32015
            mmLeft = 50271
            mmTop = 1059
            mmWidth = 2381
            BandType = 5
            GroupNo = 0
          end
          object ppLabel62: TppLabel
            UserName = 'Label62'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Order Summary Status '
            Color = 8953851
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            mmHeight = 2646
            mmLeft = 4233
            mmTop = 2117
            mmWidth = 46038
            BandType = 5
            GroupNo = 0
          end
          object ppLabel81: TppLabel
            UserName = 'Label81'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Time Table (Dead Date)  '
            Color = 8953851
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            mmHeight = 2646
            mmLeft = 50536
            mmTop = 2117
            mmWidth = 230717
            BandType = 5
            GroupNo = 0
          end
          object ppLine128: TppLine
            UserName = 'Line128'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 27517
            mmLeft = 39158
            mmTop = 5557
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object ppLine129: TppLine
            UserName = 'Line129'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 27517
            mmLeft = 70379
            mmTop = 5557
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object ppLabel82: TppLabel
            UserName = 'Label82'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Description '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 13229
            mmTop = 6615
            mmWidth = 12171
            BandType = 5
            GroupNo = 0
          end
          object ppLabel83: TppLabel
            UserName = 'Label83'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Code '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 41804
            mmTop = 6615
            mmWidth = 5821
            BandType = 5
            GroupNo = 0
          end
          object ppLabel84: TppLabel
            UserName = 'Label84'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Projection  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 4763
            mmTop = 29369
            mmWidth = 11642
            BandType = 5
            GroupNo = 0
          end
          object ppLabel85: TppLabel
            UserName = 'Label85'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Greige commitment  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 4763
            mmTop = 25400
            mmWidth = 21167
            BandType = 5
            GroupNo = 0
          end
          object ppLabel86: TppLabel
            UserName = 'Label86'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'SKU commitment  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 4763
            mmTop = 21432
            mmWidth = 18785
            BandType = 5
            GroupNo = 0
          end
          object ppLabel87: TppLabel
            UserName = 'Label87'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Garment purchase order issued  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 4763
            mmTop = 17463
            mmWidth = 33073
            BandType = 5
            GroupNo = 0
          end
          object ppLabel88: TppLabel
            UserName = 'Label88'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'PJ  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 41540
            mmTop = 29369
            mmWidth = 3704
            BandType = 5
            GroupNo = 0
          end
          object ppLabel89: TppLabel
            UserName = 'Label89'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'C1  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 41540
            mmTop = 25400
            mmWidth = 3969
            BandType = 5
            GroupNo = 0
          end
          object ppLabel90: TppLabel
            UserName = 'Label90'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'C2  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 41540
            mmTop = 21432
            mmWidth = 3969
            BandType = 5
            GroupNo = 0
          end
          object ppLabel91: TppLabel
            UserName = 'Label91'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'PO  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 41540
            mmTop = 17463
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object ppLabel92: TppLabel
            UserName = 'Label92'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Plan '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 57679
            mmTop = 6615
            mmWidth = 5027
            BandType = 5
            GroupNo = 0
          end
          object sd01: TppLabel
            UserName = 'sd01'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 71438
            mmTop = 29369
            mmWidth = 3704
            BandType = 5
            GroupNo = 0
          end
          object sd02: TppLabel
            UserName = 'sd02'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 71438
            mmTop = 25400
            mmWidth = 3969
            BandType = 5
            GroupNo = 0
          end
          object sd03: TppLabel
            UserName = 'sd03'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 71438
            mmTop = 21432
            mmWidth = 3969
            BandType = 5
            GroupNo = 0
          end
          object sd04: TppLabel
            UserName = 'sd04'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 71438
            mmTop = 17463
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object ed01: TppLabel
            UserName = 'ed01'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 51329
            mmTop = 29369
            mmWidth = 3704
            BandType = 5
            GroupNo = 0
          end
          object ed02: TppLabel
            UserName = 'ed02'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 51329
            mmTop = 25400
            mmWidth = 3969
            BandType = 5
            GroupNo = 0
          end
          object ed03: TppLabel
            UserName = 'ed03'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 51329
            mmTop = 21432
            mmWidth = 3969
            BandType = 5
            GroupNo = 0
          end
          object ed04: TppLabel
            UserName = 'Label1'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 51329
            mmTop = 17463
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object ppLine130: TppLine
            UserName = 'Line130'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 1588
            mmLeft = 3175
            mmTop = 12700
            mmWidth = 278871
            BandType = 5
            GroupNo = 0
          end
          object ppLine123: TppLine
            UserName = 'Line1301'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 1588
            mmLeft = 3175
            mmTop = 16669
            mmWidth = 278871
            BandType = 5
            GroupNo = 0
          end
          object ppLabel97: TppLabel
            UserName = 'Label97'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'DC date '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 4763
            mmTop = 13494
            mmWidth = 8731
            BandType = 5
            GroupNo = 0
          end
          object ppLabel98: TppLabel
            UserName = 'Label98'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'DC '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 41540
            mmTop = 13494
            mmWidth = 3641
            BandType = 5
            GroupNo = 0
          end
          object ppLine124: TppLine
            UserName = 'Line124'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 1323
            mmLeft = 3175
            mmTop = 20638
            mmWidth = 278871
            BandType = 5
            GroupNo = 0
          end
          object ppLine125: TppLine
            UserName = 'Line125'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 1323
            mmLeft = 3175
            mmTop = 24607
            mmWidth = 278871
            BandType = 5
            GroupNo = 0
          end
          object ppLine126: TppLine
            UserName = 'Line126'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 1323
            mmLeft = 3175
            mmTop = 28575
            mmWidth = 278871
            BandType = 5
            GroupNo = 0
          end
          object ppLine131: TppLine
            UserName = 'Line131'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 23548
            mmLeft = 91546
            mmTop = 9525
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object ppLine132: TppLine
            UserName = 'Line132'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 23548
            mmLeft = 112713
            mmTop = 9525
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object ppLine133: TppLine
            UserName = 'Line133'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 24077
            mmLeft = 133879
            mmTop = 9260
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object ppLine134: TppLine
            UserName = 'Line134'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 24077
            mmLeft = 155046
            mmTop = 9260
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object ppLine135: TppLine
            UserName = 'Line135'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 24077
            mmLeft = 176213
            mmTop = 9260
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object ppLine136: TppLine
            UserName = 'Line136'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 23813
            mmLeft = 197380
            mmTop = 9260
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object ppLine137: TppLine
            UserName = 'Line137'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 24077
            mmLeft = 239713
            mmTop = 9260
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object ppLine140: TppLine
            UserName = 'Line1302'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 2117
            mmLeft = 70644
            mmTop = 9260
            mmWidth = 211403
            BandType = 5
            GroupNo = 0
          end
          object ppLabel93: TppLabel
            UserName = 'Label93'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = 'Actual  (SEQ / # of range)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 159544
            mmTop = 6085
            mmWidth = 25442
            BandType = 5
            GroupNo = 0
          end
          object s001: TppLabel
            UserName = 's001'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = '  1   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 2646
            mmLeft = 79111
            mmTop = 9790
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object s002: TppLabel
            UserName = 's002'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = '  2   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 2646
            mmLeft = 99484
            mmTop = 9790
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object s003: TppLabel
            UserName = 'Label2'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = '  3   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 2646
            mmLeft = 121444
            mmTop = 9790
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object s004: TppLabel
            UserName = 'Label1001'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = '  4   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 2646
            mmLeft = 142346
            mmTop = 9790
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object s005: TppLabel
            UserName = 's005'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = '  5   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 2646
            mmLeft = 163248
            mmTop = 9790
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object s006: TppLabel
            UserName = 'Label1002'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = '  6   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 2646
            mmLeft = 184944
            mmTop = 9790
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object s007: TppLabel
            UserName = 's007'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = '  7   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 2646
            mmLeft = 206640
            mmTop = 9790
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object s008: TppLabel
            UserName = 'Label1003'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = '  8   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 2646
            mmLeft = 227013
            mmTop = 9790
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object pdt001: TppLabel
            UserName = 'pdt001'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 51329
            mmTop = 13494
            mmWidth = 18785
            BandType = 5
            GroupNo = 0
          end
          object adc001: TppLabel
            UserName = 'adc001'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2667
            mmLeft = 71438
            mmTop = 13494
            mmWidth = 19558
            BandType = 5
            GroupNo = 0
          end
          object adc002: TppLabel
            UserName = 'adc002'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 92604
            mmTop = 13494
            mmWidth = 19579
            BandType = 5
            GroupNo = 0
          end
          object adc003: TppLabel
            UserName = 'adc003'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 113771
            mmTop = 13494
            mmWidth = 19579
            BandType = 5
            GroupNo = 0
          end
          object adc004: TppLabel
            UserName = 'adc004'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 134938
            mmTop = 13494
            mmWidth = 19579
            BandType = 5
            GroupNo = 0
          end
          object adc005: TppLabel
            UserName = 'adc005'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 156104
            mmTop = 13494
            mmWidth = 19579
            BandType = 5
            GroupNo = 0
          end
          object adc006: TppLabel
            UserName = 'adc006'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 177271
            mmTop = 13494
            mmWidth = 19579
            BandType = 5
            GroupNo = 0
          end
          object adc007: TppLabel
            UserName = 'adc007'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 198438
            mmTop = 13494
            mmWidth = 19579
            BandType = 5
            GroupNo = 0
          end
          object adc008: TppLabel
            UserName = 'adc008'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 219605
            mmTop = 13494
            mmWidth = 19579
            BandType = 5
            GroupNo = 0
          end
          object ppLine138: TppLine
            UserName = 'Line138'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 24077
            mmLeft = 260880
            mmTop = 9260
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object ppLine139: TppLine
            UserName = 'Line139'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 24077
            mmLeft = 218546
            mmTop = 9260
            mmWidth = 2646
            BandType = 5
            GroupNo = 0
          end
          object s009: TppLabel
            UserName = 's009'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = '  9   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 2582
            mmLeft = 249015
            mmTop = 9790
            mmWidth = 4149
            BandType = 5
            GroupNo = 0
          end
          object adc009: TppLabel
            UserName = 'adc009'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 240771
            mmTop = 13494
            mmWidth = 19579
            BandType = 5
            GroupNo = 0
          end
          object s010: TppLabel
            UserName = 's010'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = '  8   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 2646
            mmLeft = 269346
            mmTop = 9790
            mmWidth = 4233
            BandType = 5
            GroupNo = 0
          end
          object adc010: TppLabel
            UserName = 'adc010'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 261938
            mmTop = 13494
            mmWidth = 19579
            BandType = 5
            GroupNo = 0
          end
          object d1004: TppLabel
            UserName = 'd1004'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2667
            mmLeft = 92604
            mmTop = 17463
            mmWidth = 6096
            BandType = 5
            GroupNo = 0
          end
          object d1003: TppLabel
            UserName = 'd1003'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2667
            mmLeft = 92604
            mmTop = 21431
            mmWidth = 6096
            BandType = 5
            GroupNo = 0
          end
          object d1002: TppLabel
            UserName = 'd1002'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2667
            mmLeft = 92604
            mmTop = 25400
            mmWidth = 6096
            BandType = 5
            GroupNo = 0
          end
          object d1001: TppLabel
            UserName = 'd1001'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 92604
            mmTop = 29369
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d2004: TppLabel
            UserName = 'd2004'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 113771
            mmTop = 17463
            mmWidth = 6085
            BandType = 5
            GroupNo = 0
          end
          object d2003: TppLabel
            UserName = 'd2003'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 113771
            mmTop = 21431
            mmWidth = 6085
            BandType = 5
            GroupNo = 0
          end
          object d2002: TppLabel
            UserName = 'd2002'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 113771
            mmTop = 25400
            mmWidth = 6085
            BandType = 5
            GroupNo = 0
          end
          object d2001: TppLabel
            UserName = 'd2001'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2646
            mmLeft = 113771
            mmTop = 29369
            mmWidth = 6085
            BandType = 5
            GroupNo = 0
          end
          object d3004: TppLabel
            UserName = 'd3004'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 134938
            mmTop = 17463
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d3003: TppLabel
            UserName = 'd3003'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 134938
            mmTop = 21431
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d3002: TppLabel
            UserName = 'd3002'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 134938
            mmTop = 25400
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d3001: TppLabel
            UserName = 'd3001'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 134938
            mmTop = 29369
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d4001: TppLabel
            UserName = 'd4001'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 156104
            mmTop = 29369
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d4002: TppLabel
            UserName = 'd4002'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 156104
            mmTop = 25400
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d4003: TppLabel
            UserName = 'd4003'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 156104
            mmTop = 21431
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d4004: TppLabel
            UserName = 'd4004'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 156104
            mmTop = 17463
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d5004: TppLabel
            UserName = 'd5004'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 177271
            mmTop = 17463
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d6004: TppLabel
            UserName = 'd6004'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 198438
            mmTop = 17463
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d5003: TppLabel
            UserName = 'd5003'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 177271
            mmTop = 21431
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d6003: TppLabel
            UserName = 'd6003'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 198438
            mmTop = 21431
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d5002: TppLabel
            UserName = 'd5002'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 177271
            mmTop = 25400
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d6002: TppLabel
            UserName = 'd6002'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 198438
            mmTop = 25400
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d5001: TppLabel
            UserName = 'd5001'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 177271
            mmTop = 29369
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d6001: TppLabel
            UserName = 'd6001'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 198438
            mmTop = 29369
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d7001: TppLabel
            UserName = 'd7001'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 219605
            mmTop = 29369
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d8001: TppLabel
            UserName = 'd8001'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2667
            mmLeft = 240771
            mmTop = 29369
            mmWidth = 6096
            BandType = 5
            GroupNo = 0
          end
          object d8002: TppLabel
            UserName = 'd8002'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2667
            mmLeft = 240771
            mmTop = 25400
            mmWidth = 6096
            BandType = 5
            GroupNo = 0
          end
          object d8003: TppLabel
            UserName = 'd8003'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2667
            mmLeft = 240771
            mmTop = 21431
            mmWidth = 6096
            BandType = 5
            GroupNo = 0
          end
          object d8004: TppLabel
            UserName = 'd8004'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2667
            mmLeft = 240771
            mmTop = 17463
            mmWidth = 6096
            BandType = 5
            GroupNo = 0
          end
          object d7004: TppLabel
            UserName = 'd7004'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 219605
            mmTop = 17463
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d7003: TppLabel
            UserName = 'd7003'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 219605
            mmTop = 21431
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
          object d7002: TppLabel
            UserName = 'd7002'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 6
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2582
            mmLeft = 219605
            mmTop = 25400
            mmWidth = 6054
            BandType = 5
            GroupNo = 0
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'TM'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppSubReport1: TppSubReport
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ParentPrinterSetup = False
          TraverseAllData = False
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 265
          mmWidth = 284427
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppDBPipeline1
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
            Version = '11.07'
            mmColumnWidth = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppTitleBand1: TppTitleBand
              mmBottomOffset = 0
              mmHeight = 15081
              mmPrintPosition = 0
              object ppShape1: TppShape
                UserName = 'Shape1'
                mmHeight = 14023
                mmLeft = 3175
                mmTop = 1323
                mmWidth = 164307
                BandType = 1
              end
              object ppLabel1: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Style Item '
                Color = 8953851
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                mmHeight = 2646
                mmLeft = 3440
                mmTop = 1852
                mmWidth = 34396
                BandType = 1
              end
              object ppLabel2: TppLabel
                UserName = 'Label2'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Styles '
                Color = 8953851
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                TextAlignment = taCentered
                mmHeight = 2646
                mmLeft = 43392
                mmTop = 1852
                mmWidth = 42069
                BandType = 1
              end
              object ppLabel3: TppLabel
                UserName = 'Label3'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty (pcs)  '
                Color = 8953851
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                TextAlignment = taCentered
                mmHeight = 2646
                mmLeft = 85725
                mmTop = 1852
                mmWidth = 66146
                BandType = 1
              end
              object ppLine1: TppLine
                UserName = 'Line1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10583
                mmLeft = 58473
                mmTop = 4763
                mmWidth = 1852
                BandType = 1
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 14023
                mmLeft = 85461
                mmTop = 1323
                mmWidth = 2646
                BandType = 1
              end
              object ppLine3: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 14023
                mmLeft = 151871
                mmTop = 1323
                mmWidth = 3175
                BandType = 1
              end
              object ppLabel31: TppLabel
                UserName = 'Label31'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'NC '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 65088
                mmTop = 12171
                mmWidth = 3704
                BandType = 1
              end
              object ppLabel32: TppLabel
                UserName = 'Label32'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Rvs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 69850
                mmTop = 12171
                mmWidth = 4498
                BandType = 1
              end
              object ppLabel26: TppLabel
                UserName = 'Label26'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Colors '
                Color = 8953851
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                TextAlignment = taCentered
                mmHeight = 2646
                mmLeft = 152136
                mmTop = 1852
                mmWidth = 15081
                BandType = 1
              end
              object ppLine29: TppLine
                UserName = 'Line29'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 14023
                mmLeft = 37835
                mmTop = 1323
                mmWidth = 2910
                BandType = 1
              end
              object ppLabel39: TppLabel
                UserName = 'Label39'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Cd '
                Color = 8953851
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                TextAlignment = taCentered
                mmHeight = 2646
                mmLeft = 38365
                mmTop = 1852
                mmWidth = 4498
                BandType = 1
              end
              object ppLabel64: TppLabel
                UserName = 'Label64'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ini. '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 75142
                mmTop = 5292
                mmWidth = 3598
                BandType = 1
              end
              object ppLabel35: TppLabel
                UserName = 'Label35'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'NC '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 120121
                mmTop = 12171
                mmWidth = 3704
                BandType = 1
              end
              object ppLabel37: TppLabel
                UserName = 'Label37'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Rvs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 128323
                mmTop = 12171
                mmWidth = 4498
                BandType = 1
              end
              object ppLabel67: TppLabel
                UserName = 'Label67'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ini. '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 136525
                mmTop = 5556
                mmWidth = 3598
                BandType = 1
              end
              object ppLabel68: TppLabel
                UserName = 'Label68'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   Ttl  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 144463
                mmTop = 5556
                mmWidth = 5556
                BandType = 1
              end
              object ppLine41: TppLine
                UserName = 'Line101'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 42863
                mmTop = 4763
                mmWidth = 124354
                BandType = 1
              end
              object ppLabel4: TppLabel
                UserName = 'Label4'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Rep       / Flow '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                WordWrap = True
                mmHeight = 7747
                mmLeft = 152400
                mmTop = 5556
                mmWidth = 4868
                BandType = 1
              end
              object ppLine54: TppLine
                UserName = 'Line54'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10583
                mmLeft = 134673
                mmTop = 4763
                mmWidth = 2910
                BandType = 1
              end
              object ppLine55: TppLine
                UserName = 'Line55'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 7144
                mmLeft = 117475
                mmTop = 8202
                mmWidth = 1588
                BandType = 1
              end
              object ppLine56: TppLine
                UserName = 'Line56'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10583
                mmLeft = 143140
                mmTop = 4763
                mmWidth = 2910
                BandType = 1
              end
              object ppLine60: TppLine
                UserName = 'Line60'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 7144
                mmLeft = 64558
                mmTop = 8202
                mmWidth = 2910
                BandType = 1
              end
              object ppLine61: TppLine
                UserName = 'Line601'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10583
                mmLeft = 74613
                mmTop = 4763
                mmWidth = 2910
                BandType = 1
              end
              object ppLine62: TppLine
                UserName = 'Line602'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10583
                mmLeft = 80433
                mmTop = 4763
                mmWidth = 2910
                BandType = 1
              end
              object ppLine72: TppLine
                UserName = 'Line72'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10583
                mmLeft = 157163
                mmTop = 4763
                mmWidth = 2910
                BandType = 1
              end
              object ppLine73: TppLine
                UserName = 'Line73'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10583
                mmLeft = 161925
                mmTop = 4763
                mmWidth = 2910
                BandType = 1
              end
              object ppLabel47: TppLabel
                UserName = 'Label47'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ttl '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 82021
                mmTop = 5292
                mmWidth = 3175
                BandType = 1
              end
              object ppLabel36: TppLabel
                UserName = 'Label36'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ini. '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 157692
                mmTop = 5556
                mmWidth = 3598
                BandType = 1
              end
              object ppLabel38: TppLabel
                UserName = 'Label38'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ttl '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 162984
                mmTop = 5556
                mmWidth = 3175
                BandType = 1
              end
              object ppLine37: TppLine
                UserName = 'Line105'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 85461
                mmTop = 8202
                mmWidth = 49477
                BandType = 1
              end
              object ppLabel30: TppLabel
                UserName = 'Label30'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Chkd '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 122238
                mmTop = 8731
                mmWidth = 5821
                BandType = 1
              end
              object ppLabel52: TppLabel
                UserName = 'Label302'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Chkg'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 111125
                mmTop = 8731
                mmWidth = 5292
                BandType = 1
              end
              object ppLine47: TppLine
                UserName = 'Line47'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 3704
                mmLeft = 126207
                mmTop = 11642
                mmWidth = 1852
                BandType = 1
              end
              object ppLine50: TppLine
                UserName = 'Line106'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 42863
                mmTop = 8202
                mmWidth = 31750
                BandType = 1
              end
              object ppLabel59: TppLabel
                UserName = 'Label303'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Chkd '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 66675
                mmTop = 8731
                mmWidth = 5821
                BandType = 1
              end
              object ppLabel60: TppLabel
                UserName = 'Label60'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Chkg'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 59002
                mmTop = 8731
                mmWidth = 5292
                BandType = 1
              end
              object ppLine51: TppLine
                UserName = 'Line51'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 3440
                mmLeft = 69321
                mmTop = 11906
                mmWidth = 2910
                BandType = 1
              end
              object ppLabel77: TppLabel
                UserName = 'Label77'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Flow '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 64029
                mmTop = 5292
                mmWidth = 5556
                BandType = 1
              end
              object ppLine117: TppLine
                UserName = 'Line1010'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 64823
                mmTop = 11642
                mmWidth = 9790
                BandType = 1
              end
              object ppLabel78: TppLabel
                UserName = 'Label78'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Flow  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 119856
                mmTop = 5292
                mmWidth = 6085
                BandType = 1
              end
              object ppLine118: TppLine
                UserName = 'Line1011'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1852
                mmLeft = 117740
                mmTop = 11642
                mmWidth = 16933
                BandType = 1
              end
              object ppLine141: TppLine
                UserName = 'Line141'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 14023
                mmLeft = 42863
                mmTop = 1323
                mmWidth = 1852
                BandType = 1
              end
              object ppLabel6: TppLabel
                UserName = 'Label6'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Repeat '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 47361
                mmTop = 5292
                mmWidth = 7705
                BandType = 1
              end
              object ppLine144: TppLine
                UserName = 'Line144'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10583
                mmLeft = 110067
                mmTop = 4763
                mmWidth = 2646
                BandType = 1
              end
              object ppLabel19: TppLabel
                UserName = 'Label19'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Repeat '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 94456
                mmTop = 5292
                mmWidth = 7673
                BandType = 1
              end
              object ppLabel114: TppLabel
                UserName = 'Label601'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Chkg'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 43392
                mmTop = 8731
                mmWidth = 5292
                BandType = 1
              end
              object ppLabel115: TppLabel
                UserName = 'Label115'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'NC '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 49477
                mmTop = 12171
                mmWidth = 3704
                BandType = 1
              end
              object ppLabel116: TppLabel
                UserName = 'Label116'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Rvs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 53975
                mmTop = 12171
                mmWidth = 4498
                BandType = 1
              end
              object ppLabel117: TppLabel
                UserName = 'Label117'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Chkd '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 51065
                mmTop = 8731
                mmWidth = 5821
                BandType = 1
              end
              object ppLine164: TppLine
                UserName = 'Line603'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 7144
                mmLeft = 48948
                mmTop = 8202
                mmWidth = 2910
                BandType = 1
              end
              object ppLine165: TppLine
                UserName = 'Line10101'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 48948
                mmTop = 11642
                mmWidth = 9790
                BandType = 1
              end
              object ppLine166: TppLine
                UserName = 'Line166'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 3440
                mmLeft = 53446
                mmTop = 11906
                mmWidth = 1852
                BandType = 1
              end
              object ppLabel118: TppLabel
                UserName = 'Label118'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Chkg'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 86519
                mmTop = 8731
                mmWidth = 5292
                BandType = 1
              end
              object ppLabel119: TppLabel
                UserName = 'Label304'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Chkd '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 97631
                mmTop = 8731
                mmWidth = 5821
                BandType = 1
              end
              object ppLabel120: TppLabel
                UserName = 'Label120'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'NC '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 95515
                mmTop = 12171
                mmWidth = 3704
                BandType = 1
              end
              object ppLabel121: TppLabel
                UserName = 'Label121'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Rvs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 103717
                mmTop = 12171
                mmWidth = 4498
                BandType = 1
              end
              object ppLine171: TppLine
                UserName = 'Line171'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 7144
                mmLeft = 92869
                mmTop = 8202
                mmWidth = 1588
                BandType = 1
              end
              object ppLine172: TppLine
                UserName = 'Line172'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1852
                mmLeft = 93134
                mmTop = 11642
                mmWidth = 16933
                BandType = 1
              end
              object ppLine173: TppLine
                UserName = 'Line173'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 3704
                mmLeft = 101336
                mmTop = 11642
                mmWidth = 1852
                BandType = 1
              end
            end
            object ppDetailBand2: TppDetailBand
              BeforePrint = ppDetailBand2BeforePrint
              mmBottomOffset = 0
              mmHeight = 4498
              mmPrintPosition = 0
              object ppShape2: TppShape
                UserName = 'Shape2'
                mmHeight = 4763
                mmLeft = 3175
                mmTop = 0
                mmWidth = 164307
                BandType = 4
              end
              object ppDBText1: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'JHRS1'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 3969
                mmTop = 794
                mmWidth = 11007
                BandType = 4
              end
              object ppLine4: TppLine
                UserName = 'Line4'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 42863
                mmTop = 0
                mmWidth = 2381
                BandType = 4
              end
              object ppLine5: TppLine
                UserName = 'Line5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 85461
                mmTop = 0
                mmWidth = 2381
                BandType = 4
              end
              object ppLine6: TppLine
                UserName = 'Line6'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 151871
                mmTop = 0
                mmWidth = 7144
                BandType = 4
              end
              object y01: TppLabel
                UserName = 'y01'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 3175
                mmLeft = 65088
                mmTop = 794
                mmWidth = 4498
                BandType = 4
              end
              object y02: TppLabel
                UserName = 'y02'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 3175
                mmLeft = 75142
                mmTop = 794
                mmWidth = 4498
                BandType = 4
              end
              object y03: TppLabel
                UserName = 'y03'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 3175
                mmLeft = 118004
                mmTop = 794
                mmWidth = 4498
                BandType = 4
              end
              object y04: TppLabel
                UserName = 'y04'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 3175
                mmLeft = 135202
                mmTop = 794
                mmWidth = 4498
                BandType = 4
              end
              object ppLine30: TppLine
                UserName = 'Line30'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 37835
                mmTop = 0
                mmWidth = 2117
                BandType = 4
              end
              object y002: TppLabel
                UserName = 'y002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 3175
                mmLeft = 38365
                mmTop = 794
                mmWidth = 3440
                BandType = 4
              end
              object r001: TppLabel
                UserName = 'r001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 69850
                mmTop = 794
                mmWidth = 4233
                BandType = 4
              end
              object r002: TppLabel
                UserName = 'r002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 126736
                mmTop = 794
                mmWidth = 4233
                BandType = 4
              end
              object ppLine57: TppLine
                UserName = 'Line57'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 126207
                mmTop = 0
                mmWidth = 1852
                BandType = 4
              end
              object ppLine58: TppLine
                UserName = 'Line58'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 134673
                mmTop = 0
                mmWidth = 1852
                BandType = 4
              end
              object ppLine59: TppLine
                UserName = 'Line59'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 143140
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
                mmHeight = 4763
                mmLeft = 64558
                mmTop = 0
                mmWidth = 1852
                BandType = 4
              end
              object ppLine64: TppLine
                UserName = 'Line64'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 74613
                mmTop = 0
                mmWidth = 1058
                BandType = 4
              end
              object ppLine65: TppLine
                UserName = 'Line65'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 80433
                mmTop = 0
                mmWidth = 1852
                BandType = 4
              end
              object c001: TppLabel
                UserName = 'c001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 152400
                mmTop = 794
                mmWidth = 4498
                BandType = 4
              end
              object c002: TppLabel
                UserName = 'c002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 157692
                mmTop = 794
                mmWidth = 4498
                BandType = 4
              end
              object ppLine70: TppLine
                UserName = 'Line70'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 157163
                mmTop = 0
                mmWidth = 2646
                BandType = 4
              end
              object ppLine71: TppLine
                UserName = 'Line701'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 161925
                mmTop = 0
                mmWidth = 2646
                BandType = 4
              end
              object ppLine45: TppLine
                UserName = 'Line45'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 117475
                mmTop = 0
                mmWidth = 2381
                BandType = 4
              end
              object ppLine52: TppLine
                UserName = 'Line52'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 69321
                mmTop = 0
                mmWidth = 1852
                BandType = 4
              end
              object chk001: TppLabel
                UserName = 'chk001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 59002
                mmTop = 794
                mmWidth = 6879
                BandType = 4
              end
              object chk002: TppLabel
                UserName = 'chk002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 110596
                mmTop = 794
                mmWidth = 6879
                BandType = 4
              end
              object sc001: TppLabel
                UserName = 'sc001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 161396
                mmTop = 794
                mmWidth = 5556
                BandType = 4
              end
              object ppLine142: TppLine
                UserName = 'Line142'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 58473
                mmTop = 0
                mmWidth = 2381
                BandType = 4
              end
              object ppLine145: TppLine
                UserName = 'Line145'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 110067
                mmTop = 0
                mmWidth = 2381
                BandType = 4
              end
              object rp001: TppLabel
                UserName = 'rp001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 43392
                mmTop = 794
                mmWidth = 5461
                BandType = 4
              end
              object rp002: TppLabel
                UserName = 'rp002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 85990
                mmTop = 794
                mmWidth = 5556
                BandType = 4
              end
              object ppLine167: TppLine
                UserName = 'Line167'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 48948
                mmTop = 0
                mmWidth = 2381
                BandType = 4
              end
              object ppLine168: TppLine
                UserName = 'Line168'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 53446
                mmTop = 0
                mmWidth = 2381
                BandType = 4
              end
              object rn001: TppLabel
                UserName = 'rn001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 49477
                mmTop = 794
                mmWidth = 3440
                BandType = 4
              end
              object rv001: TppLabel
                UserName = 'rv001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 53975
                mmTop = 794
                mmWidth = 3704
                BandType = 4
              end
              object ppLine174: TppLine
                UserName = 'Line174'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 92869
                mmTop = 0
                mmWidth = 2381
                BandType = 4
              end
              object ppLine175: TppLine
                UserName = 'Line175'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4763
                mmLeft = 101336
                mmTop = 0
                mmWidth = 2381
                BandType = 4
              end
              object rn002: TppLabel
                UserName = 'rn002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 93398
                mmTop = 794
                mmWidth = 6519
                BandType = 4
              end
              object rv002: TppLabel
                UserName = 'rv002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 101865
                mmTop = 794
                mmWidth = 6392
                BandType = 4
              end
              object stt1: TppLabel
                UserName = 'stt1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 81756
                mmTop = 794
                mmWidth = 3440
                BandType = 4
              end
              object stt2: TppLabel
                UserName = 'stt2'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2498
                mmLeft = 148178
                mmTop = 794
                mmWidth = 3429
                BandType = 4
              end
            end
            object ppSummaryBand1: TppSummaryBand
              BeforePrint = ppSummaryBand1BeforePrint
              AlignToBottom = False
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppShape3: TppShape
                UserName = 'Shape3'
                Brush.Color = 13499643
                mmHeight = 5556
                mmLeft = 3175
                mmTop = 0
                mmWidth = 164307
                BandType = 7
              end
              object ppLabel5: TppLabel
                UserName = 'Label5'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 3969
                mmTop = 1058
                mmWidth = 6350
                BandType = 7
              end
              object ppLine7: TppLine
                UserName = 'Line7'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 42863
                mmTop = 0
                mmWidth = 1588
                BandType = 7
              end
              object ppLine8: TppLine
                UserName = 'Line8'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5556
                mmLeft = 85461
                mmTop = 0
                mmWidth = 2117
                BandType = 7
              end
              object ppLine9: TppLine
                UserName = 'Line9'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5556
                mmLeft = 151871
                mmTop = 0
                mmWidth = 7144
                BandType = 7
              end
              object y001: TppLabel
                UserName = 'y001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3440
                mmLeft = 158486
                mmTop = 1058
                mmWidth = 8467
                BandType = 7
              end
              object y05: TppLabel
                UserName = 'y05'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 65088
                mmTop = 1058
                mmWidth = 4498
                BandType = 7
              end
              object y06: TppLabel
                UserName = 'y06'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 75142
                mmTop = 1058
                mmWidth = 4498
                BandType = 7
              end
              object y07: TppLabel
                UserName = 'y07'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 118004
                mmTop = 1058
                mmWidth = 4498
                BandType = 7
              end
              object y08: TppLabel
                UserName = 'y08'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 135202
                mmTop = 1058
                mmWidth = 4498
                BandType = 7
              end
              object ppLine31: TppLine
                UserName = 'Line31'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 37835
                mmTop = 0
                mmWidth = 2117
                BandType = 7
              end
              object r003: TppLabel
                UserName = 'r003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 69850
                mmTop = 1058
                mmWidth = 4233
                BandType = 7
              end
              object r004: TppLabel
                UserName = 'r004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 126736
                mmTop = 1058
                mmWidth = 4233
                BandType = 7
              end
              object c003: TppLabel
                UserName = 'c003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 152400
                mmTop = 1058
                mmWidth = 4498
                BandType = 7
              end
              object c004: TppLabel
                UserName = 'c004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 157692
                mmTop = 1058
                mmWidth = 4498
                BandType = 7
              end
              object ppLine82: TppLine
                UserName = 'Line82'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 64558
                mmTop = 0
                mmWidth = 1588
                BandType = 7
              end
              object ppLine83: TppLine
                UserName = 'Line83'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 74613
                mmTop = 265
                mmWidth = 1323
                BandType = 7
              end
              object ppLine84: TppLine
                UserName = 'Line84'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 80433
                mmTop = 0
                mmWidth = 1852
                BandType = 7
              end
              object ppLine85: TppLine
                UserName = 'Line85'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 126207
                mmTop = 0
                mmWidth = 1852
                BandType = 7
              end
              object ppLine86: TppLine
                UserName = 'Line86'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 134673
                mmTop = 0
                mmWidth = 2381
                BandType = 7
              end
              object ppLine87: TppLine
                UserName = 'Line87'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 157163
                mmTop = 0
                mmWidth = 1323
                BandType = 7
              end
              object ppLine88: TppLine
                UserName = 'Line88'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 161925
                mmTop = 0
                mmWidth = 1323
                BandType = 7
              end
              object ppLine89: TppLine
                UserName = 'Line89'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 143140
                mmTop = 0
                mmWidth = 2910
                BandType = 7
              end
              object ppLine46: TppLine
                UserName = 'Line46'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5556
                mmLeft = 117475
                mmTop = 0
                mmWidth = 2117
                BandType = 7
              end
              object ppLine67: TppLine
                UserName = 'Line67'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 69321
                mmTop = 0
                mmWidth = 1588
                BandType = 7
              end
              object chk003: TppLabel
                UserName = 'chk003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 59002
                mmTop = 1058
                mmWidth = 7144
                BandType = 7
              end
              object chk004: TppLabel
                UserName = 'chk004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 110596
                mmTop = 1058
                mmWidth = 7144
                BandType = 7
              end
              object ppLine143: TppLine
                UserName = 'Line143'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 58473
                mmTop = 0
                mmWidth = 1588
                BandType = 7
              end
              object ppLine146: TppLine
                UserName = 'Line146'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5556
                mmLeft = 110067
                mmTop = 0
                mmWidth = 2117
                BandType = 7
              end
              object rp003: TppLabel
                UserName = 'rp003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 43392
                mmTop = 1058
                mmWidth = 5461
                BandType = 7
              end
              object rp004: TppLabel
                UserName = 'rp004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 85990
                mmTop = 1058
                mmWidth = 5556
                BandType = 7
              end
              object ppLine169: TppLine
                UserName = 'Line169'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 48948
                mmTop = 0
                mmWidth = 1588
                BandType = 7
              end
              object ppLine170: TppLine
                UserName = 'Line170'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 53446
                mmTop = 0
                mmWidth = 1588
                BandType = 7
              end
              object ppLine176: TppLine
                UserName = 'Line176'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5556
                mmLeft = 92869
                mmTop = 0
                mmWidth = 2117
                BandType = 7
              end
              object ppLine177: TppLine
                UserName = 'Line177'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5556
                mmLeft = 101336
                mmTop = 0
                mmWidth = 2117
                BandType = 7
              end
              object rn003: TppLabel
                UserName = 'rn003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 49477
                mmTop = 1058
                mmWidth = 2646
                BandType = 7
              end
              object rv003: TppLabel
                UserName = 'rv003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 53975
                mmTop = 1058
                mmWidth = 3704
                BandType = 7
              end
              object rn004: TppLabel
                UserName = 'rn004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 93398
                mmTop = 1058
                mmWidth = 6519
                BandType = 7
              end
              object rv004: TppLabel
                UserName = 'rv004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 101865
                mmTop = 1058
                mmWidth = 6392
                BandType = 7
              end
              object stt3: TppLabel
                UserName = 'stt3'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2498
                mmLeft = 81767
                mmTop = 1058
                mmWidth = 3429
                BandType = 7
              end
              object stt4: TppLabel
                UserName = 'stt4'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2498
                mmLeft = 148178
                mmTop = 1058
                mmWidth = 3429
                BandType = 7
              end
              object tover001: TppLabel
                UserName = 'tover001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 177007
                mmTop = 1058
                mmWidth = 6350
                BandType = 7
              end
            end
          end
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 67733
        mmPrintPosition = 0
        object ppShape12: TppShape
          UserName = 'Shape12'
          mmHeight = 4233
          mmLeft = 52123
          mmTop = 794
          mmWidth = 81756
          BandType = 5
          GroupNo = 1
        end
        object ppShape7: TppShape
          UserName = 'Shape7'
          mmHeight = 50800
          mmLeft = 3175
          mmTop = 4763
          mmWidth = 130704
          BandType = 5
          GroupNo = 0
        end
        object ppShape13: TppShape
          UserName = 'Shape13'
          Brush.Color = 13499643
          Pen.Style = psClear
          mmHeight = 3175
          mmLeft = 3704
          mmTop = 52123
          mmWidth = 129911
          BandType = 5
          GroupNo = 1
        end
        object ppShape8: TppShape
          UserName = 'Shape8'
          mmHeight = 24342
          mmLeft = 135202
          mmTop = 794
          mmWidth = 126471
          BandType = 5
          GroupNo = 1
        end
        object ppLine22: TppLine
          UserName = 'Line22'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 10848
          mmTop = 21960
          mmWidth = 41540
          BandType = 5
          GroupNo = 0
        end
        object ppLine23: TppLine
          UserName = 'Line23'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 3440
          mmTop = 25400
          mmWidth = 130440
          BandType = 5
          GroupNo = 0
        end
        object ppLine24: TppLine
          UserName = 'Line24'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 10848
          mmTop = 32015
          mmWidth = 61119
          BandType = 5
          GroupNo = 0
        end
        object ppLine25: TppLine
          UserName = 'Line25'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 10848
          mmTop = 35454
          mmWidth = 41540
          BandType = 5
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'No Change Flow Styles '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 11642
          mmTop = 32544
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object ppLine26: TppLine
          UserName = 'Line26'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 54769
          mmLeft = 52123
          mmTop = 794
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
        object ppLine27: TppLine
          UserName = 'Line27'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 50536
          mmLeft = 71702
          mmTop = 5027
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rvs Flow Styles  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 11642
          mmTop = 39158
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 4233
          mmTop = 52388
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object x002: TppLabel
          UserName = 'x002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 17992
          mmTop = 35983
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object x003: TppLabel
          UserName = 'x003'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 63765
          mmTop = 35983
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object x004: TppLabel
          UserName = 'x004'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 99484
          mmTop = 35983
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object x005: TppLabel
          UserName = 'x005'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 17992
          mmTop = 49213
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object x006: TppLabel
          UserName = 'x006'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 63765
          mmTop = 49213
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object x007: TppLabel
          UserName = 'x007'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 99484
          mmTop = 49213
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'styles  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 34131
          mmTop = 52388
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'S2'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2582
          mmLeft = 62093
          mmTop = 52388
          mmWidth = 8551
          BandType = 5
          GroupNo = 0
        end
        object x009: TppLabel
          UserName = 'x009'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 99484
          mmTop = 52388
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object ppLine35: TppLine
          UserName = 'Line35'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 10848
          mmTop = 38629
          mmWidth = 61119
          BandType = 5
          GroupNo = 0
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Initial Styles  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 11642
          mmTop = 45773
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
        end
        object ppLine36: TppLine
          UserName = 'Line36'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 10848
          mmTop = 42069
          mmWidth = 41540
          BandType = 5
          GroupNo = 0
        end
        object ra06: TppLabel
          UserName = 'ra06'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 17992
          mmTop = 42598
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object ra07: TppLabel
          UserName = 'ra07'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 63765
          mmTop = 42598
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object ra08: TppLabel
          UserName = 'ra08'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 99484
          mmTop = 42598
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object ppLine69: TppLine
          UserName = 'Line69'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 10848
          mmTop = 18521
          mmWidth = 61119
          BandType = 5
          GroupNo = 0
        end
        object ppLine105: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 10848
          mmTop = 8202
          mmWidth = 41540
          BandType = 5
          GroupNo = 0
        end
        object ppLabel66: TppLabel
          UserName = 'Label66'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkg(Under Checking) Flow Styles '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 11642
          mmTop = 25929
          mmWidth = 35719
          BandType = 5
          GroupNo = 0
        end
        object ck006: TppLabel
          UserName = 'ck006'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 17992
          mmTop = 29369
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object ck007: TppLabel
          UserName = 'ck007'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 65352
          mmTop = 29369
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object ck008: TppLabel
          UserName = 'ck008'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 101071
          mmTop = 29369
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object ppShape9: TppShape
          UserName = 'Shape9'
          Visible = False
          mmHeight = 10848
          mmLeft = 3175
          mmTop = 56356
          mmWidth = 278871
          BandType = 5
          GroupNo = 0
        end
        object ppMemo2: TppMemo
          UserName = 'Memo2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Memo2'
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Lines.Strings = (
            'TIP'
            
              #934'      Prefix of style no is "B" or "K" or "U" which is for Bra ' +
              'or Knicker or Undies(Cami), suffix of style no is "PJ" or "C1" o' +
              'r "C2" or "PO" which is for projection or greige commitment or S' +
              'KU commiment or garment purchase order is issued.            '
            '         "NYR"  means "Not yet receiveable"')
          Transparent = True
          Visible = False
          mmHeight = 9790
          mmLeft = 4233
          mmTop = 56886
          mmWidth = 277284
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppLine155: TppLine
          UserName = 'Line155'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 3440
          mmTop = 45244
          mmWidth = 130440
          BandType = 5
          GroupNo = 1
        end
        object ppLine156: TppLine
          UserName = 'Line156'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 10848
          mmTop = 48683
          mmWidth = 41540
          BandType = 5
          GroupNo = 1
        end
        object ppLabel101: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkg(Under Checking) Repeat Styles '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 11642
          mmTop = 5292
          mmWidth = 38100
          BandType = 5
          GroupNo = 1
        end
        object ppLabel102: TppLabel
          UserName = 'Label4'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty (pcs)    '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 60325
          mmTop = 1588
          mmWidth = 26194
          BandType = 5
          GroupNo = 1
        end
        object ppLabel103: TppLabel
          UserName = 'Label701'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Colors  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 108215
          mmTop = 1588
          mmWidth = 7938
          BandType = 5
          GroupNo = 1
        end
        object rpt006: TppLabel
          UserName = 'rpt006'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 17992
          mmTop = 8731
          mmWidth = 14552
          BandType = 5
          GroupNo = 1
        end
        object rpt007: TppLabel
          UserName = 'rpt007'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 66675
          mmTop = 8731
          mmWidth = 4233
          BandType = 5
          GroupNo = 1
        end
        object rpt008: TppLabel
          UserName = 'rpt008'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 98690
          mmTop = 8731
          mmWidth = 7938
          BandType = 5
          GroupNo = 1
        end
        object ppLine178: TppLine
          UserName = 'Line178'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 10848
          mmTop = 11642
          mmWidth = 61119
          BandType = 5
          GroupNo = 1
        end
        object ppLine179: TppLine
          UserName = 'Line179'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 10848
          mmTop = 15081
          mmWidth = 41540
          BandType = 5
          GroupNo = 1
        end
        object ppLine180: TppLine
          UserName = 'Line180'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 3440
          mmTop = 51858
          mmWidth = 130440
          BandType = 5
          GroupNo = 1
        end
        object ppLine181: TppLine
          UserName = 'Line181'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 10848
          mmTop = 28840
          mmWidth = 41540
          BandType = 5
          GroupNo = 1
        end
        object ppLabel122: TppLabel
          UserName = 'Label122'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'No Change Repeat Styles '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 11642
          mmTop = 12171
          mmWidth = 26194
          BandType = 5
          GroupNo = 1
        end
        object rnc006: TppLabel
          UserName = 'rnc006'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 17992
          mmTop = 15610
          mmWidth = 6879
          BandType = 5
          GroupNo = 1
        end
        object rnc007: TppLabel
          UserName = 'rnc007'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 64029
          mmTop = 15610
          mmWidth = 6879
          BandType = 5
          GroupNo = 1
        end
        object rnc008: TppLabel
          UserName = 'rnc008'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 99748
          mmTop = 15610
          mmWidth = 6879
          BandType = 5
          GroupNo = 1
        end
        object ppLabel128: TppLabel
          UserName = 'Label128'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rvs Repeat Styles '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 11642
          mmTop = 19050
          mmWidth = 19050
          BandType = 5
          GroupNo = 1
        end
        object rvs006: TppLabel
          UserName = 'rvs006'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 17992
          mmTop = 22490
          mmWidth = 6615
          BandType = 5
          GroupNo = 1
        end
        object rvs007: TppLabel
          UserName = 'rvs007'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 64294
          mmTop = 22490
          mmWidth = 6615
          BandType = 5
          GroupNo = 1
        end
        object rvs008: TppLabel
          UserName = 'rvs008'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 100013
          mmTop = 22490
          mmWidth = 6615
          BandType = 5
          GroupNo = 1
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Repeat:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 135996
          mmTop = 13758
          mmWidth = 8996
          BandType = 5
          GroupNo = 1
        end
        object rpt009: TppLabel
          UserName = 'rpt009'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 175419
          mmTop = 13758
          mmWidth = 7938
          BandType = 5
          GroupNo = 1
        end
        object ppLine157: TppLine
          UserName = 'Line401'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 135202
          mmTop = 16933
          mmWidth = 126207
          BandType = 5
          GroupNo = 1
        end
        object ppLine158: TppLine
          UserName = 'Line158'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 135202
          mmTop = 20902
          mmWidth = 126207
          BandType = 5
          GroupNo = 1
        end
        object ppLabel125: TppLabel
          UserName = 'Label125'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Flow:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 135996
          mmTop = 17727
          mmWidth = 6879
          BandType = 5
          GroupNo = 1
        end
        object ppLabel126: TppLabel
          UserName = 'Label126'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Checking:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 163248
          mmTop = 13758
          mmWidth = 11377
          BandType = 5
          GroupNo = 1
        end
        object ppLabel127: TppLabel
          UserName = 'Label404'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'No Change:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 190500
          mmTop = 13758
          mmWidth = 12965
          BandType = 5
          GroupNo = 1
        end
        object ppLabel131: TppLabel
          UserName = 'Label131'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rvs:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 219869
          mmTop = 13758
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object rnc009: TppLabel
          UserName = 'rnc009'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 207434
          mmTop = 13758
          mmWidth = 6879
          BandType = 5
          GroupNo = 1
        end
        object rvs009: TppLabel
          UserName = 'rvs009'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 228071
          mmTop = 13758
          mmWidth = 6615
          BandType = 5
          GroupNo = 1
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'No Change:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 190500
          mmTop = 17727
          mmWidth = 12965
          BandType = 5
          GroupNo = 1
        end
        object x010: TppLabel
          UserName = 'x010'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 207169
          mmTop = 17727
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object x011: TppLabel
          UserName = 'x011'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 207169
          mmTop = 21696
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object ra09: TppLabel
          UserName = 'ra09'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '0.00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 228600
          mmTop = 17727
          mmWidth = 6085
          BandType = 5
          GroupNo = 1
        end
        object ppLabel49: TppLabel
          UserName = 'Label401'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rvs:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 219869
          mmTop = 17727
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object ppLabel50: TppLabel
          UserName = 'Label402'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Initial:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 135996
          mmTop = 21696
          mmWidth = 7408
          BandType = 5
          GroupNo = 1
        end
        object ppLine38: TppLine
          UserName = 'Line38'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 135467
          mmTop = 4763
          mmWidth = 126207
          BandType = 5
          GroupNo = 1
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 
            'Ratio : -                                                 ( Core' +
            ' Vs Fashion   &  B, K, U )          '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2582
          mmLeft = 135996
          mmTop = 1588
          mmWidth = 73702
          BandType = 5
          GroupNo = 1
        end
        object ppLine39: TppLine
          UserName = 'Line39'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 135467
          mmTop = 8996
          mmWidth = 126207
          BandType = 5
          GroupNo = 1
        end
        object f01: TppLabel
          UserName = 'f01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Core    '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 135996
          mmTop = 5556
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object f02: TppLabel
          UserName = 'f02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Core    '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 189707
          mmTop = 5556
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object b01: TppLabel
          UserName = 'b01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Core    '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 135996
          mmTop = 9790
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object b02: TppLabel
          UserName = 'b02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Core    '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 182563
          mmTop = 9790
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object b03: TppLabel
          UserName = 'b03'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Core    '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 224367
          mmTop = 9790
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object ppLine40: TppLine
          UserName = 'Line40'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 135467
          mmTop = 12965
          mmWidth = 126207
          BandType = 5
          GroupNo = 1
        end
        object ppLabel61: TppLabel
          UserName = 'Label403'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Checking:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 163248
          mmTop = 17727
          mmWidth = 11377
          BandType = 5
          GroupNo = 1
        end
        object ck009: TppLabel
          UserName = 'ck009'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 177536
          mmTop = 17727
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object ttl002: TppLabel
          UserName = 'ttl002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 27781
          mmTop = 52388
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object ppLine116: TppLine
          UserName = 'Line116'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 54504
          mmLeft = 92604
          mmTop = 794
          mmWidth = 2910
          BandType = 5
          GroupNo = 1
        end
        object ppLine148: TppLine
          UserName = 'Line148'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 50536
          mmLeft = 112448
          mmTop = 4763
          mmWidth = 2910
          BandType = 5
          GroupNo = 1
        end
        object ppLine160: TppLine
          UserName = 'Line160'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 8202
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine161: TppLine
          UserName = 'Line1601'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 11642
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine196: TppLine
          UserName = 'Line1602'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 18521
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine197: TppLine
          UserName = 'Line1603'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 28840
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine198: TppLine
          UserName = 'Line1604'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 15081
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine199: TppLine
          UserName = 'Line199'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 32015
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine200: TppLine
          UserName = 'Line200'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 35454
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine201: TppLine
          UserName = 'Line201'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 38629
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine202: TppLine
          UserName = 'Line202'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 42069
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine203: TppLine
          UserName = 'Line203'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 48683
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine204: TppLine
          UserName = 'Line204'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 92604
          mmTop = 21960
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object xt01: TppLabel
          UserName = 'xt01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 80963
          mmTop = 15610
          mmWidth = 4233
          BandType = 5
          GroupNo = 1
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
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 120915
          mmTop = 15610
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object xt02: TppLabel
          UserName = 'xt02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 81227
          mmTop = 35719
          mmWidth = 3969
          BandType = 5
          GroupNo = 1
        end
        object xt002: TppLabel
          UserName = 'xt002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 121179
          mmTop = 35719
          mmWidth = 5292
          BandType = 5
          GroupNo = 1
        end
        object xt03: TppLabel
          UserName = 'xt03'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 81227
          mmTop = 47625
          mmWidth = 3969
          BandType = 5
          GroupNo = 1
        end
        object xt003: TppLabel
          UserName = 'xt003'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 121179
          mmTop = 47625
          mmWidth = 5292
          BandType = 5
          GroupNo = 1
        end
        object ppLine205: TppLine
          UserName = 'Line205'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 47361
          mmLeft = 10583
          mmTop = 4763
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object ppImage1: TppImage
          UserName = 'Image1'
          AlignHorizontal = ahCenter
          AlignVertical = avCenter
          AutoSize = True
          MaintainAspectRatio = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Picture.Data = {
            07544269746D617056070000424D560700000000000036000000280000000F00
            0000260000000100180000000000200700000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF000000000000000000000000000000000000000000000000
            000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFF000000
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF000000FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
            000000000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
            000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF000000FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF000000FFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
            000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
            000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000}
          mmHeight = 9260
          mmLeft = 5027
          mmTop = 10319
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
        object ppImage2: TppImage
          UserName = 'Image2'
          AlignHorizontal = ahCenter
          AlignVertical = avCenter
          AutoSize = True
          MaintainAspectRatio = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Picture.Data = {
            07544269746D617016050000424D160500000000000036000000280000000F00
            00001A0000000100180000000000E00400000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF000000000000000000000000000000000000000000000000
            000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
            FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
            FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF0000000000000000
            00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000
            000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000
            000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000}
          mmHeight = 6350
          mmLeft = 5027
          mmTop = 31221
          mmWidth = 3704
          BandType = 5
          GroupNo = 1
        end
        object ppImage3: TppImage
          UserName = 'Image3'
          AlignHorizontal = ahCenter
          AlignVertical = avCenter
          AutoSize = True
          MaintainAspectRatio = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Picture.Data = {
            07544269746D617006030000424D060300000000000036000000280000000F00
            00000F0000000100180000000000D00200000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF000000000000000000000000000000000000000000000000
            000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
            000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
            FF000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
          mmHeight = 3969
          mmLeft = 5292
          mmTop = 46038
          mmWidth = 3969
          BandType = 5
          GroupNo = 1
        end
        object ppLine206: TppLine
          UserName = 'Line206'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 12171
          mmLeft = 145786
          mmTop = 12965
          mmWidth = 2910
          BandType = 5
          GroupNo = 1
        end
        object ppLine207: TppLine
          UserName = 'Line207'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 187855
          mmTop = 12965
          mmWidth = 2910
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'TM'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand2BeforePrint
        mmBottomOffset = 0
        mmHeight = 18256
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          mmHeight = 18521
          mmLeft = 3175
          mmTop = 0
          mmWidth = 279136
          BandType = 3
          GroupNo = 1
        end
        object ppLine42: TppLine
          UserName = 'Line42'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 132027
          mmTop = 10583
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object rx001: TppLabel
          UserName = 'rx001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Range (Collection) '
          Color = 8953851
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          mmHeight = 2646
          mmLeft = 3969
          mmTop = 794
          mmWidth = 33867
          BandType = 3
          GroupNo = 1
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Styles '
          Color = 8953851
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 2646
          mmLeft = 59267
          mmTop = 794
          mmWidth = 36777
          BandType = 3
          GroupNo = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty (pcs)  '
          Color = 8953851
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 2646
          mmLeft = 96838
          mmTop = 794
          mmWidth = 60061
          BandType = 3
          GroupNo = 1
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14288
          mmLeft = 58738
          mmTop = 265
          mmWidth = 2117
          BandType = 3
          GroupNo = 1
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14288
          mmLeft = 96309
          mmTop = 265
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14288
          mmLeft = 157163
          mmTop = 265
          mmWidth = 3440
          BandType = 3
          GroupNo = 1
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 18256
          mmLeft = 172244
          mmTop = 265
          mmWidth = 2646
          BandType = 3
          GroupNo = 1
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Flow'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 2646
          mmLeft = 201084
          mmTop = 4498
          mmWidth = 25929
          BandType = 3
          GroupNo = 1
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'NC '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2117
          mmLeft = 78317
          mmTop = 11113
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rvs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2117
          mmLeft = 82286
          mmTop = 11113
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'NC '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 125942
          mmTop = 11113
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rvs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 11113
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'NC(^)  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 210609
          mmTop = 11642
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Colors '
          Color = 8953851
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 2646
          mmLeft = 157427
          mmTop = 794
          mmWidth = 14817
          BandType = 3
          GroupNo = 1
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '  Ttl  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 150548
          mmTop = 4498
          mmWidth = 5027
          BandType = 3
          GroupNo = 1
        end
        object ppLine33: TppLine
          UserName = 'Line33'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14288
          mmLeft = 37835
          mmTop = 265
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object ppLabel41: TppLabel
          UserName = 'Label41'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cd '
          Color = 8953851
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          mmHeight = 2646
          mmLeft = 38365
          mmTop = 794
          mmWidth = 3440
          BandType = 3
          GroupNo = 1
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ini. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 86784
          mmTop = 4233
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ini. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 141288
          mmTop = 4498
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLine32: TppLine
          UserName = 'Line32'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 58738
          mmTop = 3704
          mmWidth = 223309
          BandType = 3
          GroupNo = 1
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rep       / Flow '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 7673
          mmLeft = 157692
          mmTop = 4498
          mmWidth = 4763
          BandType = 3
          GroupNo = 1
        end
        object ppLine43: TppLine
          UserName = 'Line43'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 139965
          mmTop = 3704
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object ppLine44: TppLine
          UserName = 'Line44'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 147902
          mmTop = 3704
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object ppLine48: TppLine
          UserName = 'Line48'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3704
          mmLeft = 81756
          mmTop = 10848
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object ppLine49: TppLine
          UserName = 'Line49'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 86254
          mmTop = 3704
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine53: TppLine
          UserName = 'Line53'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 91811
          mmTop = 3704
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine66: TppLine
          UserName = 'Line66'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 162454
          mmTop = 3704
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object ppLine68: TppLine
          UserName = 'Line68'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 167217
          mmTop = 3704
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 92869
          mmTop = 4233
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ini. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 163248
          mmTop = 4498
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 168275
          mmTop = 4498
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ppLine90: TppLine
          UserName = 'Line90'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14552
          mmLeft = 227013
          mmTop = 3969
          mmWidth = 2646
          BandType = 3
          GroupNo = 1
        end
        object ppLabel48: TppLabel
          UserName = 'Label101'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Initial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 2646
          mmLeft = 227542
          mmTop = 4498
          mmWidth = 54240
          BandType = 3
          GroupNo = 1
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14288
          mmLeft = 41804
          mmTop = 265
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object dx001: TppLabel
          UserName = 'dx001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'DC '
          Color = 8953851
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 2646
          mmLeft = 42069
          mmTop = 794
          mmWidth = 7938
          BandType = 3
          GroupNo = 1
        end
        object dx002: TppLabel
          UserName = 'dx002'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'date '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 42333
          mmTop = 4498
          mmWidth = 7408
          BandType = 3
          GroupNo = 1
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14288
          mmLeft = 50006
          mmTop = 265
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ship '
          Color = 8953851
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 2646
          mmLeft = 50536
          mmTop = 794
          mmWidth = 8202
          BandType = 3
          GroupNo = 1
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'mode '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 51065
          mmTop = 4498
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLine28: TppLine
          UserName = 'Line28'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 218282
          mmTop = 11113
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object ppLine106: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14552
          mmLeft = 200555
          mmTop = 3969
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object ppLine107: TppLine
          UserName = 'Line107'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 209815
          mmTop = 11113
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel71: TppLabel
          UserName = 'Label102'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkg(!) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 201348
          mmTop = 8202
          mmWidth = 7938
          BandType = 3
          GroupNo = 1
        end
        object ppLabel72: TppLabel
          UserName = 'Label72'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkd '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 210609
          mmTop = 8202
          mmWidth = 16140
          BandType = 3
          GroupNo = 1
        end
        object ppLine108: TppLine
          UserName = 'Line108'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 124090
          mmTop = 7144
          mmWidth = 2117
          BandType = 3
          GroupNo = 1
        end
        object ppLine111: TppLine
          UserName = 'Line111'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 96573
          mmTop = 7144
          mmWidth = 43392
          BandType = 3
          GroupNo = 1
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkd  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 127000
          mmTop = 7673
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkg  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 117211
          mmTop = 7673
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLine112: TppLine
          UserName = 'Line112'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 77788
          mmTop = 7144
          mmWidth = 2381
          BandType = 3
          GroupNo = 1
        end
        object ppLine113: TppLine
          UserName = 'Line113'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 58738
          mmTop = 7144
          mmWidth = 27781
          BandType = 3
          GroupNo = 1
        end
        object ppLabel75: TppLabel
          UserName = 'Label75'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkg '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2117
          mmLeft = 72761
          mmTop = 7673
          mmWidth = 5027
          BandType = 3
          GroupNo = 1
        end
        object ppLabel76: TppLabel
          UserName = 'Label76'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2117
          mmLeft = 80433
          mmTop = 7673
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
        end
        object ppLabel79: TppLabel
          UserName = 'Label79'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Flow '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 75936
          mmTop = 4233
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLabel80: TppLabel
          UserName = 'Label80'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Flow '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 125413
          mmTop = 4233
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLine119: TppLine
          UserName = 'Line119'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 78052
          mmTop = 10583
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLine120: TppLine
          UserName = 'Line120'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 124090
          mmTop = 10583
          mmWidth = 15875
          BandType = 3
          GroupNo = 1
        end
        object dx003: TppLabel
          UserName = 'dx003'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'date '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 42333
          mmTop = 8202
          mmWidth = 7408
          BandType = 3
          GroupNo = 1
        end
        object ppLine147: TppLine
          UserName = 'Line147'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 209815
          mmTop = 7673
          mmWidth = 2910
          BandType = 3
          GroupNo = 2
        end
        object ppLabel55: TppLabel
          UserName = 'Label103'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Repeat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 2646
          mmLeft = 172773
          mmTop = 4498
          mmWidth = 27517
          BandType = 3
          GroupNo = 2
        end
        object ppLine149: TppLine
          UserName = 'Line149'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 116152
          mmTop = 3704
          mmWidth = 1323
          BandType = 3
          GroupNo = 2
        end
        object ppLine152: TppLine
          UserName = 'Line152'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 72231
          mmTop = 3704
          mmWidth = 1852
          BandType = 3
          GroupNo = 2
        end
        object ppLabel99: TppLabel
          UserName = 'Label99'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Repeat '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 61383
          mmTop = 4233
          mmWidth = 7673
          BandType = 3
          GroupNo = 2
        end
        object ppLabel100: TppLabel
          UserName = 'Label100'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Repeat  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 101865
          mmTop = 4233
          mmWidth = 8202
          BandType = 3
          GroupNo = 2
        end
        object ppLine159: TppLine
          UserName = 'Line159'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 190765
          mmTop = 11113
          mmWidth = 2910
          BandType = 3
          GroupNo = 2
        end
        object ppLine162: TppLine
          UserName = 'Line162'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 182034
          mmTop = 7673
          mmWidth = 2910
          BandType = 3
          GroupNo = 2
        end
        object ppLine163: TppLine
          UserName = 'Line163'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 182298
          mmTop = 11113
          mmWidth = 18256
          BandType = 3
          GroupNo = 2
        end
        object ppLabel112: TppLabel
          UserName = 'Label112'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rvs(*) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 192088
          mmTop = 11642
          mmWidth = 6615
          BandType = 3
          GroupNo = 2
        end
        object ppLabel113: TppLabel
          UserName = 'Label113'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkd '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 183092
          mmTop = 8202
          mmWidth = 16669
          BandType = 3
          GroupNo = 2
        end
        object ppLabel111: TppLabel
          UserName = 'Label111'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'NC(^)  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 183092
          mmTop = 11642
          mmWidth = 6879
          BandType = 3
          GroupNo = 2
        end
        object ppLabel107: TppLabel
          UserName = 'Label107'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkg(!) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 173038
          mmTop = 8202
          mmWidth = 7938
          BandType = 3
          GroupNo = 2
        end
        object ppLabel136: TppLabel
          UserName = 'Label136'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkg  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 96838
          mmTop = 7673
          mmWidth = 6350
          BandType = 3
          GroupNo = 2
        end
        object ppLabel137: TppLabel
          UserName = 'Label137'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkd  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 104775
          mmTop = 7673
          mmWidth = 6350
          BandType = 3
          GroupNo = 2
        end
        object ppLabel138: TppLabel
          UserName = 'Label138'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'NC '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 104511
          mmTop = 11113
          mmWidth = 3704
          BandType = 3
          GroupNo = 2
        end
        object ppLabel139: TppLabel
          UserName = 'Label139'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rvs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 110861
          mmTop = 11113
          mmWidth = 4498
          BandType = 3
          GroupNo = 2
        end
        object ppLine182: TppLine
          UserName = 'Line182'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 103188
          mmTop = 7144
          mmWidth = 2117
          BandType = 3
          GroupNo = 2
        end
        object ppLine183: TppLine
          UserName = 'Line1201'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 103188
          mmTop = 10583
          mmWidth = 12965
          BandType = 3
          GroupNo = 2
        end
        object ppLine184: TppLine
          UserName = 'Line184'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 109273
          mmTop = 10583
          mmWidth = 2910
          BandType = 3
          GroupNo = 2
        end
        object ppLabel132: TppLabel
          UserName = 'Label132'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkg '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2117
          mmLeft = 59267
          mmTop = 7673
          mmWidth = 5027
          BandType = 3
          GroupNo = 2
        end
        object ppLabel134: TppLabel
          UserName = 'Label134'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'NC '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2117
          mmLeft = 64558
          mmTop = 11377
          mmWidth = 3175
          BandType = 3
          GroupNo = 2
        end
        object ppLabel133: TppLabel
          UserName = 'Label133'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Chkd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2117
          mmLeft = 66146
          mmTop = 7673
          mmWidth = 4498
          BandType = 3
          GroupNo = 2
        end
        object ppLabel135: TppLabel
          UserName = 'Label135'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rvs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2117
          mmLeft = 68527
          mmTop = 11377
          mmWidth = 3704
          BandType = 3
          GroupNo = 2
        end
        object ppLine189: TppLine
          UserName = 'Line189'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 64029
          mmTop = 7144
          mmWidth = 1323
          BandType = 3
          GroupNo = 2
        end
        object ppLine192: TppLine
          UserName = 'Line192'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 64294
          mmTop = 10848
          mmWidth = 7938
          BandType = 3
          GroupNo = 2
        end
        object ppLine193: TppLine
          UserName = 'Line193'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3704
          mmLeft = 67998
          mmTop = 10848
          mmWidth = 1588
          BandType = 3
          GroupNo = 2
        end
        object ppLabel51: TppLabel
          UserName = 'Label51'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Rvs(*) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 219340
          mmTop = 11642
          mmWidth = 6615
          BandType = 3
          GroupNo = 2
        end
        object ppLine94: TppLine
          UserName = 'Line94'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 2381
          mmLeft = 3175
          mmTop = 14552
          mmWidth = 278871
          BandType = 3
          GroupNo = 2
        end
        object z001: TppLabel
          UserName = 'z001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 172773
          mmTop = 15081
          mmWidth = 8467
          BandType = 3
          GroupNo = 2
        end
        object z002: TppLabel
          UserName = 'z002'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 182827
          mmTop = 15081
          mmWidth = 7408
          BandType = 3
          GroupNo = 2
        end
        object z003: TppLabel
          UserName = 'z003'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 191559
          mmTop = 15081
          mmWidth = 8467
          BandType = 3
          GroupNo = 2
        end
        object z004: TppLabel
          UserName = 'z004'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 201084
          mmTop = 15081
          mmWidth = 8467
          BandType = 3
          GroupNo = 2
        end
        object z005: TppLabel
          UserName = 'z005'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 210344
          mmTop = 15081
          mmWidth = 7408
          BandType = 3
          GroupNo = 2
        end
        object z006: TppLabel
          UserName = 'z006'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 218811
          mmTop = 15081
          mmWidth = 7938
          BandType = 3
          GroupNo = 2
        end
        object z007: TppLabel
          UserName = 'Label1101'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 227542
          mmTop = 15081
          mmWidth = 54240
          BandType = 3
          GroupNo = 2
        end
        object ppLabel104: TppLabel
          UserName = 'Label104'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '[Changing check not apply to this field]  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 228600
          mmTop = 10054
          mmWidth = 52388
          BandType = 3
          GroupNo = 2
        end
        object ppLabel108: TppLabel
          UserName = 'Label108'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Nr of Style/Style# '
          Color = 8953851
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 2646
          mmLeft = 172509
          mmTop = 794
          mmWidth = 109273
          BandType = 3
          GroupNo = 2
        end
        object ppLine208: TppLine
          UserName = 'Line208'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 172244
          mmTop = 7673
          mmWidth = 110067
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape6'
          mmHeight = 4763
          mmLeft = 3175
          mmTop = 0
          mmWidth = 279136
          BandType = 5
          GroupNo = 1
        end
        object ppShape5: TppShape
          UserName = 'Shape5'
          Brush.Color = 13499643
          Pen.Style = psClear
          mmHeight = 4498
          mmLeft = 3440
          mmTop = 0
          mmWidth = 278607
          BandType = 5
          GroupNo = 2
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 58738
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 1
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 96309
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 1
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 157163
          mmTop = 0
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object ppLine21: TppLine
          UserName = 'Line21'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 172244
          mmTop = 0
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 3969
          mmTop = 529
          mmWidth = 6350
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'S2'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2582
          mmLeft = 148348
          mmTop = 529
          mmWidth = 8551
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'JHRS1'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          Transparent = True
          Visible = False
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2646
          mmLeft = 12965
          mmTop = 529
          mmWidth = 6085
          BandType = 5
          GroupNo = 1
        end
        object rx002: TppLabel
          UserName = 'rx002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'range  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 30163
          mmTop = 529
          mmWidth = 6879
          BandType = 5
          GroupNo = 1
        end
        object x008: TppLabel
          UserName = 'x008'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2582
          mmLeft = 168424
          mmTop = 529
          mmWidth = 3556
          BandType = 5
          GroupNo = 1
        end
        object x07: TppLabel
          UserName = 'x07'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2582
          mmLeft = 78317
          mmTop = 529
          mmWidth = 3556
          BandType = 5
          GroupNo = 1
        end
        object x08: TppLabel
          UserName = 'x08'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2582
          mmLeft = 86784
          mmTop = 529
          mmWidth = 3556
          BandType = 5
          GroupNo = 1
        end
        object x09: TppLabel
          UserName = 'x09'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 124619
          mmTop = 529
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object x10: TppLabel
          UserName = 'x10'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 140494
          mmTop = 529
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object ra04: TppLabel
          UserName = 'ra04'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2582
          mmLeft = 82286
          mmTop = 529
          mmWidth = 3556
          BandType = 5
          GroupNo = 1
        end
        object ra05: TppLabel
          UserName = 'ra05'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 132557
          mmTop = 529
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object c03: TppLabel
          UserName = 'c03'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 157692
          mmTop = 529
          mmWidth = 3440
          BandType = 5
          GroupNo = 1
        end
        object c04: TppLabel
          UserName = 'c04'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 162984
          mmTop = 529
          mmWidth = 3440
          BandType = 5
          GroupNo = 1
        end
        object ppLine74: TppLine
          UserName = 'Line74'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 132027
          mmTop = 0
          mmWidth = 2117
          BandType = 5
          GroupNo = 1
        end
        object ppLine75: TppLine
          UserName = 'Line75'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 139965
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 1
        end
        object ppLine76: TppLine
          UserName = 'Line76'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 147902
          mmTop = 0
          mmWidth = 2381
          BandType = 5
          GroupNo = 1
        end
        object ppLine77: TppLine
          UserName = 'Line77'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 162454
          mmTop = 0
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object ppLine78: TppLine
          UserName = 'Line78'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 167217
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 1
        end
        object ppLine79: TppLine
          UserName = 'Line79'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 86254
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 1
        end
        object ppLine80: TppLine
          UserName = 'Line80'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 91811
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 1
        end
        object ppLine81: TppLine
          UserName = 'Line81'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 81756
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 1
        end
        object new001: TppLabel
          UserName = 'new001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 11642
          mmTop = 529
          mmWidth = 15346
          BandType = 5
          GroupNo = 1
        end
        object dcd001: TppLabel
          UserName = 'dcd001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 38894
          mmTop = 529
          mmWidth = 6879
          BandType = 5
          GroupNo = 1
        end
        object ppLine110: TppLine
          UserName = 'Line110'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 4498
          mmLeft = 124090
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 1
        end
        object ppLine115: TppLine
          UserName = 'Line115'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 77788
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 1
        end
        object ck004: TppLabel
          UserName = 'ck004'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 72761
          mmTop = 529
          mmWidth = 4763
          BandType = 5
          GroupNo = 1
        end
        object ck005: TppLabel
          UserName = 'ck005'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 116681
          mmTop = 529
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
        object ppLine121: TppLine
          UserName = 'Line121'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 37835
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 1
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
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2582
          mmLeft = 92488
          mmTop = 529
          mmWidth = 3556
          BandType = 5
          GroupNo = 1
        end
        object ppLine151: TppLine
          UserName = 'Line151'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 116152
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object ppLine154: TppLine
          UserName = 'Line154'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 72231
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object rpt004: TppLabel
          UserName = 'rpt004'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 59267
          mmTop = 529
          mmWidth = 3556
          BandType = 5
          GroupNo = 2
        end
        object rpt005: TppLabel
          UserName = 'rpt005'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 96838
          mmTop = 529
          mmWidth = 5927
          BandType = 5
          GroupNo = 2
        end
        object rnc005: TppLabel
          UserName = 'rnc005'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 103452
          mmTop = 529
          mmWidth = 5821
          BandType = 5
          GroupNo = 2
        end
        object rvs005: TppLabel
          UserName = 'rvs005'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 110067
          mmTop = 529
          mmWidth = 5927
          BandType = 5
          GroupNo = 2
        end
        object ppLine186: TppLine
          UserName = 'Line186'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 109538
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object ppLine188: TppLine
          UserName = 'Line188'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 102923
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object ppLine191: TppLine
          UserName = 'Line191'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 64029
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object ppLine195: TppLine
          UserName = 'Line195'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 67998
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object rnc004: TppLabel
          UserName = 'rnc004'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 64558
          mmTop = 529
          mmWidth = 3556
          BandType = 5
          GroupNo = 2
        end
        object rvs004: TppLabel
          UserName = 'rvs004'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 68527
          mmTop = 529
          mmWidth = 3556
          BandType = 5
          GroupNo = 2
        end
        object ppLabel106: TppLabel
          UserName = 'Label106'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'NC = No change request      RVS = Revision request'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2582
          mmLeft = 179123
          mmTop = 794
          mmWidth = 89429
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
