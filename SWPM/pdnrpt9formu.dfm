object frmpdnrpt9: Tfrmpdnrpt9
  Left = 180
  Top = 145
  Caption = 'frmpdnrpt9'
  ClientHeight = 26
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_d'
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
    Top = 65528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 32
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 64
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 65528
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 128
    Top = 65528
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 192
    Top = 65528
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 224
    Top = 65528
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_d'
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
    Left = 256
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
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
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
    Left = 160
    Top = 65528
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN acted performance by WO (Appoint Clr) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 44979
        mmTop = 5027
        mmWidth = 134409
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 33867
        mmTop = 14552
        mmWidth = 6085
        BandType = 0
      end
      object pdn001: TppLabel
        UserName = 'pdn001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 42333
        mmTop = 14552
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty Date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 73554
        mmTop = 14552
        mmWidth = 15875
        BandType = 0
      end
      object exfty001: TppLabel
        UserName = 'exfty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 100542
        mmTop = 14552
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
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
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 155311
        mmTop = 14552
        mmWidth = 8202
        BandType = 0
      end
      object week01: TppLabel
        UserName = 'week01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 14552
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 14552
        mmWidth = 11906
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 14552
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'From   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 14552
        mmWidth = 8996
        BandType = 0
      end
      object exfty002: TppLabel
        UserName = 'exfty002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 125413
        mmTop = 14552
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 116152
        mmTop = 14552
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label13'
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
        mmHeight = 3704
        mmLeft = 199496
        mmTop = 14552
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'yyyy/MM/dd hh:nn:ss'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 214842
        mmTop = 14552
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
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
        mmHeight = 3704
        mmLeft = 245534
        mmTop = 14552
        mmWidth = 7144
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 254001
        mmTop = 14552
        mmWidth = 11113
        BandType = 0
      end
      object grade002: TppLabel
        UserName = 'grade002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 221721
        mmTop = 5027
        mmWidth = 14817
        BandType = 0
      end
      object acted001: TppLabel
        UserName = 'acted001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Acted On '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 221721
        mmTop = 9790
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- with SKU '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 179917
        mmTop = 5556
        mmWidth = 24077
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 2117
        mmTop = 794
        mmWidth = 5419
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 14288
        mmTop = 794
        mmWidth = 7535
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
        DataField = 'QTY'
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
        mmLeft = 53849
        mmTop = 794
        mmWidth = 4360
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
        DataField = 'ACOL'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 40481
        mmTop = 794
        mmWidth = 5757
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
        DataField = 'SQTY'
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
        mmLeft = 61183
        mmTop = 794
        mmWidth = 5757
        BandType = 4
      end
      object sdd01: TppDBText
        UserName = 'sdd01'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIFF'
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
        mmLeft = 249789
        mmTop = 794
        mmWidth = 4741
        BandType = 4
      end
      object sd103: TppLabel
        UserName = 'sd103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd1003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 86519
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd104: TppLabel
        UserName = 'sd104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd1004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 94456
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd106: TppLabel
        UserName = 'sd106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd1006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 103452
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd108: TppLabel
        UserName = 'sd108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd1008'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 121709
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd101: TppLabel
        UserName = 'sd101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 69321
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sdp01: TppLabel
        UserName = 'sdp01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'sdp01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 257705
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd107: TppLabel
        UserName = 'sd107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd1004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 111654
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object cstyle001: TppDBText
        UserName = 'cstyle001'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 25135
        mmTop = 794
        mmWidth = 8213
        BandType = 4
      end
      object sd011: TppDBText
        UserName = 'sd011'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SQTY'
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
        mmLeft = 215700
        mmTop = 794
        mmWidth = 5757
        BandType = 4
      end
      object sd102: TppLabel
        UserName = 'sd102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 78317
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd008: TppDBText
        UserName = 'sd008'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
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
        mmLeft = 184553
        mmTop = 794
        mmWidth = 4360
        BandType = 4
      end
      object sd009: TppLabel
        UserName = 'sd009'
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
        mmLeft = 193940
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd010: TppLabel
        UserName = 'sd010'
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
        mmLeft = 204523
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd012: TppLabel
        UserName = 'sd012'
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
        mmLeft = 226748
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd013: TppLabel
        UserName = 'sd013'
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
        mmLeft = 237332
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sdbcn: TppLabel
        UserName = 'sdbcn'
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
        mmLeft = 130175
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sdcast: TppLabel
        UserName = 'sdcast'
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
        mmLeft = 142875
        mmTop = 794
        mmWidth = 6879
        BandType = 4
      end
      object sdpo: TppLabel
        UserName = 'sdpo'
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
        mmLeft = 154782
        mmTop = 794
        mmWidth = 4498
        BandType = 4
      end
      object sdcolor: TppLabel
        UserName = 'sdcolor'
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
        mmLeft = 167746
        mmTop = 794
        mmWidth = 6879
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      NewPage = True
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 14288
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
        mmTop = 8202
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
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
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '11.07'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppHeaderBand2: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand3: TppDetailBand
            BeforePrint = ppDetailBand3BeforePrint
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'J_NO'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 1323
              mmTop = 529
              mmWidth = 10118
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'J2_JOB'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 13494
              mmTop = 529
              mmWidth = 9229
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
              DataField = 'QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 53446
              mmTop = 529
              mmWidth = 3556
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
              DataField = 'ACOL'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ResetGroup = ppGroup2
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 39688
              mmTop = 529
              mmWidth = 3895
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
              DataField = 'SQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 60516
              mmTop = 529
              mmWidth = 5757
              BandType = 4
            end
            object dd001: TppDBText
              UserName = 'dd001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DIFF'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 248847
              mmTop = 529
              mmWidth = 4741
              BandType = 4
            end
            object d1003: TppLabel
              UserName = 'd1003'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'd1003'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2498
              mmLeft = 83344
              mmTop = 529
              mmWidth = 5927
              BandType = 4
            end
            object d1004: TppLabel
              UserName = 'd1004'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2498
              mmLeft = 91546
              mmTop = 529
              mmWidth = 5927
              BandType = 4
            end
            object d1006: TppLabel
              UserName = 'd1006'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'd1006'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2498
              mmLeft = 101336
              mmTop = 529
              mmWidth = 5927
              BandType = 4
            end
            object d1008: TppLabel
              UserName = 'd1008'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'd1008'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2498
              mmLeft = 116946
              mmTop = 529
              mmWidth = 5927
              BandType = 4
            end
            object d2003: TppLabel
              UserName = 'd2003'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 143934
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2004: TppLabel
              UserName = 'd2004'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 152136
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2006: TppLabel
              UserName = 'd2006'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 161925
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2008: TppLabel
              UserName = 'd2008'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 177536
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3003: TppLabel
              UserName = 'd3003'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 204259
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3004: TppLabel
              UserName = 'd3004'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 212461
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3006: TppLabel
              UserName = 'd3006'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 222250
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3008: TppLabel
              UserName = 'd3008'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 237861
              mmTop = 529
              mmWidth = 5556
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
              DataField = 'PSIZ'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 45773
              mmTop = 529
              mmWidth = 3895
              BandType = 4
            end
            object d1001: TppLabel
              UserName = 'd1001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 68527
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d1002: TppLabel
              UserName = 'd1002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 76465
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2002: TppLabel
              UserName = 'd2002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 136790
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2001: TppLabel
              UserName = 'd2001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 128852
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3001: TppLabel
              UserName = 'd3001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 189177
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3002: TppLabel
              UserName = 'd3002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 197115
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object dp001: TppLabel
              UserName = 'dp001'
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
              mmLeft = 256382
              mmTop = 529
              mmWidth = 6615
              BandType = 4
            end
            object d1007: TppLabel
              UserName = 'd1007'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 109273
              mmTop = 529
              mmWidth = 5821
              BandType = 4
            end
            object d2007: TppLabel
              UserName = 'd2007'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 169863
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3007: TppLabel
              UserName = 'd3007'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 230188
              mmTop = 529
              mmWidth = 5556
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
              DataField = 'CSTYLE'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 25665
              mmTop = 529
              mmWidth = 8509
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            BeforePrint = ppSummaryBand3BeforePrint
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppShape5: TppShape
              UserName = 'Shape5'
              mmHeight = 5027
              mmLeft = 794
              mmTop = 265
              mmWidth = 267494
              BandType = 7
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Grand total: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 1323
              mmTop = 1588
              mmWidth = 11769
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 46831
              mmTop = 1588
              mmWidth = 10075
              BandType = 7
            end
            object tbq001: TppDBCalc
              UserName = 'tbq001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 54769
              mmTop = 1588
              mmWidth = 11472
              BandType = 7
            end
            object tbd001: TppDBCalc
              UserName = 'tbd001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DIFF'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 242888
              mmTop = 1588
              mmWidth = 10456
              BandType = 7
            end
            object tb1003: TppDBCalc
              UserName = 'tb1003'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1T1QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 73819
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb1004: TppDBCalc
              UserName = 'tb1004'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1T2QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 82021
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb1006: TppDBCalc
              UserName = 'tb1006'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1T3QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 91811
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb1008: TppDBCalc
              UserName = 'tb1008'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1T4QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 107421
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb2003: TppDBCalc
              UserName = 'tb2003'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2T1QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 134144
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb2004: TppDBCalc
              UserName = 'tb2004'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2T2QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 142346
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb2006: TppDBCalc
              UserName = 'tb2006'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2T3QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 152136
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb2008: TppDBCalc
              UserName = 'tb2008'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2T4QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 167746
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb3003: TppDBCalc
              UserName = 'tb3003'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R3T1QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 194469
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb3004: TppDBCalc
              UserName = 'tb3004'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R3T2QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 202671
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb3006: TppDBCalc
              UserName = 'tb3006'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R3T3QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 212461
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb3008: TppDBCalc
              UserName = 'tb3008'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R3T4QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 228071
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb1001: TppDBCalc
              UserName = 'tb1001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 61383
              mmTop = 1588
              mmWidth = 12785
              BandType = 7
            end
            object tb1002: TppDBCalc
              UserName = 'tb1002'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1PQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 67733
              mmTop = 1588
              mmWidth = 14182
              BandType = 7
            end
            object tb2001: TppDBCalc
              UserName = 'tb2001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 121709
              mmTop = 1588
              mmWidth = 12785
              BandType = 7
            end
            object tb2002: TppDBCalc
              UserName = 'tb2002'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2PQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 128059
              mmTop = 1588
              mmWidth = 14182
              BandType = 7
            end
            object tb3001: TppDBCalc
              UserName = 'tb3001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R3QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 182034
              mmTop = 1588
              mmWidth = 12785
              BandType = 7
            end
            object tb3002: TppDBCalc
              UserName = 'tb3002'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R3PQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 188384
              mmTop = 1588
              mmWidth = 14182
              BandType = 7
            end
            object tbp001: TppLabel
              UserName = 'tbp001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'tbp001'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 256382
              mmTop = 1588
              mmWidth = 6519
              BandType = 7
            end
            object tb1007: TppDBCalc
              UserName = 'tb1007'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1AQQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 99219
              mmTop = 1588
              mmWidth = 15833
              BandType = 7
            end
            object tb2007: TppDBCalc
              UserName = 'tb2007'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2AQQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 159544
              mmTop = 1588
              mmWidth = 15833
              BandType = 7
            end
            object tb3007: TppDBCalc
              UserName = 'tb3007'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R3AQQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 219869
              mmTop = 1588
              mmWidth = 15833
              BandType = 7
            end
          end
          object ppGroup8: TppGroup
            BreakName = 'SEQ'
            DataPipeline = ppDBPipeline1
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group8'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand8: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand8: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup9: TppGroup
            BreakName = 'SEQ'
            DataPipeline = ppDBPipeline1
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group9'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand9: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand9: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'J_NO'
            DataPipeline = ppDBPipeline1
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group5'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand5: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup6: TppGroup
            BreakName = 'J2_JOB'
            DataPipeline = ppDBPipeline1
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group6'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand6: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand6: TppGroupFooterBand
              BeforePrint = ppGroupFooterBand6BeforePrint
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppShape2: TppShape
                UserName = 'Shape2'
                mmHeight = 5027
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 5
                GroupNo = 3
              end
              object ppLabel13: TppLabel
                UserName = 'Label11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Sub total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 1323
                mmTop = 1323
                mmWidth = 8731
                BandType = 5
                GroupNo = 3
              end
              object ppDBCalc1: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 46810
                mmTop = 1323
                mmWidth = 10075
                BandType = 5
                GroupNo = 3
              end
              object bq001: TppDBCalc
                UserName = 'bq001'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'SQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 54674
                mmTop = 1323
                mmWidth = 11472
                BandType = 5
                GroupNo = 3
              end
              object bd001: TppDBCalc
                UserName = 'bd001'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'DIFF'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 243015
                mmTop = 1323
                mmWidth = 10456
                BandType = 5
                GroupNo = 3
              end
              object b1003: TppDBCalc
                UserName = 'b1003'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 73883
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b1004: TppDBCalc
                UserName = 'b1004'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 82085
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b1006: TppDBCalc
                UserName = 'b1006'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 91875
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b1008: TppDBCalc
                UserName = 'b1008'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 107485
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b2003: TppDBCalc
                UserName = 'b2003'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 134208
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b2004: TppDBCalc
                UserName = 'b2004'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 142410
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b2006: TppDBCalc
                UserName = 'b2006'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 152200
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b2008: TppDBCalc
                UserName = 'b2008'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 167810
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b3003: TppDBCalc
                UserName = 'b3003'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R3T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 194533
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b3004: TppDBCalc
                UserName = 'b3004'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R3T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 202735
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b3006: TppDBCalc
                UserName = 'b3006'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R3T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212525
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b3008: TppDBCalc
                UserName = 'b3008'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R3T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228135
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b1001: TppDBCalc
                UserName = 'b1001'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 61298
                mmTop = 1323
                mmWidth = 12785
                BandType = 5
                GroupNo = 3
              end
              object b1002: TppDBCalc
                UserName = 'b1002'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 67839
                mmTop = 1323
                mmWidth = 14182
                BandType = 5
                GroupNo = 3
              end
              object b2001: TppDBCalc
                UserName = 'b2001'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 121624
                mmTop = 1323
                mmWidth = 12785
                BandType = 5
                GroupNo = 3
              end
              object b2002: TppDBCalc
                UserName = 'b2002'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 128165
                mmTop = 1323
                mmWidth = 14182
                BandType = 5
                GroupNo = 3
              end
              object b3001: TppDBCalc
                UserName = 'b3001'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 181949
                mmTop = 1323
                mmWidth = 12785
                BandType = 5
                GroupNo = 3
              end
              object b3002: TppDBCalc
                UserName = 'b3002'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R3PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 188490
                mmTop = 1323
                mmWidth = 14182
                BandType = 5
                GroupNo = 3
              end
              object bp001: TppLabel
                UserName = 'bp001'
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
                mmLeft = 256382
                mmTop = 1323
                mmWidth = 6615
                BandType = 5
                GroupNo = 3
              end
              object b1007: TppDBCalc
                UserName = 'b1007'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 99261
                mmTop = 1323
                mmWidth = 15833
                BandType = 5
                GroupNo = 3
              end
              object b2007: TppDBCalc
                UserName = 'b2007'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 159586
                mmTop = 1323
                mmWidth = 15833
                BandType = 5
                GroupNo = 3
              end
              object b3007: TppDBCalc
                UserName = 'b3007'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R3AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 219911
                mmTop = 1323
                mmWidth = 15833
                BandType = 5
                GroupNo = 3
              end
            end
          end
          object ppGroup7: TppGroup
            BreakName = 'ACOL'
            DataPipeline = ppDBPipeline1
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group7'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand7: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand7BeforePrint
              mmBottomOffset = 0
              mmHeight = 11377
              mmPrintPosition = 0
              object ppShape1: TppShape
                UserName = 'Shape1'
                mmHeight = 11377
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 3
                GroupNo = 4
              end
              object ppLabel2: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Project # '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 1323
                mmTop = 1058
                mmWidth = 8467
                BandType = 3
                GroupNo = 4
              end
              object ppLabel3: TppLabel
                UserName = 'Label2'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'WO #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 13494
                mmTop = 1058
                mmWidth = 6085
                BandType = 3
                GroupNo = 4
              end
              object ppLabel5: TppLabel
                UserName = 'Label5'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'WO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 52917
                mmTop = 1058
                mmWidth = 4233
                BandType = 3
                GroupNo = 4
              end
              object ppLabel6: TppLabel
                UserName = 'Label6'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Clr '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 39688
                mmTop = 1058
                mmWidth = 3440
                BandType = 3
                GroupNo = 4
              end
              object ppLabel7: TppLabel
                UserName = 'Label7'
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
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 39688
                mmTop = 4498
                mmWidth = 5292
                BandType = 3
                GroupNo = 4
              end
              object ppLabel8: TppLabel
                UserName = 'Label8'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 61648
                mmTop = 1058
                mmWidth = 5027
                BandType = 3
                GroupNo = 4
              end
              object ppLine1: TppLine
                UserName = 'Line1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 11377
                mmLeft = 67204
                mmTop = 0
                mmWidth = 1852
                BandType = 3
                GroupNo = 4
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 11377
                mmLeft = 245005
                mmTop = 0
                mmWidth = 2117
                BandType = 3
                GroupNo = 4
              end
              object ppLabel12: TppLabel
                UserName = 'Label102'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty) '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 247121
                mmTop = 7938
                mmWidth = 6615
                BandType = 3
                GroupNo = 4
              end
              object s3003: TppLabel
                UserName = 's3003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 205846
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s3004: TppLabel
                UserName = 's3004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 214048
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s3006: TppLabel
                UserName = 's3006'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s3008: TppLabel
                UserName = 's3008'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 4498
                mmWidth = 6085
                BandType = 3
                GroupNo = 4
              end
              object rwo003: TppLabel
                UserName = 'rwo003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 197644
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 4
              end
              object ppLabel14: TppLabel
                UserName = 'Label14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 52917
                mmTop = 4498
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object ppLabel15: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ttl  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 61648
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 4
              end
              object ppLabel16: TppLabel
                UserName = 'Label16'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Size '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 45773
                mmTop = 1058
                mmWidth = 4498
                BandType = 3
                GroupNo = 4
              end
              object ppLabel9: TppLabel
                UserName = 'Label9'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Diff Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 245798
                mmTop = 1058
                mmWidth = 7673
                BandType = 3
                GroupNo = 4
              end
              object ppLabel10: TppLabel
                UserName = 'Label10'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 61648
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object ppLabel11: TppLabel
                UserName = 'Label17'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '(PDN Vs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 245798
                mmTop = 4498
                mmWidth = 8731
                BandType = 3
                GroupNo = 4
              end
              object s3108: TppLabel
                UserName = 's3108'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s3001: TppLabel
                UserName = 's3001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 190765
                mmTop = 4498
                mmWidth = 5821
                BandType = 3
                GroupNo = 4
              end
              object s3002: TppLabel
                UserName = 's3002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 197644
                mmTop = 4498
                mmWidth = 5027
                BandType = 3
                GroupNo = 4
              end
              object s3102: TppLabel
                UserName = 's3102'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 197644
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object ppLabel39: TppLabel
                UserName = 'Label39'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '(% ) '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 256382
                mmTop = 4498
                mmWidth = 4498
                BandType = 3
                GroupNo = 4
              end
              object s3101: TppLabel
                UserName = 's3101'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 190765
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s3007: TppLabel
                UserName = 's3007'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 4498
                mmWidth = 4763
                BandType = 3
                GroupNo = 4
              end
              object s3107: TppLabel
                UserName = 's3107'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s3103: TppLabel
                UserName = 's3103'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 205846
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s3104: TppLabel
                UserName = 's3104'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 214048
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s3106: TppLabel
                UserName = 's3106'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object rwo001: TppLabel
                UserName = 'rwo001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 76994
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 4
              end
              object rwo002: TppLabel
                UserName = 'rwo002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 137319
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 4
              end
              object s1001: TppLabel
                UserName = 's1001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 70115
                mmTop = 4498
                mmWidth = 5821
                BandType = 3
                GroupNo = 4
              end
              object s1002: TppLabel
                UserName = 's1002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 76994
                mmTop = 4498
                mmWidth = 5027
                BandType = 3
                GroupNo = 4
              end
              object s1003: TppLabel
                UserName = 's1003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 85196
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s1004: TppLabel
                UserName = 's1004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 93398
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s1006: TppLabel
                UserName = 's1006'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 103188
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s1007: TppLabel
                UserName = 's1007'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 110331
                mmTop = 4498
                mmWidth = 4763
                BandType = 3
                GroupNo = 4
              end
              object s1008: TppLabel
                UserName = 's1008'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 116681
                mmTop = 4498
                mmWidth = 6085
                BandType = 3
                GroupNo = 4
              end
              object s2001: TppLabel
                UserName = 's2001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 130440
                mmTop = 4498
                mmWidth = 5821
                BandType = 3
                GroupNo = 4
              end
              object s2002: TppLabel
                UserName = 's2002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 137319
                mmTop = 4498
                mmWidth = 5027
                BandType = 3
                GroupNo = 4
              end
              object s2003: TppLabel
                UserName = 's2003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 145521
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s2004: TppLabel
                UserName = 's2004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 153723
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s2006: TppLabel
                UserName = 's2006'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 163513
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s2007: TppLabel
                UserName = 's2007'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 170657
                mmTop = 4498
                mmWidth = 4763
                BandType = 3
                GroupNo = 4
              end
              object s2008: TppLabel
                UserName = 's2008'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 177007
                mmTop = 4498
                mmWidth = 6085
                BandType = 3
                GroupNo = 4
              end
              object s1101: TppLabel
                UserName = 's1101'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 70115
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1102: TppLabel
                UserName = 's1102'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 76994
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1103: TppLabel
                UserName = 's1103'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 85196
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1104: TppLabel
                UserName = 's1104'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 93398
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1106: TppLabel
                UserName = 's1106'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 103188
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1107: TppLabel
                UserName = 's1107'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 110331
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1108: TppLabel
                UserName = 's1108'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 116681
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2101: TppLabel
                UserName = 's2101'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 130440
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2102: TppLabel
                UserName = 's2102'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 137319
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2103: TppLabel
                UserName = 's2103'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 145521
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2104: TppLabel
                UserName = 's2104'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 153723
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2106: TppLabel
                UserName = 's2106'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 163513
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2107: TppLabel
                UserName = 's2107'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 170657
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2108: TppLabel
                UserName = 's2108'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 177007
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object ppLabel4: TppLabel
                UserName = 'Label4'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Cust Style   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 25665
                mmTop = 1058
                mmWidth = 11377
                BandType = 3
                GroupNo = 4
              end
            end
            object ppGroupFooterBand7: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WO dependent (appoint clr) : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 2910
        mmWidth = 39031
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand4BeforePrint
        mmBottomOffset = 0
        mmHeight = 22490
        mmPrintPosition = 0
        object ppLabel26: TppLabel
          UserName = 'Label18'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Summary : - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1323
          mmTop = 2646
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 14023
          mmLeft = 794
          mmTop = 8467
          mmWidth = 267494
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Project # '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 2117
          mmTop = 9525
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'WO #  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 14288
          mmTop = 9525
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'WO Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 52388
          mmTop = 9525
          mmWidth = 8255
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Clr '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 40481
          mmTop = 9525
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
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
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 40481
          mmTop = 12965
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'PDN '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 62442
          mmTop = 9525
          mmWidth = 5027
          BandType = 3
          GroupNo = 0
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
          mmLeft = 67998
          mmTop = 8467
          mmWidth = 1852
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14023
          mmLeft = 245798
          mmTop = 8467
          mmWidth = 2117
          BandType = 3
          GroupNo = 0
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ex-fty) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 247915
          mmTop = 16404
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(appt clr)  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 52388
          mmTop = 12965
          mmWidth = 9652
          BandType = 3
          GroupNo = 0
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 62442
          mmTop = 12965
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 246592
          mmTop = 9525
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label101'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 62442
          mmTop = 16404
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(PDN Vs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 246592
          mmTop = 12965
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
        end
        object ppLabel47: TppLabel
          UserName = 'Label47'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(% ) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 257705
          mmTop = 12965
          mmWidth = 4498
          BandType = 3
          GroupNo = 0
        end
        object srwo01: TppLabel
          UserName = 'srwo01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RWO 1 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 2646
          mmLeft = 77788
          mmTop = 9525
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ss101: TppLabel
          UserName = 'ss101'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RWO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 70908
          mmTop = 12965
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ss103: TppLabel
          UserName = 'ss103'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'T1 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 88371
          mmTop = 12965
          mmWidth = 3175
          BandType = 3
          GroupNo = 0
        end
        object ss104: TppLabel
          UserName = 'ss104'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'T2 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 96309
          mmTop = 12965
          mmWidth = 3175
          BandType = 3
          GroupNo = 0
        end
        object ss106: TppLabel
          UserName = 'ss106'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'T3 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 105304
          mmTop = 12965
          mmWidth = 3175
          BandType = 3
          GroupNo = 0
        end
        object ss107: TppLabel
          UserName = 'ss107'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'AQL '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 112713
          mmTop = 12965
          mmWidth = 4763
          BandType = 3
          GroupNo = 0
        end
        object ss108: TppLabel
          UserName = 'ss108'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ex-fty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 121444
          mmTop = 12965
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ss111: TppLabel
          UserName = 'ss111'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 70908
          mmTop = 16404
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ss113: TppLabel
          UserName = 'ss113'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 88371
          mmTop = 16404
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ss114: TppLabel
          UserName = 'ss114'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 96309
          mmTop = 16404
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ss116: TppLabel
          UserName = 'ss116'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 105304
          mmTop = 16404
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ss117: TppLabel
          UserName = 'ss117'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 112713
          mmTop = 16404
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ss118: TppLabel
          UserName = 'ss118'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 121444
          mmTop = 16404
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cust Style  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 25135
          mmTop = 9525
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label401'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cast  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 142875
          mmTop = 12965
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
        end
        object ppLabel51: TppLabel
          UserName = 'Label51'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Label '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 142875
          mmTop = 16140
          mmWidth = 5842
          BandType = 3
          GroupNo = 0
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cust PO# '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 154782
          mmTop = 12965
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cust Clr '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 167746
          mmTop = 12965
          mmWidth = 8297
          BandType = 3
          GroupNo = 0
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Code/Name '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 167746
          mmTop = 16140
          mmWidth = 11853
          BandType = 3
          GroupNo = 0
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Shipped  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 203465
          mmTop = 12965
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 203465
          mmTop = 16404
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ppLabel61: TppLabel
          UserName = 'Label61'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 214842
          mmTop = 16404
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'PDN  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 214842
          mmTop = 12965
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'WO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 226748
          mmTop = 16404
          mmWidth = 4233
          BandType = 3
          GroupNo = 0
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Coming Bal Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 226748
          mmTop = 12965
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 68263
          mmTop = 12435
          mmWidth = 199761
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RWO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 95250
          mmTop = 9525
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14023
          mmLeft = 128588
          mmTop = 8467
          mmWidth = 1852
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Additional Information '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 179388
          mmTop = 9525
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
        end
        object ppLabel66: TppLabel
          UserName = 'Label66'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'PDN '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 79375
          mmTop = 12965
          mmWidth = 5027
          BandType = 3
          GroupNo = 0
        end
        object ppLabel67: TppLabel
          UserName = 'Label67'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 79375
          mmTop = 16404
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ppLabel68: TppLabel
          UserName = 'Label68'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RWO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 194205
          mmTop = 12965
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLabel69: TppLabel
          UserName = 'Label69'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 194205
          mmTop = 16404
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ppLabel70: TppLabel
          UserName = 'Label201'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'WO Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 181505
          mmTop = 12965
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
        end
        object ppLabel72: TppLabel
          UserName = 'Label72'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(appt clr) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 181505
          mmTop = 16140
          mmWidth = 9059
          BandType = 3
          GroupNo = 0
        end
        object ppLabel71: TppLabel
          UserName = 'Label71'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RWO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 236803
          mmTop = 16404
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Manifest #  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 129911
          mmTop = 12965
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(if available) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 142082
          mmTop = 19315
          mmWidth = 12234
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(if available) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 167746
          mmTop = 19315
          mmWidth = 12234
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand4BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 103981
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          mmHeight = 5027
          mmLeft = 794
          mmTop = 0
          mmWidth = 267494
          BandType = 5
          GroupNo = 0
        end
        object ppLabel96: TppLabel
          UserName = 'Label96'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand total: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 2117
          mmTop = 1323
          mmWidth = 11642
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 47604
          mmTop = 1323
          mmWidth = 10075
          BandType = 5
          GroupNo = 0
        end
        object sbq01: TppDBCalc
          UserName = 'sbq01'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 55468
          mmTop = 1323
          mmWidth = 11472
          BandType = 5
          GroupNo = 0
        end
        object sbd01: TppDBCalc
          UserName = 'sbd01'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'DIFF'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 243809
          mmTop = 1323
          mmWidth = 10456
          BandType = 5
          GroupNo = 0
        end
        object sb103: TppDBCalc
          UserName = 'sb103'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1T1QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 77058
          mmTop = 1323
          mmWidth = 15282
          BandType = 5
          GroupNo = 0
        end
        object sb104: TppDBCalc
          UserName = 'sb104'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1T2QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 84995
          mmTop = 1323
          mmWidth = 15282
          BandType = 5
          GroupNo = 0
        end
        object sb106: TppDBCalc
          UserName = 'sb106'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1T3QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 93991
          mmTop = 1323
          mmWidth = 15282
          BandType = 5
          GroupNo = 0
        end
        object sb108: TppDBCalc
          UserName = 'sb108'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1T4QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 112248
          mmTop = 1323
          mmWidth = 15282
          BandType = 5
          GroupNo = 0
        end
        object sb101: TppDBCalc
          UserName = 'sb101'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 61828
          mmTop = 1323
          mmWidth = 12785
          BandType = 5
          GroupNo = 0
        end
        object sbp01: TppLabel
          UserName = 'sbp01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'sbp01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 257705
          mmTop = 1323
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
        end
        object sb107: TppDBCalc
          UserName = 'sb107'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1AQQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 101642
          mmTop = 1323
          mmWidth = 15833
          BandType = 5
          GroupNo = 0
        end
        object sb102: TppDBCalc
          UserName = 'sb102'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1PQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 69692
          mmTop = 1323
          mmWidth = 14182
          BandType = 5
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Notepad: - <Fty> '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1323
          mmTop = 45773
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
        end
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
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 19844
          mmLeft = 1323
          mmTop = 50800
          mmWidth = 263790
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label301'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Notepad: - <Head office> '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1323
          mmTop = 72231
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppMemo2: TppMemo
          UserName = 'Memo2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 19844
          mmLeft = 1323
          mmTop = 77258
          mmWidth = 263790
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object sb011: TppDBCalc
          UserName = 'sb011'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 210249
          mmTop = 1323
          mmWidth = 11472
          BandType = 5
          GroupNo = 0
        end
        object sb008: TppDBCalc
          UserName = 'sb008'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 178309
          mmTop = 1323
          mmWidth = 10075
          BandType = 5
          GroupNo = 0
        end
        object sb009: TppDBCalc
          UserName = 'sb009'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 186447
          mmTop = 1323
          mmWidth = 12785
          BandType = 5
          GroupNo = 0
        end
        object sb010: TppLabel
          UserName = 'sb010'
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
          mmLeft = 204523
          mmTop = 1323
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
        end
        object sb012: TppLabel
          UserName = 'sb012'
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
          mmLeft = 226748
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object sb013: TppLabel
          UserName = 'sb013'
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
          mmLeft = 237332
          mmTop = 1323
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
        end
        object ppShape14: TppShape
          UserName = 'Shape14'
          mmHeight = 24342
          mmLeft = 794
          mmTop = 18521
          mmWidth = 264848
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
            'k;}{\f2\fnil\fcharset136 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slm' +
            'ult1\lang1028\f0\fs12 TIP\par'#13#10'\pard\f1\'#39'd6     \ul\f2 Grade \ul' +
            'none      \ul Comment\ulnone           \ul Diff Qty(PDN Vs Ex-ft' +
            'y) by %\ulnone       \ul Explanation\ulnone     \f1\par'#13#10'\f2    ' +
            '     \f1  \f2 '#39'A'#39'          Excellent               >=99%  or <=1' +
            '01%                           N/A\par'#13#10'         '#39'B'#39'          Com' +
            'mendable        >=98%  or <=102%                            N/A\' +
            'par'#13#10'         '#39'C'#39'          Very Good             >=97%  or <=103' +
            '%                           N/A\par'#13#10'         '#39'D'#39'          Good ' +
            '                    >=96%  or <=104%                           S' +
            'uggest to add the explanation\par'#13#10'         '#39'F'#39'          Fail   ' +
            '                     >=95%  or <=105%                           ' +
            'Must provide\par'#13#10'         '#39'U'#39'          Un-classified         < ' +
            '95%  or >105%                              Must provide\f0\par'#13#10 +
            '}'#13#10#0
          mmHeight = 23019
          mmLeft = 1323
          mmTop = 19315
          mmWidth = 263261
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeftMargin = 794
        end
        object grade001: TppLabel
          UserName = 'grade001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 1058
          mmTop = 12965
          mmWidth = 14817
          BandType = 5
          GroupNo = 0
        end
        object ttl001: TppLabel
          UserName = 'ttl001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand total: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 1058
          mmTop = 6350
          mmWidth = 11642
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'J_NO'
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
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'J2_JOB'
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
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'RWO'
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
