object frmpdnrpt12: Tfrmpdnrpt12
  Left = 193
  Top = 161
  Width = 302
  Height = 95
  Caption = 'frmpdnrpt12'
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
    CommandText = 'select * from tbl_pdn_voyage_d'
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
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
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
    CommandText = 'select * from tbl_pdn_voyage_d'
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
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 256
    Top = 65528
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline3'
    Left = 64
    Top = 24
  end
  object DataSource3: TDataSource
    DataSet = Query5
    Left = 32
    Top = 24
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_pack'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'CUSTPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CNAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'BOX'
        DataType = ftInteger
      end
      item
        Name = 'WGHT'
        DataType = ftFloat
      end
      item
        Name = 'CBM'
        DataType = ftFloat
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'EXTM'
        DataType = ftTime
      end
      item
        Name = 'TRUCK'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INDT'
        DataType = ftDate
      end
      item
        Name = 'INTM'
        DataType = ftTime
      end
      item
        Name = 'ONDT'
        DataType = ftDate
      end
      item
        Name = 'SHPM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VESS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'LPORT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DEST'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VOYN'
        DataType = ftString
        Size = 20
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
        Name = 'ACOL'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'POQTY'
        DataType = ftInteger
      end
      item
        Name = 'AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'DP'
        DataType = ftFloat
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SHPQTY'
        DataType = ftInteger
      end
      item
        Name = 'SPQTY'
        DataType = ftInteger
      end
      item
        Name = 'WRITEOFF'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Top = 24
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
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    Left = 160
    Top = 65528
    Version = '6.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object title001: TppLabel
        UserName = 'title001'
        AutoSize = False
        Caption = 'PDN Manifest acted performance by RWO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 3440
        mmTop = 5027
        mmWidth = 177007
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label12'
        Caption = 'PDN '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 31485
        mmTop = 14552
        mmWidth = 6085
        BandType = 0
      end
      object pdn001: TppLabel
        UserName = 'pdn001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 39952
        mmTop = 14552
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Ex-fty Date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 71173
        mmTop = 14552
        mmWidth = 15875
        BandType = 0
      end
      object exfty001: TppLabel
        UserName = 'exfty001'
        AutoSize = False
        Caption = '2007/07/27'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 99219
        mmTop = 14552
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label13'
        Caption = 'Printed On '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 204788
        mmTop = 14552
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        DisplayFormat = 'yyyy/MM/dd hh:nn:ss'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 220134
        mmTop = 14552
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Page '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 250825
        mmTop = 14552
        mmWidth = 7144
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 259292
        mmTop = 14552
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Week '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 14552
        mmWidth = 8202
        BandType = 0
      end
      object week01: TppLabel
        UserName = 'week01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 160338
        mmTop = 14552
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
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
      object from001: TppLabel
        UserName = 'from001'
        Caption = 'From  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89429
        mmTop = 14552
        mmWidth = 8202
        BandType = 0
      end
      object exfty002: TppLabel
        UserName = 'exfty002'
        AutoSize = False
        Caption = '2007/07/27'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 124884
        mmTop = 14552
        mmWidth = 16140
        BandType = 0
      end
      object to001: TppLabel
        UserName = 'to001'
        Caption = 'To  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 14552
        mmWidth = 5027
        BandType = 0
      end
      object title002: TppLabel
        UserName = 'title002'
        AutoSize = False
        Caption = '- with SKU '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 181505
        mmTop = 5821
        mmWidth = 41010
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'Version '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 179388
        mmTop = 14552
        mmWidth = 10414
        BandType = 0
      end
      object ver001: TppLabel
        UserName = 'ver001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 191559
        mmTop = 14552
        mmWidth = 8594
        BandType = 0
      end
      object grade002: TppLabel
        UserName = 'grade002'
        Caption = 'grade002'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 226748
        mmTop = 5027
        mmWidth = 14817
        BandType = 0
      end
      object acted001: TppLabel
        UserName = 'acted001'
        Caption = 'Acted On '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 226484
        mmTop = 9790
        mmWidth = 15610
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
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
        mmLeft = 1323
        mmTop = 794
        mmWidth = 10118
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
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
        mmLeft = 13494
        mmTop = 794
        mmWidth = 9229
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'RWO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 24606
        mmTop = 794
        mmWidth = 2963
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
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
        mmLeft = 56505
        mmTop = 794
        mmWidth = 3556
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
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
        mmLeft = 66559
        mmTop = 794
        mmWidth = 3556
        BandType = 4
      end
      object sdd01: TppDBText
        UserName = 'sdd01'
        AutoSize = True
        DataField = 'DIFF'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 252551
        mmTop = 794
        mmWidth = 1185
        BandType = 4
      end
      object sd103: TppLabel
        UserName = 'sd103'
        Caption = 'd1003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 97102
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd104: TppLabel
        UserName = 'sd104'
        Caption = 'd1004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 105304
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd106: TppLabel
        UserName = 'sd106'
        Caption = 'd1006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 113771
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd108: TppLabel
        UserName = 'sd108'
        Caption = 'd1008'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 129117
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd203: TppLabel
        UserName = 'sd203'
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 164571
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd204: TppLabel
        UserName = 'sd204'
        Caption = 'q0201'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 172773
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd206: TppLabel
        UserName = 'sd206'
        Caption = 'q0301'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 181240
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd208: TppLabel
        UserName = 'sd208'
        Caption = 'q0401'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 196850
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd101: TppLabel
        UserName = 'sd101'
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 81492
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd201: TppLabel
        UserName = 'sd201'
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 148696
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sdp01: TppLabel
        UserName = 'sdp01'
        Caption = 'sdp01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 256911
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd107: TppLabel
        UserName = 'sd107'
        Caption = 'd1004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 121444
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd207: TppLabel
        UserName = 'sd207'
        Caption = 'q0201'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 188384
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object cstyle001: TppDBText
        UserName = 'cstyle001'
        AutoSize = True
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 31221
        mmTop = 794
        mmWidth = 8509
        BandType = 4
      end
      object sd102: TppLabel
        UserName = 'sd102'
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 73819
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd202: TppLabel
        UserName = 'sd202'
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 141552
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object acol001: TppLabel
        UserName = 'acol001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 44186
        mmTop = 794
        mmWidth = 7493
        BandType = 4
      end
      object diff001: TppLabel
        UserName = 'diff001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2667
        mmLeft = 248190
        mmTop = 794
        mmWidth = 5546
        BandType = 4
      end
      object sd105: TppLabel
        UserName = 'sd105'
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 89694
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd205: TppLabel
        UserName = 'sd205'
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 157427
        mmTop = 794
        mmWidth = 5556
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
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 8467
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
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '6.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppDetailBand3: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 20108
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              AutoSize = True
              DataField = 'J_NO'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ResetGroup = ppGroup3
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
              AutoSize = True
              DataField = 'J2_JOB'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ResetGroup = ppGroup3
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 13494
              mmTop = 529
              mmWidth = 9229
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              AutoSize = True
              DataField = 'RWO'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ResetGroup = ppGroup3
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 24606
              mmTop = 529
              mmWidth = 2963
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              AutoSize = True
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
              mmLeft = 57415
              mmTop = 529
              mmWidth = 3556
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              AutoSize = True
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
              mmLeft = 66495
              mmTop = 529
              mmWidth = 3556
              BandType = 4
            end
            object dd001: TppDBText
              UserName = 'dd001'
              AutoSize = True
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
              mmLeft = 252529
              mmTop = 529
              mmWidth = 1185
              BandType = 4
            end
            object d1003: TppLabel
              UserName = 'd1003'
              Caption = 'd1003'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2498
              mmLeft = 87313
              mmTop = 529
              mmWidth = 5927
              BandType = 4
            end
            object d1004: TppLabel
              UserName = 'd1004'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 95515
              mmTop = 529
              mmWidth = 5821
              BandType = 4
            end
            object d1006: TppLabel
              UserName = 'd1006'
              Caption = 'd1006'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 103981
              mmTop = 529
              mmWidth = 5821
              BandType = 4
            end
            object d1008: TppLabel
              UserName = 'd1008'
              Caption = 'd1008'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 119856
              mmTop = 529
              mmWidth = 5821
              BandType = 4
            end
            object d2003: TppLabel
              UserName = 'd2003'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 146844
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2004: TppLabel
              UserName = 'd2004'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 154782
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2006: TppLabel
              UserName = 'd2006'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 163248
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2008: TppLabel
              UserName = 'd2008'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 178859
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3003: TppLabel
              UserName = 'd3003'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 205582
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3004: TppLabel
              UserName = 'd3004'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 213784
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3006: TppLabel
              UserName = 'd3006'
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
              AutoSize = True
              DataField = 'PSIZ'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ResetGroup = ppGroup3
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 49742
              mmTop = 529
              mmWidth = 3895
              BandType = 4
            end
            object d1001: TppLabel
              UserName = 'd1001'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 72496
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d1002: TppLabel
              UserName = 'd1002'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 80433
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2002: TppLabel
              UserName = 'd2002'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 139436
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2001: TppLabel
              UserName = 'd2001'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 131498
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3001: TppLabel
              UserName = 'd3001'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 190500
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3002: TppLabel
              UserName = 'd3002'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 198438
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object dp001: TppLabel
              UserName = 'dp001'
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
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 112184
              mmTop = 529
              mmWidth = 5821
              BandType = 4
            end
            object d2007: TppLabel
              UserName = 'd2007'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 171186
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d3007: TppLabel
              UserName = 'd3007'
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
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              AutoSize = True
              DataField = 'CSTYLE'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ResetGroup = ppGroup3
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 31750
              mmTop = 529
              mmWidth = 8509
              BandType = 4
            end
            object d1013: TppLabel
              UserName = 'd1013'
              Caption = 'd1003'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 87842
              mmTop = 3704
              mmWidth = 5821
              BandType = 4
            end
            object d1014: TppLabel
              UserName = 'd1014'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 96044
              mmTop = 3704
              mmWidth = 5821
              BandType = 4
            end
            object d1016: TppLabel
              UserName = 'd1016'
              Caption = 'd1006'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 104511
              mmTop = 3704
              mmWidth = 5821
              BandType = 4
            end
            object d1018: TppLabel
              UserName = 'd1018'
              Caption = 'd1008'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 120386
              mmTop = 3704
              mmWidth = 5821
              BandType = 4
            end
            object d2013: TppLabel
              UserName = 'd2013'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 147109
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d2014: TppLabel
              UserName = 'd2014'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 155311
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d2016: TppLabel
              UserName = 'd2016'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 163777
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d2018: TppLabel
              UserName = 'd2018'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 179388
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d3013: TppLabel
              UserName = 'd3013'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 206111
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d3014: TppLabel
              UserName = 'd3014'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 214313
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d3016: TppLabel
              UserName = 'd3016'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 222780
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d3018: TppLabel
              UserName = 'd3018'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 238390
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d1011: TppLabel
              UserName = 'd1011'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 73025
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d1012: TppLabel
              UserName = 'd1012'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 80963
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d2012: TppLabel
              UserName = 'd2012'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 139965
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d2011: TppLabel
              UserName = 'd2011'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 132027
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d3011: TppLabel
              UserName = 'd3011'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 191030
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d3012: TppLabel
              UserName = 'd3012'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 198967
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d1017: TppLabel
              UserName = 'd1017'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 112448
              mmTop = 3704
              mmWidth = 5821
              BandType = 4
            end
            object d2017: TppLabel
              UserName = 'd2017'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 171980
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d3017: TppLabel
              UserName = 'd3017'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 230717
              mmTop = 3704
              mmWidth = 5556
              BandType = 4
            end
            object d1023: TppLabel
              UserName = 'd1023'
              Caption = 'd1003'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 88371
              mmTop = 6879
              mmWidth = 5821
              BandType = 4
            end
            object d1024: TppLabel
              UserName = 'd1024'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 96838
              mmTop = 6879
              mmWidth = 5821
              BandType = 4
            end
            object d1026: TppLabel
              UserName = 'd1026'
              Caption = 'd1006'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 105040
              mmTop = 6879
              mmWidth = 5821
              BandType = 4
            end
            object d1028: TppLabel
              UserName = 'd1028'
              Caption = 'd1008'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 120650
              mmTop = 6879
              mmWidth = 5821
              BandType = 4
            end
            object d2023: TppLabel
              UserName = 'd2023'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 147638
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d2024: TppLabel
              UserName = 'd2024'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 155840
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d2026: TppLabel
              UserName = 'd2026'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 164571
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d2028: TppLabel
              UserName = 'd2028'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 179917
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d3023: TppLabel
              UserName = 'd3023'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 206640
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d3024: TppLabel
              UserName = 'd3024'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 215107
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d3026: TppLabel
              UserName = 'd3026'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 223309
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d3028: TppLabel
              UserName = 'd3028'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 238919
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d1021: TppLabel
              UserName = 'd1021'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 73554
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d1022: TppLabel
              UserName = 'd1022'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 81492
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d2022: TppLabel
              UserName = 'd2022'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 140494
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d2021: TppLabel
              UserName = 'd2021'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 132557
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d3021: TppLabel
              UserName = 'd3021'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 191823
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d3022: TppLabel
              UserName = 'd3022'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 199496
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d1027: TppLabel
              UserName = 'd1027'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 112977
              mmTop = 6879
              mmWidth = 5821
              BandType = 4
            end
            object d2027: TppLabel
              UserName = 'd2027'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 172244
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d3027: TppLabel
              UserName = 'd3027'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 231246
              mmTop = 6879
              mmWidth = 5556
              BandType = 4
            end
            object d1033: TppLabel
              UserName = 'd1033'
              Caption = 'd1003'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 88900
              mmTop = 10054
              mmWidth = 5821
              BandType = 4
            end
            object d1034: TppLabel
              UserName = 'd1034'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 97367
              mmTop = 10054
              mmWidth = 5821
              BandType = 4
            end
            object d1036: TppLabel
              UserName = 'd1036'
              Caption = 'd1006'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 105569
              mmTop = 10054
              mmWidth = 5821
              BandType = 4
            end
            object d1038: TppLabel
              UserName = 'd1038'
              Caption = 'd1008'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 121179
              mmTop = 10054
              mmWidth = 5821
              BandType = 4
            end
            object d2033: TppLabel
              UserName = 'd2033'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 148167
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d2034: TppLabel
              UserName = 'd2034'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 156369
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d2036: TppLabel
              UserName = 'd2036'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 165100
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d2038: TppLabel
              UserName = 'd2038'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 180446
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d3033: TppLabel
              UserName = 'd3033'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 207169
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d3034: TppLabel
              UserName = 'd3034'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 215371
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d3036: TppLabel
              UserName = 'd3036'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 223838
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d3038: TppLabel
              UserName = 'd3038'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 239448
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d1031: TppLabel
              UserName = 'd1031'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 74083
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d1032: TppLabel
              UserName = 'd1032'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 82021
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d2032: TppLabel
              UserName = 'd2032'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 141023
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d2031: TppLabel
              UserName = 'd2031'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 133086
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d3031: TppLabel
              UserName = 'd3031'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 192088
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d3032: TppLabel
              UserName = 'd3032'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 200025
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d1037: TppLabel
              UserName = 'd1037'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 113506
              mmTop = 10054
              mmWidth = 5821
              BandType = 4
            end
            object d2037: TppLabel
              UserName = 'd2037'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 172773
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d3037: TppLabel
              UserName = 'd3037'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 231775
              mmTop = 10054
              mmWidth = 5556
              BandType = 4
            end
            object d1043: TppLabel
              UserName = 'd1043'
              Caption = 'd1003'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 89429
              mmTop = 13229
              mmWidth = 5821
              BandType = 4
            end
            object d1044: TppLabel
              UserName = 'd1044'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 97631
              mmTop = 13229
              mmWidth = 5821
              BandType = 4
            end
            object d1046: TppLabel
              UserName = 'd1046'
              Caption = 'd1006'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 106098
              mmTop = 13229
              mmWidth = 5821
              BandType = 4
            end
            object d1048: TppLabel
              UserName = 'd1048'
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
              mmTop = 13229
              mmWidth = 5821
              BandType = 4
            end
            object d2043: TppLabel
              UserName = 'd2043'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 148696
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d2044: TppLabel
              UserName = 'd2044'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 156898
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d2046: TppLabel
              UserName = 'd2046'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 165365
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d2048: TppLabel
              UserName = 'd2048'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 181240
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d3043: TppLabel
              UserName = 'd3043'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 207698
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d3044: TppLabel
              UserName = 'd3044'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 215900
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d3046: TppLabel
              UserName = 'd3046'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 224367
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d3048: TppLabel
              UserName = 'd3048'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 239978
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d1041: TppLabel
              UserName = 'd1041'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 74613
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d1042: TppLabel
              UserName = 'd1042'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 82550
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d2042: TppLabel
              UserName = 'd2042'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 141552
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d2041: TppLabel
              UserName = 'd2041'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 133615
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d3041: TppLabel
              UserName = 'd3041'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 192617
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d3042: TppLabel
              UserName = 'd3042'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 200555
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d1047: TppLabel
              UserName = 'd1047'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 114036
              mmTop = 13229
              mmWidth = 5821
              BandType = 4
            end
            object d2047: TppLabel
              UserName = 'd2047'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 173302
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d3047: TppLabel
              UserName = 'd3047'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 232305
              mmTop = 13229
              mmWidth = 5556
              BandType = 4
            end
            object d1053: TppLabel
              UserName = 'd1053'
              Caption = 'd1003'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 89959
              mmTop = 16404
              mmWidth = 5821
              BandType = 4
            end
            object d1054: TppLabel
              UserName = 'd1054'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 98161
              mmTop = 16404
              mmWidth = 5821
              BandType = 4
            end
            object d1056: TppLabel
              UserName = 'd1056'
              Caption = 'd1006'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 106627
              mmTop = 16404
              mmWidth = 5821
              BandType = 4
            end
            object d1058: TppLabel
              UserName = 'd1058'
              Caption = 'd1008'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 122238
              mmTop = 16404
              mmWidth = 5821
              BandType = 4
            end
            object d2053: TppLabel
              UserName = 'd2053'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 149490
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d2054: TppLabel
              UserName = 'd2054'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 157427
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d2056: TppLabel
              UserName = 'd2056'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 165894
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d2058: TppLabel
              UserName = 'd2058'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 181505
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d3053: TppLabel
              UserName = 'd3053'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 208227
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d3054: TppLabel
              UserName = 'd3054'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 216430
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d3056: TppLabel
              UserName = 'd3056'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 225161
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d3058: TppLabel
              UserName = 'd3058'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 240507
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d1051: TppLabel
              UserName = 'd1051'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 75142
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d1052: TppLabel
              UserName = 'd1052'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 83079
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d2052: TppLabel
              UserName = 'd2052'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 142082
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d2051: TppLabel
              UserName = 'd2051'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 134144
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d3051: TppLabel
              UserName = 'd3051'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 193146
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d3052: TppLabel
              UserName = 'd3052'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 201084
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d1057: TppLabel
              UserName = 'd1057'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 114565
              mmTop = 16404
              mmWidth = 5821
              BandType = 4
            end
            object d2057: TppLabel
              UserName = 'd2057'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 174096
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object d3057: TppLabel
              UserName = 'd3057'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 232834
              mmTop = 16404
              mmWidth = 5556
              BandType = 4
            end
            object acol002: TppLabel
              UserName = 'acol002'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 43127
              mmTop = 529
              mmWidth = 7408
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 8467
            mmPrintPosition = 0
            object ppShape15: TppShape
              UserName = 'Shape15'
              mmHeight = 5292
              mmLeft = 794
              mmTop = 265
              mmWidth = 267494
              BandType = 7
            end
            object ppLabel68: TppLabel
              UserName = 'Label68'
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
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              AutoSize = True
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
              mmLeft = 50800
              mmTop = 1588
              mmWidth = 10075
              BandType = 7
            end
            object tbq001: TppDBCalc
              UserName = 'tbq001'
              AutoSize = True
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
              mmLeft = 58738
              mmTop = 1588
              mmWidth = 11472
              BandType = 7
            end
            object tbd001: TppDBCalc
              UserName = 'tbd001'
              AutoSize = True
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
              mmLeft = 242888
              mmTop = 1588
              mmWidth = 10456
              BandType = 7
            end
            object tbp001: TppLabel
              UserName = 'tbp001'
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
            object tb1001: TppLabel
              UserName = 'tb1001'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 72496
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb1002: TppLabel
              UserName = 'tb1002'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 80433
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb1003: TppLabel
              UserName = 'tb1003'
              Caption = 'd1003'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 87313
              mmTop = 1588
              mmWidth = 5821
              BandType = 7
            end
            object tb1004: TppLabel
              UserName = 'tb1004'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 95515
              mmTop = 1588
              mmWidth = 5821
              BandType = 7
            end
            object tb1006: TppLabel
              UserName = 'tb1006'
              Caption = 'd1006'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 103981
              mmTop = 1588
              mmWidth = 5821
              BandType = 7
            end
            object tb1007: TppLabel
              UserName = 'tb1007'
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 112184
              mmTop = 1588
              mmWidth = 5821
              BandType = 7
            end
            object tb1008: TppLabel
              UserName = 'tb1008'
              Caption = 'd1008'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 119856
              mmTop = 1588
              mmWidth = 5821
              BandType = 7
            end
            object tb2001: TppLabel
              UserName = 'tb2001'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 131498
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb2002: TppLabel
              UserName = 'tb2002'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 139436
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb2003: TppLabel
              UserName = 'tb2003'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 146844
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb2004: TppLabel
              UserName = 'tb2004'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 154782
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb2006: TppLabel
              UserName = 'tb2006'
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 163248
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb2007: TppLabel
              UserName = 'tb2007'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 170921
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb2008: TppLabel
              UserName = 'tb2008'
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 178859
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb3001: TppLabel
              UserName = 'tb3001'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 190500
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb3002: TppLabel
              UserName = 'tb3002'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 198438
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb3003: TppLabel
              UserName = 'tb3003'
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 205582
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb3004: TppLabel
              UserName = 'tb3004'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 213519
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb3006: TppLabel
              UserName = 'tb3006'
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
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb3007: TppLabel
              UserName = 'tb3007'
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 229923
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object tb3008: TppLabel
              UserName = 'tb3008'
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
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
          end
          object ppGroup13: TppGroup
            BreakName = 'SEQ1'
            DataPipeline = ppDBPipeline1
            NewPage = True
            ReprintOnSubsequentPage = False
            UserName = 'Group13'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand13: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 4763
              mmPrintPosition = 0
              object ppLabel63: TppLabel
                UserName = 'Label63'
                Caption = 'Manifest '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 2646
                mmTop = 1323
                mmWidth = 8636
                BandType = 3
                GroupNo = 0
              end
              object bcn001: TppLabel
                UserName = 'bcn001'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 12700
                mmTop = 1323
                mmWidth = 6879
                BandType = 3
                GroupNo = 0
              end
              object ppLabel64: TppLabel
                UserName = 'Label64'
                Caption = 'Ship mode '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 33602
                mmTop = 1323
                mmWidth = 10583
                BandType = 3
                GroupNo = 0
              end
              object shpm001: TppLabel
                UserName = 'shpm001'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 45773
                mmTop = 1323
                mmWidth = 8731
                BandType = 3
                GroupNo = 0
              end
              object ppLabel65: TppLabel
                UserName = 'Label65'
                Caption = 'Ex-fty Date '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 73025
                mmTop = 1323
                mmWidth = 11049
                BandType = 3
                GroupNo = 0
              end
              object exfty003: TppLabel
                UserName = 'exfty003'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 85461
                mmTop = 1323
                mmWidth = 7938
                BandType = 3
                GroupNo = 0
              end
              object ppLabel69: TppLabel
                UserName = 'Label69'
                Caption = 'Time '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 102659
                mmTop = 1323
                mmWidth = 5292
                BandType = 3
                GroupNo = 0
              end
              object extm001: TppLabel
                UserName = 'extm001'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 110331
                mmTop = 1323
                mmWidth = 8043
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand13: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup10: TppGroup
            BreakName = 'J_NO'
            DataPipeline = ppDBPipeline1
            ReprintOnSubsequentPage = False
            UserName = 'Group10'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand10: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand10: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup11: TppGroup
            BreakName = 'J2_JOB'
            DataPipeline = ppDBPipeline1
            ReprintOnSubsequentPage = False
            UserName = 'Group11'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand11: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand11: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'RWO'
            DataPipeline = ppDBPipeline1
            ReprintOnSubsequentPage = False
            UserName = 'Group4'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand4: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'ACOL'
            DataPipeline = ppDBPipeline1
            ReprintOnSubsequentPage = False
            UserName = 'Group5'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand5: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 11642
              mmPrintPosition = 0
              object ppShape1: TppShape
                UserName = 'Shape1'
                mmHeight = 11642
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 3
                GroupNo = 3
              end
              object ppLabel2: TppLabel
                UserName = 'Label1'
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
                GroupNo = 3
              end
              object ppLabel3: TppLabel
                UserName = 'Label2'
                Caption = 'WO #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 13758
                mmTop = 794
                mmWidth = 6085
                BandType = 3
                GroupNo = 3
              end
              object ppLabel4: TppLabel
                UserName = 'Label4'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 24606
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 3
              end
              object ppLabel5: TppLabel
                UserName = 'Label5'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 3
              end
              object ppLabel6: TppLabel
                UserName = 'Label6'
                Caption = 'Clr '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 4498
                mmWidth = 3440
                BandType = 3
                GroupNo = 3
              end
              object ppLabel7: TppLabel
                UserName = 'Label7'
                Caption = 'Code '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 7938
                mmWidth = 5292
                BandType = 3
                GroupNo = 3
              end
              object ppLabel8: TppLabel
                UserName = 'Label8'
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 1058
                mmWidth = 5027
                BandType = 3
                GroupNo = 3
              end
              object ppLine1: TppLine
                UserName = 'Line1'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 11642
                mmLeft = 71173
                mmTop = 0
                mmWidth = 1852
                BandType = 3
                GroupNo = 3
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 11642
                mmLeft = 245005
                mmTop = 0
                mmWidth = 2117
                BandType = 3
                GroupNo = 3
              end
              object ppLabel12: TppLabel
                UserName = 'Label102'
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
                GroupNo = 3
              end
              object s3003: TppLabel
                UserName = 's3003'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s3004: TppLabel
                UserName = 's3004'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s3006: TppLabel
                UserName = 's3006'
                ShiftWithParent = True
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
                GroupNo = 3
              end
              object s3008: TppLabel
                UserName = 's3008'
                ShiftWithParent = True
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
                GroupNo = 3
              end
              object rwo003: TppLabel
                UserName = 'rwo003'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 198967
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 3
              end
              object ppLabel14: TppLabel
                UserName = 'Label14'
                Caption = 'Qty  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 4498
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel15: TppLabel
                UserName = 'Label15'
                Caption = 'Ttl  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 3
              end
              object ppLabel16: TppLabel
                UserName = 'Label16'
                Caption = 'Size '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 49742
                mmTop = 1058
                mmWidth = 4498
                BandType = 3
                GroupNo = 3
              end
              object ppLabel9: TppLabel
                UserName = 'Label9'
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
                GroupNo = 3
              end
              object ppLabel10: TppLabel
                UserName = 'Label10'
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel11: TppLabel
                UserName = 'Label17'
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
                GroupNo = 3
              end
              object s3108: TppLabel
                UserName = 's3108'
                ShiftWithParent = True
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
                GroupNo = 3
              end
              object s3001: TppLabel
                UserName = 's3001'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 3
              end
              object s3002: TppLabel
                UserName = 's3002'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 4498
                mmWidth = 5027
                BandType = 3
                GroupNo = 3
              end
              object s3102: TppLabel
                UserName = 's3102'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel39: TppLabel
                UserName = 'Label39'
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
                GroupNo = 3
              end
              object s3101: TppLabel
                UserName = 's3101'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s3007: TppLabel
                UserName = 's3007'
                ShiftWithParent = True
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
                GroupNo = 3
              end
              object s3107: TppLabel
                UserName = 's3107'
                ShiftWithParent = True
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
                GroupNo = 3
              end
              object s3103: TppLabel
                UserName = 's3103'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s3104: TppLabel
                UserName = 's3104'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s3106: TppLabel
                UserName = 's3106'
                ShiftWithParent = True
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
                GroupNo = 3
              end
              object rwo001: TppLabel
                UserName = 'rwo001'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 80963
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 3
              end
              object rwo002: TppLabel
                UserName = 'rwo002'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 139965
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 3
              end
              object s1001: TppLabel
                UserName = 's1001'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 3
              end
              object s1002: TppLabel
                UserName = 's1002'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 4498
                mmWidth = 5027
                BandType = 3
                GroupNo = 3
              end
              object s1003: TppLabel
                UserName = 's1003'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s1004: TppLabel
                UserName = 's1004'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s1006: TppLabel
                UserName = 's1006'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s1007: TppLabel
                UserName = 's1007'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 4498
                mmWidth = 4763
                BandType = 3
                GroupNo = 3
              end
              object s1008: TppLabel
                UserName = 's1008'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 4498
                mmWidth = 6085
                BandType = 3
                GroupNo = 3
              end
              object s2001: TppLabel
                UserName = 's2001'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 3
              end
              object s2002: TppLabel
                UserName = 's2002'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 4498
                mmWidth = 5027
                BandType = 3
                GroupNo = 3
              end
              object s2003: TppLabel
                UserName = 's2003'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s2004: TppLabel
                UserName = 's2004'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s2006: TppLabel
                UserName = 's2006'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s2007: TppLabel
                UserName = 's2007'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 4498
                mmWidth = 4763
                BandType = 3
                GroupNo = 3
              end
              object s2008: TppLabel
                UserName = 's2008'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 4498
                mmWidth = 6085
                BandType = 3
                GroupNo = 3
              end
              object s1101: TppLabel
                UserName = 's1101'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1102: TppLabel
                UserName = 's1102'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1103: TppLabel
                UserName = 's1103'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1104: TppLabel
                UserName = 's1104'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1106: TppLabel
                UserName = 's1106'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1107: TppLabel
                UserName = 's1107'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1108: TppLabel
                UserName = 's1108'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2101: TppLabel
                UserName = 's2101'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2102: TppLabel
                UserName = 's2102'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2103: TppLabel
                UserName = 's2103'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2104: TppLabel
                UserName = 's2104'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2106: TppLabel
                UserName = 's2106'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2107: TppLabel
                UserName = 's2107'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2108: TppLabel
                UserName = 's2108'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel28: TppLabel
                UserName = 'Label28'
                Caption = 'Cust Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 31750
                mmTop = 1058
                mmWidth = 10880
                BandType = 3
                GroupNo = 3
              end
              object ppLabel132: TppLabel
                UserName = 'Label132'
                Caption = 'Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 43656
                mmTop = 1058
                mmWidth = 5821
                BandType = 3
                GroupNo = 4
              end
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 7938
              mmPrintPosition = 0
              object ppShape2: TppShape
                UserName = 'Shape2'
                mmHeight = 5292
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 5
                GroupNo = 3
              end
              object ppLabel13: TppLabel
                UserName = 'Label11'
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
                UserName = 'DBCalc2'
                AutoSize = True
                DataField = 'QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 50800
                mmTop = 1323
                mmWidth = 10075
                BandType = 5
                GroupNo = 3
              end
              object bq001: TppDBCalc
                UserName = 'bq001'
                AutoSize = True
                DataField = 'SQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 58738
                mmTop = 1323
                mmWidth = 11472
                BandType = 5
                GroupNo = 3
              end
              object bd001: TppDBCalc
                UserName = 'bd001'
                AutoSize = True
                DataField = 'DIFF'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 242888
                mmTop = 1323
                mmWidth = 10456
                BandType = 5
                GroupNo = 3
              end
              object b1003: TppDBCalc
                UserName = 'b1003'
                AutoSize = True
                DataField = 'Q1T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 77788
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b1004: TppDBCalc
                UserName = 'b1004'
                AutoSize = True
                DataField = 'Q1T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 85990
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b1006: TppDBCalc
                UserName = 'b1006'
                AutoSize = True
                DataField = 'Q1T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94456
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b1008: TppDBCalc
                UserName = 'b1008'
                AutoSize = True
                DataField = 'Q1T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110331
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b2003: TppDBCalc
                UserName = 'b2003'
                AutoSize = True
                DataField = 'Q2T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137054
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b2004: TppDBCalc
                UserName = 'b2004'
                AutoSize = True
                DataField = 'Q2T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 144992
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b2006: TppDBCalc
                UserName = 'b2006'
                AutoSize = True
                DataField = 'Q2T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153459
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b2008: TppDBCalc
                UserName = 'b2008'
                AutoSize = True
                DataField = 'Q2T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169069
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b3003: TppDBCalc
                UserName = 'b3003'
                AutoSize = True
                DataField = 'Q3T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 195792
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b3004: TppDBCalc
                UserName = 'b3004'
                AutoSize = True
                DataField = 'Q3T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 203994
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b3006: TppDBCalc
                UserName = 'b3006'
                AutoSize = True
                DataField = 'Q3T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212461
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b3008: TppDBCalc
                UserName = 'b3008'
                AutoSize = True
                DataField = 'Q3T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228071
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 3
              end
              object b1001: TppDBCalc
                UserName = 'b1001'
                AutoSize = True
                DataField = 'Q1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65088
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 3
              end
              object b1002: TppDBCalc
                UserName = 'b1002'
                AutoSize = True
                DataField = 'Q1PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 71702
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 3
              end
              object b2001: TppDBCalc
                UserName = 'b2001'
                AutoSize = True
                DataField = 'Q2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124090
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 3
              end
              object b2002: TppDBCalc
                UserName = 'b2002'
                AutoSize = True
                DataField = 'Q2PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 130704
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 3
              end
              object b3001: TppDBCalc
                UserName = 'b3001'
                AutoSize = True
                DataField = 'Q3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183092
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 3
              end
              object b3002: TppDBCalc
                UserName = 'b3002'
                AutoSize = True
                DataField = 'Q3PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 189707
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 3
              end
              object bp001: TppLabel
                UserName = 'bp001'
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
                AutoSize = True
                DataField = 'Q1AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102129
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 3
              end
              object b2007: TppDBCalc
                UserName = 'b2007'
                AutoSize = True
                DataField = 'Q2AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 160867
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 3
              end
              object b3007: TppDBCalc
                UserName = 'b3007'
                AutoSize = True
                DataField = 'Q3AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 219869
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 3
              end
            end
          end
          object ppGroup6: TppGroup
            BreakName = 'ACOL'
            DataPipeline = ppDBPipeline1
            ReprintOnSubsequentPage = False
            UserName = 'Group6'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand6: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 14552
              mmPrintPosition = 0
              object ppShape5: TppShape
                UserName = 'Shape5'
                mmHeight = 14552
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 3
                GroupNo = 4
              end
              object ppLabel34: TppLabel
                UserName = 'Label34'
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
              object ppLabel43: TppLabel
                UserName = 'Label43'
                Caption = 'WO #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 13758
                mmTop = 1058
                mmWidth = 6085
                BandType = 3
                GroupNo = 4
              end
              object ppLabel44: TppLabel
                UserName = 'Label44'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 24606
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 4
              end
              object ppLabel45: TppLabel
                UserName = 'Label45'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 4
              end
              object ppLabel46: TppLabel
                UserName = 'Label46'
                Caption = 'Clr '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 4498
                mmWidth = 3440
                BandType = 3
                GroupNo = 4
              end
              object ppLabel48: TppLabel
                UserName = 'Label48'
                Caption = 'Code '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 7938
                mmWidth = 5292
                BandType = 3
                GroupNo = 4
              end
              object ppLabel49: TppLabel
                UserName = 'Label49'
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 1058
                mmWidth = 5027
                BandType = 3
                GroupNo = 4
              end
              object ppLine5: TppLine
                UserName = 'Line5'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 14552
                mmLeft = 71173
                mmTop = 0
                mmWidth = 1852
                BandType = 3
                GroupNo = 4
              end
              object ppLine6: TppLine
                UserName = 'Line6'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 14552
                mmLeft = 245005
                mmTop = 0
                mmWidth = 2117
                BandType = 3
                GroupNo = 4
              end
              object ppLabel50: TppLabel
                UserName = 'Label50'
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
              object s3203: TppLabel
                UserName = 's3203'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 7938
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s3204: TppLabel
                UserName = 's3204'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 7938
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s3206: TppLabel
                UserName = 's3206'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 7938
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s3208: TppLabel
                UserName = 's3208'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 7938
                mmWidth = 6085
                BandType = 3
                GroupNo = 4
              end
              object rwo203: TppLabel
                UserName = 'rwo203'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 198967
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 4
              end
              object ppLabel56: TppLabel
                UserName = 'Label56'
                Caption = 'Qty  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 4498
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object ppLabel57: TppLabel
                UserName = 'Label57'
                Caption = 'Ttl  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 4
              end
              object ppLabel58: TppLabel
                UserName = 'Label58'
                Caption = 'Size '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 49742
                mmTop = 1058
                mmWidth = 4498
                BandType = 3
                GroupNo = 4
              end
              object ppLabel59: TppLabel
                UserName = 'Label59'
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
              object ppLabel60: TppLabel
                UserName = 'Label103'
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object ppLabel61: TppLabel
                UserName = 'Label61'
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
              object s3308: TppLabel
                UserName = 's3308'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s3201: TppLabel
                UserName = 's3201'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 7938
                mmWidth = 3704
                BandType = 3
                GroupNo = 4
              end
              object s3202: TppLabel
                UserName = 's3202'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 7938
                mmWidth = 5027
                BandType = 3
                GroupNo = 4
              end
              object s3302: TppLabel
                UserName = 's3302'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object ppLabel66: TppLabel
                UserName = 'Label66'
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
              object s3301: TppLabel
                UserName = 's3301'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s3207: TppLabel
                UserName = 's3207'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 7938
                mmWidth = 4763
                BandType = 3
                GroupNo = 4
              end
              object s3307: TppLabel
                UserName = 's3307'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s3303: TppLabel
                UserName = 's3303'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s3304: TppLabel
                UserName = 's3304'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s3306: TppLabel
                UserName = 's3306'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object rwo201: TppLabel
                UserName = 'rwo201'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 80963
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 4
              end
              object rwo202: TppLabel
                UserName = 'rwo202'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 139965
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 4
              end
              object s1201: TppLabel
                UserName = 's1201'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 7938
                mmWidth = 3704
                BandType = 3
                GroupNo = 4
              end
              object s1202: TppLabel
                UserName = 's1202'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 7938
                mmWidth = 5027
                BandType = 3
                GroupNo = 4
              end
              object s1203: TppLabel
                UserName = 's1203'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 7938
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s1204: TppLabel
                UserName = 's1204'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 7938
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s1206: TppLabel
                UserName = 's1206'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 7938
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s1207: TppLabel
                UserName = 's1207'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 7938
                mmWidth = 4763
                BandType = 3
                GroupNo = 4
              end
              object s1208: TppLabel
                UserName = 's1208'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 7938
                mmWidth = 6085
                BandType = 3
                GroupNo = 4
              end
              object s2201: TppLabel
                UserName = 's2201'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 7938
                mmWidth = 3704
                BandType = 3
                GroupNo = 4
              end
              object s2202: TppLabel
                UserName = 's2202'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 7938
                mmWidth = 5027
                BandType = 3
                GroupNo = 4
              end
              object s2203: TppLabel
                UserName = 's2203'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 7938
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s2204: TppLabel
                UserName = 's2204'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 7938
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s2206: TppLabel
                UserName = 's2206'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 7938
                mmWidth = 3175
                BandType = 3
                GroupNo = 4
              end
              object s2207: TppLabel
                UserName = 's2207'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 7938
                mmWidth = 4763
                BandType = 3
                GroupNo = 4
              end
              object s2208: TppLabel
                UserName = 's2208'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 7938
                mmWidth = 6085
                BandType = 3
                GroupNo = 4
              end
              object s1301: TppLabel
                UserName = 's1301'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1302: TppLabel
                UserName = 's1302'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1303: TppLabel
                UserName = 's1303'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1304: TppLabel
                UserName = 's1304'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1306: TppLabel
                UserName = 's1306'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1307: TppLabel
                UserName = 's1307'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s1308: TppLabel
                UserName = 's1308'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2301: TppLabel
                UserName = 's2301'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2302: TppLabel
                UserName = 's2302'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2303: TppLabel
                UserName = 's2303'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2304: TppLabel
                UserName = 's2304'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2306: TppLabel
                UserName = 's2306'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2307: TppLabel
                UserName = 's2307'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object s2308: TppLabel
                UserName = 's2308'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 11377
                mmWidth = 3969
                BandType = 3
                GroupNo = 4
              end
              object ppLabel104: TppLabel
                UserName = 'Label104'
                Caption = 'Cust Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 31750
                mmTop = 1058
                mmWidth = 10848
                BandType = 3
                GroupNo = 4
              end
              object rwo211: TppLabel
                UserName = 'rwo211'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 81492
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 4
              end
              object rwo212: TppLabel
                UserName = 'rwo212'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 140494
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 4
              end
              object rwo213: TppLabel
                UserName = 'rwo213'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 199496
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 4
              end
              object ppLabel130: TppLabel
                UserName = 'Label130'
                Caption = 'Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 43656
                mmTop = 1058
                mmWidth = 5821
                BandType = 3
                GroupNo = 5
              end
            end
            object ppGroupFooterBand6: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 15875
              mmPrintPosition = 0
              object ppShape10: TppShape
                UserName = 'Shape10'
                mmHeight = 12700
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 5
                GroupNo = 4
              end
              object ppLabel478: TppLabel
                UserName = 'Label478'
                Caption = 'Sub total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 1323
                mmTop = 8996
                mmWidth = 8731
                BandType = 5
                GroupNo = 4
              end
              object ppDBCalc3: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                DataField = 'QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 50800
                mmTop = 8996
                mmWidth = 10075
                BandType = 5
                GroupNo = 4
              end
              object bq002: TppDBCalc
                UserName = 'bq002'
                AutoSize = True
                DataField = 'SQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 58738
                mmTop = 8996
                mmWidth = 11472
                BandType = 5
                GroupNo = 4
              end
              object bd002: TppDBCalc
                UserName = 'bd002'
                AutoSize = True
                DataField = 'DIFF'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 242888
                mmTop = 8996
                mmWidth = 10456
                BandType = 5
                GroupNo = 4
              end
              object b1013: TppDBCalc
                UserName = 'b1013'
                AutoSize = True
                DataField = 'Q1T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 77788
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b1014: TppDBCalc
                UserName = 'b1014'
                AutoSize = True
                DataField = 'Q1T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 85990
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b1016: TppDBCalc
                UserName = 'b1016'
                AutoSize = True
                DataField = 'Q1T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94456
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b1018: TppDBCalc
                UserName = 'b1018'
                AutoSize = True
                DataField = 'Q1T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110331
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b2014: TppDBCalc
                UserName = 'b2014'
                AutoSize = True
                DataField = 'Q2T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 144992
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b2016: TppDBCalc
                UserName = 'b2016'
                AutoSize = True
                DataField = 'Q2T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153459
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b2018: TppDBCalc
                UserName = 'b2018'
                AutoSize = True
                DataField = 'Q2T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169069
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b3013: TppDBCalc
                UserName = 'b3013'
                AutoSize = True
                DataField = 'Q3T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 195792
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b3014: TppDBCalc
                UserName = 'b3014'
                AutoSize = True
                DataField = 'Q3T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 203994
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b3016: TppDBCalc
                UserName = 'b3016'
                AutoSize = True
                DataField = 'Q3T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212461
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b3018: TppDBCalc
                UserName = 'b3018'
                AutoSize = True
                DataField = 'Q3T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228071
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b1011: TppDBCalc
                UserName = 'b1011'
                AutoSize = True
                DataField = 'Q1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65088
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 4
              end
              object b1012: TppDBCalc
                UserName = 'b1012'
                AutoSize = True
                DataField = 'Q1PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 71702
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 4
              end
              object b2011: TppDBCalc
                UserName = 'b2011'
                AutoSize = True
                DataField = 'Q2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124090
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 4
              end
              object b2012: TppDBCalc
                UserName = 'b2012'
                AutoSize = True
                DataField = 'Q2PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 130704
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 4
              end
              object b3011: TppDBCalc
                UserName = 'b3011'
                AutoSize = True
                DataField = 'Q3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183092
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 4
              end
              object b3012: TppDBCalc
                UserName = 'b3012'
                AutoSize = True
                DataField = 'Q3PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 189707
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 4
              end
              object bp002: TppLabel
                UserName = 'bp002'
                Caption = 'bp002'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 256382
                mmTop = 8996
                mmWidth = 5821
                BandType = 5
                GroupNo = 4
              end
              object b1017: TppDBCalc
                UserName = 'b1017'
                AutoSize = True
                DataField = 'Q1AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102129
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 4
              end
              object b2017: TppDBCalc
                UserName = 'b2017'
                AutoSize = True
                DataField = 'Q2AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 160867
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 4
              end
              object b3017: TppDBCalc
                UserName = 'b3017'
                AutoSize = True
                DataField = 'Q3AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 219869
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 4
              end
              object b1023: TppDBCalc
                UserName = 'b1023'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 78317
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b1024: TppDBCalc
                UserName = 'b1024'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 86519
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b1026: TppDBCalc
                UserName = 'b1026'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94986
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b1028: TppDBCalc
                UserName = 'b1028'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110596
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b2023: TppDBCalc
                UserName = 'b2023'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137319
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b2024: TppDBCalc
                UserName = 'b2024'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 145521
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b2026: TppDBCalc
                UserName = 'b2026'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153988
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b2028: TppDBCalc
                UserName = 'b2028'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169598
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b3023: TppDBCalc
                UserName = 'b3023'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 196321
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b3024: TppDBCalc
                UserName = 'b3024'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 204523
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b3026: TppDBCalc
                UserName = 'b3026'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212990
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b3028: TppDBCalc
                UserName = 'b3028'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228600
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object b1021: TppDBCalc
                UserName = 'b1021'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 4
              end
              object b1022: TppDBCalc
                UserName = 'b1022'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 72231
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 4
              end
              object b2021: TppDBCalc
                UserName = 'b2021'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124619
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 4
              end
              object b2022: TppDBCalc
                UserName = 'b2022'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131234
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 4
              end
              object b3021: TppDBCalc
                UserName = 'b3021'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183621
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 4
              end
              object b3022: TppDBCalc
                UserName = 'b3022'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 190236
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 4
              end
              object b1027: TppDBCalc
                UserName = 'b1027'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102394
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 4
              end
              object b2027: TppDBCalc
                UserName = 'b2027'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 161661
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 4
              end
              object b3027: TppDBCalc
                UserName = 'b3027'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 220398
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 4
              end
              object b2013: TppDBCalc
                UserName = 'b2013'
                AutoSize = True
                DataField = 'Q2T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137054
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 4
              end
              object ppLine15: TppLine
                UserName = 'Line15'
                Weight = 0.75
                mmHeight = 1852
                mmLeft = 794
                mmTop = 7938
                mmWidth = 267494
                BandType = 5
                GroupNo = 4
              end
              object bs1101: TppLabel
                UserName = 'Label201'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 72496
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1102: TppLabel
                UserName = 'bs1102'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 80433
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1103: TppLabel
                UserName = 'bs1103'
                Caption = 'd1003'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 87313
                mmTop = 8996
                mmWidth = 5821
                BandType = 5
                GroupNo = 4
              end
              object bs1104: TppLabel
                UserName = 'bs1104'
                Caption = 'd1004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 95515
                mmTop = 8996
                mmWidth = 5821
                BandType = 5
                GroupNo = 4
              end
              object bs1106: TppLabel
                UserName = 'bs1106'
                Caption = 'd1006'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 103981
                mmTop = 8996
                mmWidth = 5821
                BandType = 5
                GroupNo = 4
              end
              object bs1107: TppLabel
                UserName = 'bs1107'
                Caption = 'd1004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 112184
                mmTop = 8996
                mmWidth = 5821
                BandType = 5
                GroupNo = 4
              end
              object bs1108: TppLabel
                UserName = 'bs1108'
                Caption = 'd1008'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 119856
                mmTop = 8996
                mmWidth = 5821
                BandType = 5
                GroupNo = 4
              end
              object bs1201: TppLabel
                UserName = 'bs1201'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 131498
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1202: TppLabel
                UserName = 'bs1202'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 139436
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1203: TppLabel
                UserName = 'bs1203'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 146844
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1204: TppLabel
                UserName = 'bs1204'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 154782
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1206: TppLabel
                UserName = 'bs1206'
                Caption = 'q0301'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 163248
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1207: TppLabel
                UserName = 'bs1207'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 170921
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1208: TppLabel
                UserName = 'bs1208'
                Caption = 'q0401'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 178859
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1301: TppLabel
                UserName = 'bs1301'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 190500
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1302: TppLabel
                UserName = 'bs1302'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 198438
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1303: TppLabel
                UserName = 'bs1303'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 205582
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1304: TppLabel
                UserName = 'bs1304'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 213519
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1306: TppLabel
                UserName = 'bs1306'
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
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1307: TppLabel
                UserName = 'bs1307'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 229923
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
              object bs1308: TppLabel
                UserName = 'bs1308'
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
                mmTop = 8996
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
            end
          end
          object ppGroup7: TppGroup
            BreakName = 'ACOL'
            DataPipeline = ppDBPipeline1
            ReprintOnSubsequentPage = False
            UserName = 'Group7'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand7: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 17992
              mmPrintPosition = 0
              object ppShape6: TppShape
                UserName = 'Shape6'
                mmHeight = 17992
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 3
                GroupNo = 5
              end
              object ppLabel108: TppLabel
                UserName = 'Label108'
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
                GroupNo = 5
              end
              object ppLabel109: TppLabel
                UserName = 'Label109'
                Caption = 'WO #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 13758
                mmTop = 1058
                mmWidth = 6085
                BandType = 3
                GroupNo = 5
              end
              object ppLabel110: TppLabel
                UserName = 'Label110'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 24606
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 5
              end
              object ppLabel111: TppLabel
                UserName = 'Label111'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 5
              end
              object ppLabel112: TppLabel
                UserName = 'Label112'
                Caption = 'Clr '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 4498
                mmWidth = 3440
                BandType = 3
                GroupNo = 5
              end
              object ppLabel113: TppLabel
                UserName = 'Label113'
                Caption = 'Code '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 7938
                mmWidth = 5292
                BandType = 3
                GroupNo = 5
              end
              object ppLabel114: TppLabel
                UserName = 'Label114'
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 1058
                mmWidth = 5027
                BandType = 3
                GroupNo = 5
              end
              object ppLine7: TppLine
                UserName = 'Line7'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 17992
                mmLeft = 71173
                mmTop = 0
                mmWidth = 1852
                BandType = 3
                GroupNo = 5
              end
              object ppLine8: TppLine
                UserName = 'Line8'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 17992
                mmLeft = 245005
                mmTop = 0
                mmWidth = 2117
                BandType = 3
                GroupNo = 5
              end
              object ppLabel115: TppLabel
                UserName = 'Label115'
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
                GroupNo = 5
              end
              object s3403: TppLabel
                UserName = 's3403'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 11113
                mmWidth = 3175
                BandType = 3
                GroupNo = 5
              end
              object s3404: TppLabel
                UserName = 's3404'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 11113
                mmWidth = 3175
                BandType = 3
                GroupNo = 5
              end
              object s3406: TppLabel
                UserName = 's3406'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 11113
                mmWidth = 3175
                BandType = 3
                GroupNo = 5
              end
              object s3408: TppLabel
                UserName = 's3408'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 11113
                mmWidth = 6085
                BandType = 3
                GroupNo = 5
              end
              object rwo303: TppLabel
                UserName = 'rwo303'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 198967
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 5
              end
              object ppLabel121: TppLabel
                UserName = 'Label121'
                Caption = 'Qty  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 4498
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object ppLabel122: TppLabel
                UserName = 'Label122'
                Caption = 'Ttl  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 5
              end
              object ppLabel123: TppLabel
                UserName = 'Label123'
                Caption = 'Size '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 49742
                mmTop = 1058
                mmWidth = 4498
                BandType = 3
                GroupNo = 5
              end
              object ppLabel124: TppLabel
                UserName = 'Label124'
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
                GroupNo = 5
              end
              object ppLabel125: TppLabel
                UserName = 'Label1010'
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object ppLabel126: TppLabel
                UserName = 'Label126'
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
                GroupNo = 5
              end
              object s3508: TppLabel
                UserName = 's3508'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s3401: TppLabel
                UserName = 's3401'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 11113
                mmWidth = 3704
                BandType = 3
                GroupNo = 5
              end
              object s3402: TppLabel
                UserName = 's3402'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 11113
                mmWidth = 5027
                BandType = 3
                GroupNo = 5
              end
              object s3502: TppLabel
                UserName = 's3502'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object ppLabel131: TppLabel
                UserName = 'Label131'
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
                GroupNo = 5
              end
              object s3501: TppLabel
                UserName = 's3501'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s3407: TppLabel
                UserName = 's3407'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 11113
                mmWidth = 4763
                BandType = 3
                GroupNo = 5
              end
              object s3507: TppLabel
                UserName = 's3507'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s3503: TppLabel
                UserName = 's3503'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s3504: TppLabel
                UserName = 's3504'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s3506: TppLabel
                UserName = 's3506'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object rwo301: TppLabel
                UserName = 'rwo301'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 80963
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 5
              end
              object rwo302: TppLabel
                UserName = 'rwo302'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 139965
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 5
              end
              object s1401: TppLabel
                UserName = 's1401'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 11113
                mmWidth = 3704
                BandType = 3
                GroupNo = 5
              end
              object s1402: TppLabel
                UserName = 's1402'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 11113
                mmWidth = 5027
                BandType = 3
                GroupNo = 5
              end
              object s1403: TppLabel
                UserName = 's1403'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 11113
                mmWidth = 3175
                BandType = 3
                GroupNo = 5
              end
              object s1404: TppLabel
                UserName = 's1404'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 11113
                mmWidth = 3175
                BandType = 3
                GroupNo = 5
              end
              object s1406: TppLabel
                UserName = 's1406'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 11113
                mmWidth = 3175
                BandType = 3
                GroupNo = 5
              end
              object s1407: TppLabel
                UserName = 's1407'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 11113
                mmWidth = 4763
                BandType = 3
                GroupNo = 5
              end
              object s1408: TppLabel
                UserName = 's1408'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 11113
                mmWidth = 6085
                BandType = 3
                GroupNo = 5
              end
              object s2401: TppLabel
                UserName = 's2401'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 11113
                mmWidth = 3704
                BandType = 3
                GroupNo = 5
              end
              object s2402: TppLabel
                UserName = 's2402'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 11113
                mmWidth = 5027
                BandType = 3
                GroupNo = 5
              end
              object s2403: TppLabel
                UserName = 's2403'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 11113
                mmWidth = 3175
                BandType = 3
                GroupNo = 5
              end
              object s2404: TppLabel
                UserName = 's2404'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 11113
                mmWidth = 3175
                BandType = 3
                GroupNo = 5
              end
              object s2406: TppLabel
                UserName = 's2406'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 11113
                mmWidth = 3175
                BandType = 3
                GroupNo = 5
              end
              object s2407: TppLabel
                UserName = 's2407'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 11113
                mmWidth = 4763
                BandType = 3
                GroupNo = 5
              end
              object s2408: TppLabel
                UserName = 's2408'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 11113
                mmWidth = 6085
                BandType = 3
                GroupNo = 5
              end
              object s1501: TppLabel
                UserName = 's1501'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s1502: TppLabel
                UserName = 's1502'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s1503: TppLabel
                UserName = 's1503'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s1504: TppLabel
                UserName = 's1504'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s1506: TppLabel
                UserName = 's1506'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s1507: TppLabel
                UserName = 's1507'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s1508: TppLabel
                UserName = 's1508'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s2501: TppLabel
                UserName = 's2501'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s2502: TppLabel
                UserName = 's2502'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s2503: TppLabel
                UserName = 's2503'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s2504: TppLabel
                UserName = 's2504'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s2506: TppLabel
                UserName = 's2506'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s2507: TppLabel
                UserName = 's2507'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object s2508: TppLabel
                UserName = 's2508'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 14552
                mmWidth = 3969
                BandType = 3
                GroupNo = 5
              end
              object ppLabel168: TppLabel
                UserName = 'Label168'
                Caption = 'Cust Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 31750
                mmTop = 1058
                mmWidth = 10848
                BandType = 3
                GroupNo = 5
              end
              object rwo311: TppLabel
                UserName = 'rwo311'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 81492
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 5
              end
              object rwo312: TppLabel
                UserName = 'rwo312'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 140494
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 5
              end
              object rwo313: TppLabel
                UserName = 'rwo313'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 199496
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 5
              end
              object rwo321: TppLabel
                UserName = 'rwo321'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 82021
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 5
              end
              object rwo322: TppLabel
                UserName = 'rwo322'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 141023
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 5
              end
              object rwo323: TppLabel
                UserName = 'rwo323'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 200025
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 5
              end
              object ppLabel133: TppLabel
                UserName = 'Label133'
                Caption = 'Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 43656
                mmTop = 1058
                mmWidth = 5821
                BandType = 3
                GroupNo = 6
              end
            end
            object ppGroupFooterBand7: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 19315
              mmPrintPosition = 0
              object ppShape11: TppShape
                UserName = 'Shape101'
                mmHeight = 16140
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 5
                GroupNo = 5
              end
              object ppLabel480: TppLabel
                UserName = 'Label480'
                Caption = 'Sub total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 1323
                mmTop = 12171
                mmWidth = 8731
                BandType = 5
                GroupNo = 5
              end
              object ppDBCalc48: TppDBCalc
                UserName = 'DBCalc48'
                AutoSize = True
                DataField = 'QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 50800
                mmTop = 12171
                mmWidth = 10075
                BandType = 5
                GroupNo = 5
              end
              object bq003: TppDBCalc
                UserName = 'bq003'
                AutoSize = True
                DataField = 'SQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 58738
                mmTop = 12171
                mmWidth = 11472
                BandType = 5
                GroupNo = 5
              end
              object bd003: TppDBCalc
                UserName = 'bd003'
                AutoSize = True
                DataField = 'DIFF'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 242888
                mmTop = 12171
                mmWidth = 10456
                BandType = 5
                GroupNo = 5
              end
              object b1033: TppDBCalc
                UserName = 'b1033'
                AutoSize = True
                DataField = 'Q1T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 77788
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1034: TppDBCalc
                UserName = 'b1034'
                AutoSize = True
                DataField = 'Q1T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 85990
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1036: TppDBCalc
                UserName = 'b1036'
                AutoSize = True
                DataField = 'Q1T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94456
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1038: TppDBCalc
                UserName = 'b1038'
                AutoSize = True
                DataField = 'Q1T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110331
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2033: TppDBCalc
                UserName = 'b2033'
                AutoSize = True
                DataField = 'Q2T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137054
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2034: TppDBCalc
                UserName = 'b2034'
                AutoSize = True
                DataField = 'Q2T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 144992
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2036: TppDBCalc
                UserName = 'b2036'
                AutoSize = True
                DataField = 'Q2T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153459
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2038: TppDBCalc
                UserName = 'b2038'
                AutoSize = True
                DataField = 'Q2T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169069
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3033: TppDBCalc
                UserName = 'b3033'
                AutoSize = True
                DataField = 'Q3T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 195792
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3034: TppDBCalc
                UserName = 'b3034'
                AutoSize = True
                DataField = 'Q3T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 203994
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3036: TppDBCalc
                UserName = 'b3036'
                AutoSize = True
                DataField = 'Q3T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212461
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3038: TppDBCalc
                UserName = 'b3038'
                AutoSize = True
                DataField = 'Q3T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228071
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1031: TppDBCalc
                UserName = 'b1031'
                AutoSize = True
                DataField = 'Q1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65088
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 5
              end
              object b1032: TppDBCalc
                UserName = 'b1032'
                AutoSize = True
                DataField = 'Q1PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 71702
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 5
              end
              object b2031: TppDBCalc
                UserName = 'b2031'
                AutoSize = True
                DataField = 'Q2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124619
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 5
              end
              object b2032: TppDBCalc
                UserName = 'b2032'
                AutoSize = True
                DataField = 'Q2PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 130704
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 5
              end
              object b3031: TppDBCalc
                UserName = 'b3031'
                AutoSize = True
                DataField = 'Q3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183092
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 5
              end
              object b3032: TppDBCalc
                UserName = 'b3032'
                AutoSize = True
                DataField = 'Q3PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 189707
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 5
              end
              object bp003: TppLabel
                UserName = 'bp003'
                Caption = 'bp003'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 256382
                mmTop = 12171
                mmWidth = 5821
                BandType = 5
                GroupNo = 5
              end
              object b1037: TppDBCalc
                UserName = 'b1037'
                AutoSize = True
                DataField = 'Q1AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102129
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 5
              end
              object b2037: TppDBCalc
                UserName = 'b2037'
                AutoSize = True
                DataField = 'Q2AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 160867
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 5
              end
              object b3037: TppDBCalc
                UserName = 'b3037'
                AutoSize = True
                DataField = 'Q3AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 219869
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 5
              end
              object b1043: TppDBCalc
                UserName = 'b1043'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 78317
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1044: TppDBCalc
                UserName = 'b1044'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 86519
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1046: TppDBCalc
                UserName = 'b1046'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94986
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1048: TppDBCalc
                UserName = 'b1048'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110596
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2043: TppDBCalc
                UserName = 'b2043'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137319
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2044: TppDBCalc
                UserName = 'b2044'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 145521
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2046: TppDBCalc
                UserName = 'b2046'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153988
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2048: TppDBCalc
                UserName = 'b2048'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169598
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3043: TppDBCalc
                UserName = 'b3043'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 196321
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3044: TppDBCalc
                UserName = 'b3044'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 204523
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3046: TppDBCalc
                UserName = 'b3046'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212990
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3048: TppDBCalc
                UserName = 'b3048'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228600
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1041: TppDBCalc
                UserName = 'b1041'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 5
              end
              object b1042: TppDBCalc
                UserName = 'b1042'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 72231
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 5
              end
              object b2041: TppDBCalc
                UserName = 'b2041'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124884
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 5
              end
              object b2042: TppDBCalc
                UserName = 'b2042'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131234
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 5
              end
              object b3041: TppDBCalc
                UserName = 'b3041'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183621
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 5
              end
              object b3042: TppDBCalc
                UserName = 'b3042'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 190236
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 5
              end
              object b1047: TppDBCalc
                UserName = 'b1047'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102394
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 5
              end
              object b2047: TppDBCalc
                UserName = 'b2047'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 161661
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 5
              end
              object b3047: TppDBCalc
                UserName = 'b3047'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 220398
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 5
              end
              object b1053: TppDBCalc
                UserName = 'b1053'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 78846
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1054: TppDBCalc
                UserName = 'b1054'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 87313
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1056: TppDBCalc
                UserName = 'b1056'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 95515
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1058: TppDBCalc
                UserName = 'b1058'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 111125
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2053: TppDBCalc
                UserName = 'b2053'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137848
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2054: TppDBCalc
                UserName = 'b2054'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 146050
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2056: TppDBCalc
                UserName = 'b2056'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 154782
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b2058: TppDBCalc
                UserName = 'b2058'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 170127
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3053: TppDBCalc
                UserName = 'b3053'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 196850
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3054: TppDBCalc
                UserName = 'b3054'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 205317
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3056: TppDBCalc
                UserName = 'b3056'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 213519
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b3058: TppDBCalc
                UserName = 'b3058'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 229130
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 5
              end
              object b1051: TppDBCalc
                UserName = 'b1051'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 66146
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 5
              end
              object b1052: TppDBCalc
                UserName = 'b1052'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 72761
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 5
              end
              object b2051: TppDBCalc
                UserName = 'b2051'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 125148
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 5
              end
              object b2052: TppDBCalc
                UserName = 'b2052'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131763
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 5
              end
              object b3051: TppDBCalc
                UserName = 'b3051'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 184415
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 5
              end
              object b3052: TppDBCalc
                UserName = 'b3052'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 190765
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 5
              end
              object b1057: TppDBCalc
                UserName = 'b1057'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102923
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 5
              end
              object b2057: TppDBCalc
                UserName = 'b2057'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 161925
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 5
              end
              object b3057: TppDBCalc
                UserName = 'b3057'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 220928
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 5
              end
              object ppLine16: TppLine
                UserName = 'Line16'
                Weight = 0.75
                mmHeight = 1852
                mmLeft = 794
                mmTop = 11113
                mmWidth = 267494
                BandType = 5
                GroupNo = 5
              end
              object bs2101: TppLabel
                UserName = 'bs2101'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 72496
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2102: TppLabel
                UserName = 'bs2102'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 80433
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2103: TppLabel
                UserName = 'bs2103'
                Caption = 'd1003'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 87313
                mmTop = 12171
                mmWidth = 5821
                BandType = 5
                GroupNo = 5
              end
              object bs2104: TppLabel
                UserName = 'bs2104'
                Caption = 'd1004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 95515
                mmTop = 12171
                mmWidth = 5821
                BandType = 5
                GroupNo = 5
              end
              object bs2106: TppLabel
                UserName = 'bs2106'
                Caption = 'd1006'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 103981
                mmTop = 12171
                mmWidth = 5821
                BandType = 5
                GroupNo = 5
              end
              object bs2107: TppLabel
                UserName = 'bs2107'
                Caption = 'd1004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 112184
                mmTop = 12171
                mmWidth = 5821
                BandType = 5
                GroupNo = 5
              end
              object bs2108: TppLabel
                UserName = 'bs2108'
                Caption = 'd1008'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 119856
                mmTop = 12171
                mmWidth = 5821
                BandType = 5
                GroupNo = 5
              end
              object bs2201: TppLabel
                UserName = 'bs2201'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 131498
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2202: TppLabel
                UserName = 'bs2202'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 139436
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2203: TppLabel
                UserName = 'bs2203'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 146844
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2204: TppLabel
                UserName = 'bs2204'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 154782
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2206: TppLabel
                UserName = 'bs2206'
                Caption = 'q0301'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 163248
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2207: TppLabel
                UserName = 'bs2207'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 171186
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2208: TppLabel
                UserName = 'bs2208'
                Caption = 'q0401'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 178859
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2301: TppLabel
                UserName = 'bs2301'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 190500
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2302: TppLabel
                UserName = 'bs2302'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 198438
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2303: TppLabel
                UserName = 'bs2303'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 205582
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2304: TppLabel
                UserName = 'bs2304'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 213519
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2306: TppLabel
                UserName = 'bs2306'
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
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2307: TppLabel
                UserName = 'bs2307'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 229923
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
              object bs2308: TppLabel
                UserName = 'bs2308'
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
                mmTop = 12171
                mmWidth = 5556
                BandType = 5
                GroupNo = 5
              end
            end
          end
          object ppGroup8: TppGroup
            BreakName = 'ACOL'
            DataPipeline = ppDBPipeline1
            ReprintOnSubsequentPage = False
            UserName = 'Group8'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand8: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 21431
              mmPrintPosition = 0
              object ppShape7: TppShape
                UserName = 'Shape7'
                mmHeight = 21431
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 3
                GroupNo = 6
              end
              object ppLabel175: TppLabel
                UserName = 'Label175'
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
                GroupNo = 6
              end
              object ppLabel176: TppLabel
                UserName = 'Label176'
                Caption = 'WO #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 13758
                mmTop = 1058
                mmWidth = 6085
                BandType = 3
                GroupNo = 6
              end
              object ppLabel177: TppLabel
                UserName = 'Label1101'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 24606
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 6
              end
              object ppLabel178: TppLabel
                UserName = 'Label178'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 6
              end
              object ppLabel179: TppLabel
                UserName = 'Label179'
                Caption = 'Clr '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 4498
                mmWidth = 3440
                BandType = 3
                GroupNo = 6
              end
              object ppLabel180: TppLabel
                UserName = 'Label180'
                Caption = 'Code '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 7938
                mmWidth = 5292
                BandType = 3
                GroupNo = 6
              end
              object ppLabel181: TppLabel
                UserName = 'Label181'
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 1058
                mmWidth = 5027
                BandType = 3
                GroupNo = 6
              end
              object ppLine9: TppLine
                UserName = 'Line9'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 21431
                mmLeft = 71173
                mmTop = 0
                mmWidth = 1852
                BandType = 3
                GroupNo = 6
              end
              object ppLine10: TppLine
                UserName = 'Line10'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 21431
                mmLeft = 245005
                mmTop = 0
                mmWidth = 2117
                BandType = 3
                GroupNo = 6
              end
              object ppLabel182: TppLabel
                UserName = 'Label182'
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
                GroupNo = 6
              end
              object s3603: TppLabel
                UserName = 's3603'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 14552
                mmWidth = 3175
                BandType = 3
                GroupNo = 6
              end
              object s3604: TppLabel
                UserName = 's3604'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 14552
                mmWidth = 3175
                BandType = 3
                GroupNo = 6
              end
              object s3606: TppLabel
                UserName = 's3606'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 14552
                mmWidth = 3175
                BandType = 3
                GroupNo = 6
              end
              object s3608: TppLabel
                UserName = 's3608'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 14552
                mmWidth = 6085
                BandType = 3
                GroupNo = 6
              end
              object rwo403: TppLabel
                UserName = 'rwo403'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 198967
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object ppLabel188: TppLabel
                UserName = 'Label188'
                Caption = 'Qty  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 4498
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object ppLabel189: TppLabel
                UserName = 'Label189'
                Caption = 'Ttl  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 6
              end
              object ppLabel190: TppLabel
                UserName = 'Label190'
                Caption = 'Size '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 49742
                mmTop = 1058
                mmWidth = 4498
                BandType = 3
                GroupNo = 6
              end
              object ppLabel191: TppLabel
                UserName = 'Label191'
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
                GroupNo = 6
              end
              object ppLabel192: TppLabel
                UserName = 'Label10101'
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object ppLabel193: TppLabel
                UserName = 'Label193'
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
                GroupNo = 6
              end
              object s3708: TppLabel
                UserName = 's3708'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s3601: TppLabel
                UserName = 's3601'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 14552
                mmWidth = 3704
                BandType = 3
                GroupNo = 6
              end
              object s3602: TppLabel
                UserName = 's3602'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 14552
                mmWidth = 5027
                BandType = 3
                GroupNo = 6
              end
              object s3702: TppLabel
                UserName = 's3702'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object ppLabel198: TppLabel
                UserName = 'Label198'
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
                GroupNo = 6
              end
              object s3701: TppLabel
                UserName = 's3701'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s3607: TppLabel
                UserName = 's3607'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 14552
                mmWidth = 4763
                BandType = 3
                GroupNo = 6
              end
              object s3707: TppLabel
                UserName = 's3707'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s3703: TppLabel
                UserName = 's3703'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s3704: TppLabel
                UserName = 's3704'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s3706: TppLabel
                UserName = 's3706'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object rwo401: TppLabel
                UserName = 'rwo401'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 80963
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object rwo402: TppLabel
                UserName = 'rwo402'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 139965
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object s1601: TppLabel
                UserName = 's1601'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 14552
                mmWidth = 3704
                BandType = 3
                GroupNo = 6
              end
              object s1602: TppLabel
                UserName = 's1602'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 14552
                mmWidth = 5027
                BandType = 3
                GroupNo = 6
              end
              object s1603: TppLabel
                UserName = 's1603'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 14552
                mmWidth = 3175
                BandType = 3
                GroupNo = 6
              end
              object s1604: TppLabel
                UserName = 's1604'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 14552
                mmWidth = 3175
                BandType = 3
                GroupNo = 6
              end
              object s1606: TppLabel
                UserName = 's1606'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 14552
                mmWidth = 3175
                BandType = 3
                GroupNo = 6
              end
              object s1607: TppLabel
                UserName = 's1607'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 14552
                mmWidth = 4763
                BandType = 3
                GroupNo = 6
              end
              object s1608: TppLabel
                UserName = 's1608'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 14552
                mmWidth = 6085
                BandType = 3
                GroupNo = 6
              end
              object s2601: TppLabel
                UserName = 's2601'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 14552
                mmWidth = 3704
                BandType = 3
                GroupNo = 6
              end
              object s2602: TppLabel
                UserName = 's2602'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 14552
                mmWidth = 5027
                BandType = 3
                GroupNo = 6
              end
              object s2603: TppLabel
                UserName = 's2603'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 14552
                mmWidth = 3175
                BandType = 3
                GroupNo = 6
              end
              object s2604: TppLabel
                UserName = 's2604'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 14552
                mmWidth = 3175
                BandType = 3
                GroupNo = 6
              end
              object s2606: TppLabel
                UserName = 's2606'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 14552
                mmWidth = 3175
                BandType = 3
                GroupNo = 6
              end
              object s2607: TppLabel
                UserName = 's2607'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 14552
                mmWidth = 4763
                BandType = 3
                GroupNo = 6
              end
              object s2608: TppLabel
                UserName = 's2608'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 14552
                mmWidth = 6085
                BandType = 3
                GroupNo = 6
              end
              object s1701: TppLabel
                UserName = 's1701'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s1702: TppLabel
                UserName = 's1702'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s1703: TppLabel
                UserName = 's1703'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s1704: TppLabel
                UserName = 's1704'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s1706: TppLabel
                UserName = 's1706'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s1707: TppLabel
                UserName = 's1707'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s1708: TppLabel
                UserName = 's1708'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s2701: TppLabel
                UserName = 's2701'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s2702: TppLabel
                UserName = 's2702'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s2703: TppLabel
                UserName = 's2703'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s2704: TppLabel
                UserName = 's2704'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s2706: TppLabel
                UserName = 's2706'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s2707: TppLabel
                UserName = 's2707'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object s2708: TppLabel
                UserName = 's2708'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 17992
                mmWidth = 3969
                BandType = 3
                GroupNo = 6
              end
              object ppLabel235: TppLabel
                UserName = 'Label235'
                Caption = 'Cust Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 31750
                mmTop = 1058
                mmWidth = 10848
                BandType = 3
                GroupNo = 6
              end
              object rwo411: TppLabel
                UserName = 'rwo411'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 81492
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object rwo412: TppLabel
                UserName = 'rwo412'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 140494
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object rwo413: TppLabel
                UserName = 'rwo413'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 199496
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object rwo421: TppLabel
                UserName = 'rwo421'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 82021
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object rwo422: TppLabel
                UserName = 'rwo422'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 141023
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object rwo423: TppLabel
                UserName = 'rwo423'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 200025
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object rwo431: TppLabel
                UserName = 'rwo431'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 82550
                mmTop = 11113
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object rwo432: TppLabel
                UserName = 'rwo432'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 141552
                mmTop = 11113
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object rwo433: TppLabel
                UserName = 'rwo433'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 200555
                mmTop = 11113
                mmWidth = 7144
                BandType = 3
                GroupNo = 6
              end
              object ppLabel134: TppLabel
                UserName = 'Label1301'
                Caption = 'Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 43656
                mmTop = 1058
                mmWidth = 5821
                BandType = 3
                GroupNo = 7
              end
            end
            object ppGroupFooterBand8: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 22490
              mmPrintPosition = 0
              object ppShape12: TppShape
                UserName = 'Shape12'
                mmHeight = 19579
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 5
                GroupNo = 6
              end
              object ppLabel482: TppLabel
                UserName = 'Label4801'
                Caption = 'Sub total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 1323
                mmTop = 15610
                mmWidth = 8731
                BandType = 5
                GroupNo = 6
              end
              object ppDBCalc114: TppDBCalc
                UserName = 'DBCalc114'
                AutoSize = True
                DataField = 'QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 50800
                mmTop = 15610
                mmWidth = 10075
                BandType = 5
                GroupNo = 6
              end
              object bq004: TppDBCalc
                UserName = 'bq004'
                AutoSize = True
                DataField = 'SQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 58738
                mmTop = 15610
                mmWidth = 11472
                BandType = 5
                GroupNo = 6
              end
              object bd004: TppDBCalc
                UserName = 'bd004'
                AutoSize = True
                DataField = 'DIFF'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 242888
                mmTop = 15610
                mmWidth = 10456
                BandType = 5
                GroupNo = 6
              end
              object b1063: TppDBCalc
                UserName = 'b1063'
                AutoSize = True
                DataField = 'Q1T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 77788
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1064: TppDBCalc
                UserName = 'b1064'
                AutoSize = True
                DataField = 'Q1T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 85990
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1066: TppDBCalc
                UserName = 'b1066'
                AutoSize = True
                DataField = 'Q1T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94456
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1068: TppDBCalc
                UserName = 'b1068'
                AutoSize = True
                DataField = 'Q1T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110331
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2063: TppDBCalc
                UserName = 'b2063'
                AutoSize = True
                DataField = 'Q2T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137054
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2064: TppDBCalc
                UserName = 'b2064'
                AutoSize = True
                DataField = 'Q2T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 144992
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2066: TppDBCalc
                UserName = 'b2066'
                AutoSize = True
                DataField = 'Q2T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153459
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2068: TppDBCalc
                UserName = 'b2068'
                AutoSize = True
                DataField = 'Q2T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169069
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3063: TppDBCalc
                UserName = 'b3063'
                AutoSize = True
                DataField = 'Q3T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 195792
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3064: TppDBCalc
                UserName = 'b3064'
                AutoSize = True
                DataField = 'Q3T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 203994
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3066: TppDBCalc
                UserName = 'b3066'
                AutoSize = True
                DataField = 'Q3T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212461
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3068: TppDBCalc
                UserName = 'b3068'
                AutoSize = True
                DataField = 'Q3T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228071
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1061: TppDBCalc
                UserName = 'b1061'
                AutoSize = True
                DataField = 'Q1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65088
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b1062: TppDBCalc
                UserName = 'b1062'
                AutoSize = True
                DataField = 'Q1PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 71702
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b2061: TppDBCalc
                UserName = 'b2061'
                AutoSize = True
                DataField = 'Q2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124090
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b2062: TppDBCalc
                UserName = 'b2062'
                AutoSize = True
                DataField = 'Q2PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 130704
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b3061: TppDBCalc
                UserName = 'b3061'
                AutoSize = True
                DataField = 'Q3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183092
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b3062: TppDBCalc
                UserName = 'b3062'
                AutoSize = True
                DataField = 'Q3PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 189707
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object bp004: TppLabel
                UserName = 'bp004'
                Caption = 'bp004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 256382
                mmTop = 15610
                mmWidth = 5821
                BandType = 5
                GroupNo = 6
              end
              object b1067: TppDBCalc
                UserName = 'b1067'
                AutoSize = True
                DataField = 'Q1AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102129
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b2067: TppDBCalc
                UserName = 'b2067'
                AutoSize = True
                DataField = 'Q2AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 160867
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b3067: TppDBCalc
                UserName = 'b3067'
                AutoSize = True
                DataField = 'Q3AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 219869
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b1073: TppDBCalc
                UserName = 'b1073'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 78317
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1074: TppDBCalc
                UserName = 'b1074'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 86519
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1076: TppDBCalc
                UserName = 'b1076'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94986
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1078: TppDBCalc
                UserName = 'b1078'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110861
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2073: TppDBCalc
                UserName = 'b2073'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137319
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2074: TppDBCalc
                UserName = 'b2074'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 145521
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2076: TppDBCalc
                UserName = 'b2076'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153988
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2078: TppDBCalc
                UserName = 'b2078'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169598
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3073: TppDBCalc
                UserName = 'b3073'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 196321
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3074: TppDBCalc
                UserName = 'b3074'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 204523
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3076: TppDBCalc
                UserName = 'b3076'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212990
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3078: TppDBCalc
                UserName = 'b3078'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228600
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1071: TppDBCalc
                UserName = 'b1071'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b1072: TppDBCalc
                UserName = 'b1072'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 72231
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b2071: TppDBCalc
                UserName = 'b2071'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124884
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b2072: TppDBCalc
                UserName = 'b2072'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131234
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b3071: TppDBCalc
                UserName = 'b3071'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183621
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b3072: TppDBCalc
                UserName = 'b3072'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 190236
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b1077: TppDBCalc
                UserName = 'b1077'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102394
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b2077: TppDBCalc
                UserName = 'b2077'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 161661
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b3077: TppDBCalc
                UserName = 'b3077'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 220398
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b1083: TppDBCalc
                UserName = 'b1083'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 78846
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1084: TppDBCalc
                UserName = 'b1084'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 87313
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1086: TppDBCalc
                UserName = 'b1086'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 95515
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1088: TppDBCalc
                UserName = 'b1088'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 111125
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2083: TppDBCalc
                UserName = 'b2083'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137848
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2084: TppDBCalc
                UserName = 'b2084'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 146050
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2086: TppDBCalc
                UserName = 'b2086'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 154782
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2088: TppDBCalc
                UserName = 'b2088'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 170127
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3083: TppDBCalc
                UserName = 'b3083'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 196850
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3084: TppDBCalc
                UserName = 'b3084'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 205317
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3086: TppDBCalc
                UserName = 'b3086'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 213519
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3088: TppDBCalc
                UserName = 'b3088'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 229130
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1081: TppDBCalc
                UserName = 'b1081'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 66146
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b1082: TppDBCalc
                UserName = 'b1082'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 72761
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b2081: TppDBCalc
                UserName = 'b2081'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 125148
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b2082: TppDBCalc
                UserName = 'b2082'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131763
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b3081: TppDBCalc
                UserName = 'b3081'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 184415
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b3082: TppDBCalc
                UserName = 'b3082'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 190765
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b1087: TppDBCalc
                UserName = 'b1087'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102923
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b2087: TppDBCalc
                UserName = 'b2087'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 161925
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b3087: TppDBCalc
                UserName = 'b3087'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 220928
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b1093: TppDBCalc
                UserName = 'b1093'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 79375
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1094: TppDBCalc
                UserName = 'b1094'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 87842
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1096: TppDBCalc
                UserName = 'b1096'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 96044
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1098: TppDBCalc
                UserName = 'b1098'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 111654
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2093: TppDBCalc
                UserName = 'b2093'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 138377
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2094: TppDBCalc
                UserName = 'b2094'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 146579
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2096: TppDBCalc
                UserName = 'b2096'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 155311
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b2098: TppDBCalc
                UserName = 'b2098'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 170657
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3093: TppDBCalc
                UserName = 'b3093'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 197380
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3094: TppDBCalc
                UserName = 'b3094'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 205582
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3096: TppDBCalc
                UserName = 'b3096'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 214048
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b3098: TppDBCalc
                UserName = 'b3098'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 229659
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 6
              end
              object b1091: TppDBCalc
                UserName = 'b1091'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 66675
                mmTop = 10848
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b1092: TppDBCalc
                UserName = 'b1092'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 73290
                mmTop = 10848
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b2091: TppDBCalc
                UserName = 'b2091'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 125677
                mmTop = 10848
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b2092: TppDBCalc
                UserName = 'b2092'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 132292
                mmTop = 10848
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b3091: TppDBCalc
                UserName = 'b3091'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 184680
                mmTop = 10848
                mmWidth = 12912
                BandType = 5
                GroupNo = 6
              end
              object b3092: TppDBCalc
                UserName = 'b3092'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 191294
                mmTop = 10848
                mmWidth = 14309
                BandType = 5
                GroupNo = 6
              end
              object b1097: TppDBCalc
                UserName = 'b1097'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 103452
                mmTop = 10848
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b2097: TppDBCalc
                UserName = 'b2097'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 162454
                mmTop = 10848
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object b3097: TppDBCalc
                UserName = 'b3097'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 221457
                mmTop = 10848
                mmWidth = 15960
                BandType = 5
                GroupNo = 6
              end
              object ppLine17: TppLine
                UserName = 'Line17'
                Weight = 0.75
                mmHeight = 1852
                mmLeft = 794
                mmTop = 14288
                mmWidth = 267494
                BandType = 5
                GroupNo = 6
              end
              object bs3101: TppLabel
                UserName = 'bs3101'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 72496
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3102: TppLabel
                UserName = 'bs3102'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 80433
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3103: TppLabel
                UserName = 'bs3103'
                Caption = 'd1003'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 87313
                mmTop = 15610
                mmWidth = 5821
                BandType = 5
                GroupNo = 6
              end
              object bs3104: TppLabel
                UserName = 'bs3104'
                Caption = 'd1004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 95515
                mmTop = 15610
                mmWidth = 5821
                BandType = 5
                GroupNo = 6
              end
              object bs3106: TppLabel
                UserName = 'bs3106'
                Caption = 'd1006'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 103981
                mmTop = 15610
                mmWidth = 5821
                BandType = 5
                GroupNo = 6
              end
              object bs3107: TppLabel
                UserName = 'bs3107'
                Caption = 'd1004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 112184
                mmTop = 15610
                mmWidth = 5821
                BandType = 5
                GroupNo = 6
              end
              object bs3108: TppLabel
                UserName = 'bs3108'
                Caption = 'd1008'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 119856
                mmTop = 15610
                mmWidth = 5821
                BandType = 5
                GroupNo = 6
              end
              object bs3201: TppLabel
                UserName = 'bs3201'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 131498
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3202: TppLabel
                UserName = 'bs3202'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 139436
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3203: TppLabel
                UserName = 'bs3203'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 146844
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3204: TppLabel
                UserName = 'bs3204'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 154782
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3206: TppLabel
                UserName = 'bs3206'
                Caption = 'q0301'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 163248
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3207: TppLabel
                UserName = 'bs3207'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 171186
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3208: TppLabel
                UserName = 'bs3208'
                Caption = 'q0401'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 178859
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3301: TppLabel
                UserName = 'bs3301'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 190500
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3302: TppLabel
                UserName = 'bs3302'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 198438
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3303: TppLabel
                UserName = 'bs3303'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 205582
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3304: TppLabel
                UserName = 'bs3304'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 213519
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3306: TppLabel
                UserName = 'bs3306'
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
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3307: TppLabel
                UserName = 'bs3307'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 229923
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
              object bs3308: TppLabel
                UserName = 'bs3308'
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
                mmTop = 15610
                mmWidth = 5556
                BandType = 5
                GroupNo = 6
              end
            end
          end
          object ppGroup9: TppGroup
            BreakName = 'ACOL'
            DataPipeline = ppDBPipeline1
            ReprintOnSubsequentPage = False
            UserName = 'Group9'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand9: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 25135
              mmPrintPosition = 0
              object ppShape8: TppShape
                UserName = 'Shape8'
                mmHeight = 25135
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 3
                GroupNo = 7
              end
              object ppLabel245: TppLabel
                UserName = 'Label245'
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
                GroupNo = 7
              end
              object ppLabel246: TppLabel
                UserName = 'Label246'
                Caption = 'WO #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 13758
                mmTop = 1058
                mmWidth = 6085
                BandType = 3
                GroupNo = 7
              end
              object ppLabel247: TppLabel
                UserName = 'Label247'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 24606
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 7
              end
              object ppLabel248: TppLabel
                UserName = 'Label248'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 7
              end
              object ppLabel249: TppLabel
                UserName = 'Label249'
                Caption = 'Clr '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 4498
                mmWidth = 3440
                BandType = 3
                GroupNo = 7
              end
              object ppLabel250: TppLabel
                UserName = 'Label1801'
                Caption = 'Code '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 7938
                mmWidth = 5292
                BandType = 3
                GroupNo = 7
              end
              object ppLabel251: TppLabel
                UserName = 'Label251'
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 1058
                mmWidth = 5027
                BandType = 3
                GroupNo = 7
              end
              object ppLine11: TppLine
                UserName = 'Line11'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 25135
                mmLeft = 71173
                mmTop = 0
                mmWidth = 1852
                BandType = 3
                GroupNo = 7
              end
              object ppLine12: TppLine
                UserName = 'Line101'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 25135
                mmLeft = 245005
                mmTop = 0
                mmWidth = 2117
                BandType = 3
                GroupNo = 7
              end
              object ppLabel252: TppLabel
                UserName = 'Label252'
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
                GroupNo = 7
              end
              object s3803: TppLabel
                UserName = 's3803'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 17992
                mmWidth = 3175
                BandType = 3
                GroupNo = 7
              end
              object s3804: TppLabel
                UserName = 's3804'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 17992
                mmWidth = 3175
                BandType = 3
                GroupNo = 7
              end
              object s3806: TppLabel
                UserName = 's3806'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 17992
                mmWidth = 3175
                BandType = 3
                GroupNo = 7
              end
              object s3808: TppLabel
                UserName = 's3808'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 17992
                mmWidth = 6085
                BandType = 3
                GroupNo = 7
              end
              object rwo503: TppLabel
                UserName = 'rwo503'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 198967
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object ppLabel258: TppLabel
                UserName = 'Label258'
                Caption = 'Qty  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 4498
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object ppLabel259: TppLabel
                UserName = 'Label259'
                Caption = 'Ttl  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 7
              end
              object ppLabel260: TppLabel
                UserName = 'Label1901'
                Caption = 'Size '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 49742
                mmTop = 1058
                mmWidth = 4498
                BandType = 3
                GroupNo = 7
              end
              object ppLabel261: TppLabel
                UserName = 'Label261'
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
                GroupNo = 7
              end
              object ppLabel262: TppLabel
                UserName = 'Label262'
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object ppLabel263: TppLabel
                UserName = 'Label263'
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
                GroupNo = 7
              end
              object s3908: TppLabel
                UserName = 's3908'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s3801: TppLabel
                UserName = 's3801'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 17992
                mmWidth = 3704
                BandType = 3
                GroupNo = 7
              end
              object s3802: TppLabel
                UserName = 's3802'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 17992
                mmWidth = 5027
                BandType = 3
                GroupNo = 7
              end
              object s3902: TppLabel
                UserName = 's3902'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object ppLabel268: TppLabel
                UserName = 'Label268'
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
                GroupNo = 7
              end
              object s3901: TppLabel
                UserName = 's3901'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s3807: TppLabel
                UserName = 's3807'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 17992
                mmWidth = 4763
                BandType = 3
                GroupNo = 7
              end
              object s3907: TppLabel
                UserName = 's3907'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s3903: TppLabel
                UserName = 's3903'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s3904: TppLabel
                UserName = 's3904'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s3906: TppLabel
                UserName = 's3906'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object rwo501: TppLabel
                UserName = 'rwo501'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 80963
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo502: TppLabel
                UserName = 'rwo502'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 139965
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object s1801: TppLabel
                UserName = 's1801'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 17992
                mmWidth = 3704
                BandType = 3
                GroupNo = 7
              end
              object s1802: TppLabel
                UserName = 's1802'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 17992
                mmWidth = 5027
                BandType = 3
                GroupNo = 7
              end
              object s1803: TppLabel
                UserName = 's1803'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 17992
                mmWidth = 3175
                BandType = 3
                GroupNo = 7
              end
              object s1804: TppLabel
                UserName = 's1804'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 17992
                mmWidth = 3175
                BandType = 3
                GroupNo = 7
              end
              object s1806: TppLabel
                UserName = 's1806'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 17992
                mmWidth = 3175
                BandType = 3
                GroupNo = 7
              end
              object s1807: TppLabel
                UserName = 's1807'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 17992
                mmWidth = 4763
                BandType = 3
                GroupNo = 7
              end
              object s1808: TppLabel
                UserName = 's1808'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 17992
                mmWidth = 6085
                BandType = 3
                GroupNo = 7
              end
              object s2801: TppLabel
                UserName = 's2801'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 17992
                mmWidth = 3704
                BandType = 3
                GroupNo = 7
              end
              object s2802: TppLabel
                UserName = 's2802'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 17992
                mmWidth = 5027
                BandType = 3
                GroupNo = 7
              end
              object s2803: TppLabel
                UserName = 's2803'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 17992
                mmWidth = 3175
                BandType = 3
                GroupNo = 7
              end
              object s2804: TppLabel
                UserName = 's2804'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 17992
                mmWidth = 3175
                BandType = 3
                GroupNo = 7
              end
              object s2806: TppLabel
                UserName = 's2806'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 17992
                mmWidth = 3175
                BandType = 3
                GroupNo = 7
              end
              object s2807: TppLabel
                UserName = 's2807'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 17992
                mmWidth = 4763
                BandType = 3
                GroupNo = 7
              end
              object s2808: TppLabel
                UserName = 's2808'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 17992
                mmWidth = 6085
                BandType = 3
                GroupNo = 7
              end
              object s1901: TppLabel
                UserName = 's1901'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s1902: TppLabel
                UserName = 's1902'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s1903: TppLabel
                UserName = 's1903'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s1904: TppLabel
                UserName = 's1904'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s1906: TppLabel
                UserName = 's1906'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s1907: TppLabel
                UserName = 's1907'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s1908: TppLabel
                UserName = 's1908'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s2901: TppLabel
                UserName = 's2901'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s2902: TppLabel
                UserName = 's2902'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s2903: TppLabel
                UserName = 's2903'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s2904: TppLabel
                UserName = 's2904'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s2906: TppLabel
                UserName = 's2906'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s2907: TppLabel
                UserName = 's2907'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 21431
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object s2908: TppLabel
                UserName = 's2908'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 21167
                mmWidth = 3969
                BandType = 3
                GroupNo = 7
              end
              object ppLabel305: TppLabel
                UserName = 'Label305'
                Caption = 'Cust Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 31750
                mmTop = 1058
                mmWidth = 10848
                BandType = 3
                GroupNo = 7
              end
              object rwo511: TppLabel
                UserName = 'rwo511'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 81492
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo512: TppLabel
                UserName = 'rwo512'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 140494
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo513: TppLabel
                UserName = 'rwo513'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 199496
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo521: TppLabel
                UserName = 'rwo521'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 82021
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo522: TppLabel
                UserName = 'rwo522'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 141023
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo523: TppLabel
                UserName = 'rwo523'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 200025
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo531: TppLabel
                UserName = 'rwo531'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 82550
                mmTop = 11113
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo532: TppLabel
                UserName = 'rwo532'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 141552
                mmTop = 11113
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo533: TppLabel
                UserName = 'rwo533'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 200555
                mmTop = 11113
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo541: TppLabel
                UserName = 'rwo541'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 83079
                mmTop = 14552
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo542: TppLabel
                UserName = 'rwo542'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 142082
                mmTop = 14552
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object rwo543: TppLabel
                UserName = 'rwo543'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 201084
                mmTop = 14552
                mmWidth = 7144
                BandType = 3
                GroupNo = 7
              end
              object ppLabel135: TppLabel
                UserName = 'Label135'
                Caption = 'Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 43656
                mmTop = 1058
                mmWidth = 5821
                BandType = 3
                GroupNo = 8
              end
            end
            object ppGroupFooterBand9: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 25929
              mmPrintPosition = 0
              object ppShape13: TppShape
                UserName = 'Shape13'
                mmHeight = 23019
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 5
                GroupNo = 7
              end
              object ppLabel484: TppLabel
                UserName = 'Label484'
                Caption = 'Sub total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 1323
                mmTop = 18785
                mmWidth = 8731
                BandType = 5
                GroupNo = 7
              end
              object ppDBCalc201: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                DataField = 'QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 50800
                mmTop = 18785
                mmWidth = 10075
                BandType = 5
                GroupNo = 7
              end
              object bq005: TppDBCalc
                UserName = 'bq005'
                AutoSize = True
                DataField = 'SQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 58738
                mmTop = 18785
                mmWidth = 11472
                BandType = 5
                GroupNo = 7
              end
              object bd005: TppDBCalc
                UserName = 'bd005'
                AutoSize = True
                DataField = 'DIFF'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 242888
                mmTop = 18785
                mmWidth = 10456
                BandType = 5
                GroupNo = 7
              end
              object b1103: TppDBCalc
                UserName = 'b1103'
                AutoSize = True
                DataField = 'Q1T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 77788
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1104: TppDBCalc
                UserName = 'b1104'
                AutoSize = True
                DataField = 'Q1T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 85990
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1106: TppDBCalc
                UserName = 'b1106'
                AutoSize = True
                DataField = 'Q1T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94456
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1108: TppDBCalc
                UserName = 'b1108'
                AutoSize = True
                DataField = 'Q1T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110331
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2103: TppDBCalc
                UserName = 'b2103'
                AutoSize = True
                DataField = 'Q2T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137054
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2104: TppDBCalc
                UserName = 'b2104'
                AutoSize = True
                DataField = 'Q2T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 144992
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2106: TppDBCalc
                UserName = 'b2106'
                AutoSize = True
                DataField = 'Q2T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153459
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2108: TppDBCalc
                UserName = 'b2108'
                AutoSize = True
                DataField = 'Q2T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169069
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3103: TppDBCalc
                UserName = 'b3103'
                AutoSize = True
                DataField = 'Q3T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 195792
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3104: TppDBCalc
                UserName = 'b3104'
                AutoSize = True
                DataField = 'Q3T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 203994
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3106: TppDBCalc
                UserName = 'b3106'
                AutoSize = True
                DataField = 'Q3T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212461
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3108: TppDBCalc
                UserName = 'b3108'
                AutoSize = True
                DataField = 'Q3T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228071
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1101: TppDBCalc
                UserName = 'b1101'
                AutoSize = True
                DataField = 'Q1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65088
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b1102: TppDBCalc
                UserName = 'b1102'
                AutoSize = True
                DataField = 'Q1PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 71702
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b2101: TppDBCalc
                UserName = 'b2101'
                AutoSize = True
                DataField = 'Q2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124090
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b2102: TppDBCalc
                UserName = 'b2102'
                AutoSize = True
                DataField = 'Q2PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 130704
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b3101: TppDBCalc
                UserName = 'b3101'
                AutoSize = True
                DataField = 'Q3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183092
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b3102: TppDBCalc
                UserName = 'b3102'
                AutoSize = True
                DataField = 'Q3PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 189707
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object bp005: TppLabel
                UserName = 'bp005'
                Caption = 'bp005'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 256382
                mmTop = 18785
                mmWidth = 5821
                BandType = 5
                GroupNo = 7
              end
              object b1107: TppDBCalc
                UserName = 'b1107'
                AutoSize = True
                DataField = 'Q1AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102129
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b2107: TppDBCalc
                UserName = 'b2107'
                AutoSize = True
                DataField = 'Q2AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 160867
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b3107: TppDBCalc
                UserName = 'b3107'
                AutoSize = True
                DataField = 'Q3AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 219869
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b1113: TppDBCalc
                UserName = 'b1113'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 78317
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1114: TppDBCalc
                UserName = 'b1114'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 86519
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1116: TppDBCalc
                UserName = 'b1116'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94986
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1118: TppDBCalc
                UserName = 'b1118'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110861
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2113: TppDBCalc
                UserName = 'b2113'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137319
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2114: TppDBCalc
                UserName = 'b2114'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 145521
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2116: TppDBCalc
                UserName = 'b2116'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153988
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2118: TppDBCalc
                UserName = 'b2118'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169598
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3113: TppDBCalc
                UserName = 'b3113'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 196321
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3114: TppDBCalc
                UserName = 'b3114'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 204523
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3116: TppDBCalc
                UserName = 'b3116'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212990
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3118: TppDBCalc
                UserName = 'b3118'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228600
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1111: TppDBCalc
                UserName = 'DBCalc1501'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b1112: TppDBCalc
                UserName = 'b1112'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 72231
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b2111: TppDBCalc
                UserName = 'b2111'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124619
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b2112: TppDBCalc
                UserName = 'b2112'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131234
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b3111: TppDBCalc
                UserName = 'b3111'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183621
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b3112: TppDBCalc
                UserName = 'b3112'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 190236
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b1117: TppDBCalc
                UserName = 'b1117'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102394
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b2117: TppDBCalc
                UserName = 'b2117'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 161661
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b3117: TppDBCalc
                UserName = 'b3117'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 220398
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b1123: TppDBCalc
                UserName = 'b1123'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 78846
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1124: TppDBCalc
                UserName = 'b1124'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 87313
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1126: TppDBCalc
                UserName = 'b1126'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 95515
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1128: TppDBCalc
                UserName = 'b1128'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 111125
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2123: TppDBCalc
                UserName = 'b2123'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137848
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2124: TppDBCalc
                UserName = 'b2124'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 146050
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2126: TppDBCalc
                UserName = 'b2126'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 154782
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2128: TppDBCalc
                UserName = 'b2128'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 170127
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3123: TppDBCalc
                UserName = 'b3123'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 196850
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3124: TppDBCalc
                UserName = 'b3124'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 205317
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3126: TppDBCalc
                UserName = 'b3126'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 213519
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3128: TppDBCalc
                UserName = 'b3128'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 229130
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1121: TppDBCalc
                UserName = 'b1121'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 66146
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b1122: TppDBCalc
                UserName = 'b1122'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 72761
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b2121: TppDBCalc
                UserName = 'b2121'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 125148
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b2122: TppDBCalc
                UserName = 'b2122'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131763
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b3121: TppDBCalc
                UserName = 'b3121'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 184415
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b3122: TppDBCalc
                UserName = 'b3122'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 190765
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b1127: TppDBCalc
                UserName = 'b1127'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102923
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b2127: TppDBCalc
                UserName = 'b2127'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 161925
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b3127: TppDBCalc
                UserName = 'b3127'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 220928
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b1133: TppDBCalc
                UserName = 'b1133'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 79375
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1134: TppDBCalc
                UserName = 'b1134'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 87842
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1136: TppDBCalc
                UserName = 'b1136'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 96044
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1138: TppDBCalc
                UserName = 'b1138'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 111654
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2133: TppDBCalc
                UserName = 'b2133'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 138377
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2134: TppDBCalc
                UserName = 'b2134'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 146579
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2136: TppDBCalc
                UserName = 'b2136'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 155311
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2138: TppDBCalc
                UserName = 'b2138'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 170657
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3133: TppDBCalc
                UserName = 'b3133'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 197380
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3134: TppDBCalc
                UserName = 'b3134'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 205582
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3136: TppDBCalc
                UserName = 'b3136'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 214048
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3138: TppDBCalc
                UserName = 'b3138'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 229659
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1131: TppDBCalc
                UserName = 'b1131'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 66675
                mmTop = 10848
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b1132: TppDBCalc
                UserName = 'b1132'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 73290
                mmTop = 10848
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b2131: TppDBCalc
                UserName = 'b2131'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 125677
                mmTop = 10848
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b2132: TppDBCalc
                UserName = 'b2132'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 132292
                mmTop = 10848
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b3131: TppDBCalc
                UserName = 'b3131'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 184680
                mmTop = 10848
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b3132: TppDBCalc
                UserName = 'b3132'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 191294
                mmTop = 10848
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b1137: TppDBCalc
                UserName = 'b1137'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 103452
                mmTop = 10848
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b2137: TppDBCalc
                UserName = 'b2137'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 162454
                mmTop = 10848
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b3137: TppDBCalc
                UserName = 'b3137'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 221457
                mmTop = 10848
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b1143: TppDBCalc
                UserName = 'b1143'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 79904
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1144: TppDBCalc
                UserName = 'b1144'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 88106
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1146: TppDBCalc
                UserName = 'b1146'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 96573
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1148: TppDBCalc
                UserName = 'b1148'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 112184
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2143: TppDBCalc
                UserName = 'b2143'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 138907
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2144: TppDBCalc
                UserName = 'b2144'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 147109
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2146: TppDBCalc
                UserName = 'b2146'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 155575
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b2148: TppDBCalc
                UserName = 'b2148'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 171450
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3143: TppDBCalc
                UserName = 'b3143'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 197909
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3144: TppDBCalc
                UserName = 'b3144'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 206111
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3146: TppDBCalc
                UserName = 'b3146'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 214578
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b3148: TppDBCalc
                UserName = 'b3148'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 230188
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 7
              end
              object b1141: TppDBCalc
                UserName = 'b1141'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 67204
                mmTop = 14023
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b1142: TppDBCalc
                UserName = 'b1142'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 73819
                mmTop = 14023
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b2141: TppDBCalc
                UserName = 'b2141'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 126207
                mmTop = 14023
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b2142: TppDBCalc
                UserName = 'b2142'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 132821
                mmTop = 14023
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b3141: TppDBCalc
                UserName = 'b3141'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 185209
                mmTop = 14023
                mmWidth = 12912
                BandType = 5
                GroupNo = 7
              end
              object b3142: TppDBCalc
                UserName = 'b3142'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 191823
                mmTop = 14023
                mmWidth = 14309
                BandType = 5
                GroupNo = 7
              end
              object b1147: TppDBCalc
                UserName = 'b1147'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 103981
                mmTop = 14023
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b2147: TppDBCalc
                UserName = 'b2147'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 162984
                mmTop = 14023
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object b3147: TppDBCalc
                UserName = 'b3147'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 221986
                mmTop = 14023
                mmWidth = 15960
                BandType = 5
                GroupNo = 7
              end
              object ppLine18: TppLine
                UserName = 'Line18'
                Weight = 0.75
                mmHeight = 1852
                mmLeft = 794
                mmTop = 17463
                mmWidth = 267494
                BandType = 5
                GroupNo = 7
              end
              object bs4101: TppLabel
                UserName = 'bs4101'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 72496
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4102: TppLabel
                UserName = 'bs4102'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 80433
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4103: TppLabel
                UserName = 'bs4103'
                Caption = 'd1003'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 87313
                mmTop = 18785
                mmWidth = 5821
                BandType = 5
                GroupNo = 7
              end
              object bs4104: TppLabel
                UserName = 'bs4104'
                Caption = 'd1004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 95515
                mmTop = 18785
                mmWidth = 5821
                BandType = 5
                GroupNo = 7
              end
              object bs4106: TppLabel
                UserName = 'bs4106'
                Caption = 'd1006'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 103981
                mmTop = 18785
                mmWidth = 5821
                BandType = 5
                GroupNo = 7
              end
              object bs4107: TppLabel
                UserName = 'bs4107'
                Caption = 'd1004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 112184
                mmTop = 18785
                mmWidth = 5821
                BandType = 5
                GroupNo = 7
              end
              object bs4108: TppLabel
                UserName = 'bs4108'
                Caption = 'd1008'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 119856
                mmTop = 18785
                mmWidth = 5821
                BandType = 5
                GroupNo = 7
              end
              object bs4201: TppLabel
                UserName = 'bs4201'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 131498
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4202: TppLabel
                UserName = 'bs4202'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 139436
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4203: TppLabel
                UserName = 'bs4203'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 146844
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4204: TppLabel
                UserName = 'bs4204'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 154782
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4206: TppLabel
                UserName = 'bs4206'
                Caption = 'q0301'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 163248
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4207: TppLabel
                UserName = 'bs4207'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 171186
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4208: TppLabel
                UserName = 'bs4208'
                Caption = 'q0401'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 178859
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4301: TppLabel
                UserName = 'bs4301'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 190500
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4302: TppLabel
                UserName = 'bs4302'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 198438
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4303: TppLabel
                UserName = 'bs4303'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 205582
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4304: TppLabel
                UserName = 'bs4304'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 213519
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4306: TppLabel
                UserName = 'bs4306'
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
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4307: TppLabel
                UserName = 'bs4307'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 229923
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
              object bs4308: TppLabel
                UserName = 'bs4308'
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
                mmTop = 18785
                mmWidth = 5556
                BandType = 5
                GroupNo = 7
              end
            end
          end
          object ppGroup12: TppGroup
            BreakName = 'ACOL'
            DataPipeline = ppDBPipeline1
            ReprintOnSubsequentPage = False
            UserName = 'Group12'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand12: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 28310
              mmPrintPosition = 0
              object ppShape9: TppShape
                UserName = 'Shape9'
                mmHeight = 28310
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 3
                GroupNo = 8
              end
              object ppLabel318: TppLabel
                UserName = 'Label318'
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
                GroupNo = 8
              end
              object ppLabel319: TppLabel
                UserName = 'Label319'
                Caption = 'WO #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 13758
                mmTop = 1058
                mmWidth = 6085
                BandType = 3
                GroupNo = 8
              end
              object ppLabel320: TppLabel
                UserName = 'Label320'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 24606
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 8
              end
              object ppLabel321: TppLabel
                UserName = 'Label321'
                Caption = 'RWO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 1058
                mmWidth = 5556
                BandType = 3
                GroupNo = 8
              end
              object ppLabel322: TppLabel
                UserName = 'Label322'
                Caption = 'Clr '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 4498
                mmWidth = 3440
                BandType = 3
                GroupNo = 8
              end
              object ppLabel323: TppLabel
                UserName = 'Label323'
                Caption = 'Code '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 43656
                mmTop = 7938
                mmWidth = 5292
                BandType = 3
                GroupNo = 8
              end
              object ppLabel324: TppLabel
                UserName = 'Label324'
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 1058
                mmWidth = 5027
                BandType = 3
                GroupNo = 8
              end
              object ppLine13: TppLine
                UserName = 'Line13'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 28310
                mmLeft = 71173
                mmTop = 0
                mmWidth = 1852
                BandType = 3
                GroupNo = 8
              end
              object ppLine14: TppLine
                UserName = 'Line14'
                Position = lpLeft
                Weight = 0.75
                mmHeight = 28310
                mmLeft = 245005
                mmTop = 0
                mmWidth = 2117
                BandType = 3
                GroupNo = 8
              end
              object ppLabel325: TppLabel
                UserName = 'Label325'
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
                GroupNo = 8
              end
              object s3a03: TppLabel
                UserName = 's3a03'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 21431
                mmWidth = 3175
                BandType = 3
                GroupNo = 8
              end
              object s3a04: TppLabel
                UserName = 's3a04'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 21431
                mmWidth = 3175
                BandType = 3
                GroupNo = 8
              end
              object s3a06: TppLabel
                UserName = 's3a06'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 21431
                mmWidth = 3175
                BandType = 3
                GroupNo = 8
              end
              object s3a08: TppLabel
                UserName = 's3a08'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 21431
                mmWidth = 6085
                BandType = 3
                GroupNo = 8
              end
              object rwo603: TppLabel
                UserName = 'rwo603'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 198967
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object ppLabel331: TppLabel
                UserName = 'Label331'
                Caption = 'Qty  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 56886
                mmTop = 4498
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object ppLabel332: TppLabel
                UserName = 'Label332'
                Caption = 'Ttl  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 8
              end
              object ppLabel333: TppLabel
                UserName = 'Label333'
                Caption = 'Size '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 49742
                mmTop = 1058
                mmWidth = 4498
                BandType = 3
                GroupNo = 8
              end
              object ppLabel334: TppLabel
                UserName = 'Label334'
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
                GroupNo = 8
              end
              object ppLabel335: TppLabel
                UserName = 'Label335'
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 65617
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object ppLabel336: TppLabel
                UserName = 'Label336'
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
                GroupNo = 8
              end
              object s3b08: TppLabel
                UserName = 's3b08'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 237332
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s3a01: TppLabel
                UserName = 's3a01'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 21431
                mmWidth = 3704
                BandType = 3
                GroupNo = 8
              end
              object s3a02: TppLabel
                UserName = 's3a02'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 21431
                mmWidth = 5027
                BandType = 3
                GroupNo = 8
              end
              object s3b02: TppLabel
                UserName = 's3b02'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 198967
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object ppLabel341: TppLabel
                UserName = 'Label341'
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
                GroupNo = 8
              end
              object s3b01: TppLabel
                UserName = 's3b01'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s3a07: TppLabel
                UserName = 's3a07'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 21431
                mmWidth = 4763
                BandType = 3
                GroupNo = 8
              end
              object s3b07: TppLabel
                UserName = 's3b07'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 230982
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s3b03: TppLabel
                UserName = 's3b03'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 207169
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s3b04: TppLabel
                UserName = 's3b04'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 215371
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s3b06: TppLabel
                UserName = 's3b06'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 223838
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object rwo601: TppLabel
                UserName = 'rwo601'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 80963
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo602: TppLabel
                UserName = 'rwo602'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 139965
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object s1a01: TppLabel
                UserName = 's1a01'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 21431
                mmWidth = 3704
                BandType = 3
                GroupNo = 8
              end
              object s1a02: TppLabel
                UserName = 's1a02'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 21431
                mmWidth = 5027
                BandType = 3
                GroupNo = 8
              end
              object s1a03: TppLabel
                UserName = 's1a03'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 21431
                mmWidth = 3175
                BandType = 3
                GroupNo = 8
              end
              object s1a04: TppLabel
                UserName = 's1a04'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 21431
                mmWidth = 3175
                BandType = 3
                GroupNo = 8
              end
              object s1a06: TppLabel
                UserName = 's1a06'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 21431
                mmWidth = 3175
                BandType = 3
                GroupNo = 8
              end
              object s1a07: TppLabel
                UserName = 's1a07'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 21431
                mmWidth = 4763
                BandType = 3
                GroupNo = 8
              end
              object s1a08: TppLabel
                UserName = 's1a08'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 21431
                mmWidth = 6085
                BandType = 3
                GroupNo = 8
              end
              object s2a01: TppLabel
                UserName = 's2a01'
                ShiftWithParent = True
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 21431
                mmWidth = 3704
                BandType = 3
                GroupNo = 8
              end
              object s2a02: TppLabel
                UserName = 's2a02'
                ShiftWithParent = True
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 21431
                mmWidth = 5027
                BandType = 3
                GroupNo = 8
              end
              object s2a03: TppLabel
                UserName = 's2a03'
                ShiftWithParent = True
                Caption = 'T1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 21431
                mmWidth = 3175
                BandType = 3
                GroupNo = 8
              end
              object s2a04: TppLabel
                UserName = 's2a04'
                ShiftWithParent = True
                Caption = 'T2 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 21431
                mmWidth = 3175
                BandType = 3
                GroupNo = 8
              end
              object s2a06: TppLabel
                UserName = 's2a06'
                ShiftWithParent = True
                Caption = 'T3 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 21431
                mmWidth = 3175
                BandType = 3
                GroupNo = 8
              end
              object s2a07: TppLabel
                UserName = 's2a07'
                ShiftWithParent = True
                Caption = 'AQL '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 21431
                mmWidth = 4763
                BandType = 3
                GroupNo = 8
              end
              object s2a08: TppLabel
                UserName = 's2a08'
                ShiftWithParent = True
                Caption = 'Ex-fty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 21431
                mmWidth = 6085
                BandType = 3
                GroupNo = 8
              end
              object s1b01: TppLabel
                UserName = 's1b01'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 74083
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s1b02: TppLabel
                UserName = 's1b02'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 80963
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s1b03: TppLabel
                UserName = 's1b03'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 89165
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s1b04: TppLabel
                UserName = 's1b04'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 97367
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s1b06: TppLabel
                UserName = 's1b06'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 105834
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s1b07: TppLabel
                UserName = 's1b07'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112977
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s1b08: TppLabel
                UserName = 's1b08'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 119327
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s2b01: TppLabel
                UserName = 's2b01'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 133086
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s2b02: TppLabel
                UserName = 's2b02'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 139965
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s2b03: TppLabel
                UserName = 's2b03'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 148167
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s2b04: TppLabel
                UserName = 's2b04'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 156369
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s2b06: TppLabel
                UserName = 's2b06'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 164836
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s2b07: TppLabel
                UserName = 's2b07'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 171980
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object s2b08: TppLabel
                UserName = 's2b08'
                ShiftWithParent = True
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 178330
                mmTop = 24871
                mmWidth = 3969
                BandType = 3
                GroupNo = 8
              end
              object ppLabel378: TppLabel
                UserName = 'Label378'
                Caption = 'Cust Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 31750
                mmTop = 1058
                mmWidth = 10848
                BandType = 3
                GroupNo = 8
              end
              object rwo611: TppLabel
                UserName = 'rwo611'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 81492
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo612: TppLabel
                UserName = 'rwo612'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 140494
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo613: TppLabel
                UserName = 'rwo613'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 199496
                mmTop = 4498
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo621: TppLabel
                UserName = 'rwo621'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 82021
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo622: TppLabel
                UserName = 'rwo622'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 141023
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo623: TppLabel
                UserName = 'rwo623'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 200025
                mmTop = 7673
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo631: TppLabel
                UserName = 'rwo631'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 82550
                mmTop = 11113
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo632: TppLabel
                UserName = 'rwo632'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 141552
                mmTop = 11113
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo633: TppLabel
                UserName = 'rwo633'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 200555
                mmTop = 11113
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo641: TppLabel
                UserName = 'rwo641'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 83079
                mmTop = 14552
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo642: TppLabel
                UserName = 'rwo642'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 142082
                mmTop = 14552
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo643: TppLabel
                UserName = 'rwo643'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 201084
                mmTop = 14552
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo651: TppLabel
                UserName = 'rwo651'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 83608
                mmTop = 17992
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo652: TppLabel
                UserName = 'rwo652'
                ShiftWithParent = True
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 142611
                mmTop = 17992
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object rwo653: TppLabel
                UserName = 'rwo653'
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 201613
                mmTop = 17992
                mmWidth = 7144
                BandType = 3
                GroupNo = 8
              end
              object ppLabel136: TppLabel
                UserName = 'Label1302'
                Caption = 'Style  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 43656
                mmTop = 1058
                mmWidth = 5821
                BandType = 3
                GroupNo = 9
              end
            end
            object ppGroupFooterBand12: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 29369
              mmPrintPosition = 0
              object ppShape14: TppShape
                UserName = 'Shape14'
                mmHeight = 26194
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 5
                GroupNo = 8
              end
              object ppLabel486: TppLabel
                UserName = 'Label486'
                Caption = 'Sub total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 1323
                mmTop = 21960
                mmWidth = 8731
                BandType = 5
                GroupNo = 8
              end
              object ppDBCalc309: TppDBCalc
                UserName = 'DBCalc309'
                AutoSize = True
                DataField = 'QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 50800
                mmTop = 21960
                mmWidth = 10075
                BandType = 5
                GroupNo = 8
              end
              object bq006: TppDBCalc
                UserName = 'bq006'
                AutoSize = True
                DataField = 'SQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 58738
                mmTop = 21960
                mmWidth = 11472
                BandType = 5
                GroupNo = 8
              end
              object bd006: TppDBCalc
                UserName = 'bd006'
                AutoSize = True
                DataField = 'DIFF'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 242888
                mmTop = 21960
                mmWidth = 10456
                BandType = 5
                GroupNo = 8
              end
              object b1153: TppDBCalc
                UserName = 'b1153'
                AutoSize = True
                DataField = 'Q1T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 77788
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1154: TppDBCalc
                UserName = 'b1154'
                AutoSize = True
                DataField = 'Q1T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 85990
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1156: TppDBCalc
                UserName = 'b1156'
                AutoSize = True
                DataField = 'Q1T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94456
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1158: TppDBCalc
                UserName = 'b1158'
                AutoSize = True
                DataField = 'Q1T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110331
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2153: TppDBCalc
                UserName = 'b2153'
                AutoSize = True
                DataField = 'Q2T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137054
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2154: TppDBCalc
                UserName = 'b2154'
                AutoSize = True
                DataField = 'Q2T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 144992
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2156: TppDBCalc
                UserName = 'b2156'
                AutoSize = True
                DataField = 'Q2T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153459
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2158: TppDBCalc
                UserName = 'b2158'
                AutoSize = True
                DataField = 'Q2T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169069
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3153: TppDBCalc
                UserName = 'b3153'
                AutoSize = True
                DataField = 'Q3T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 195792
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3154: TppDBCalc
                UserName = 'b3154'
                AutoSize = True
                DataField = 'Q3T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 203994
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3156: TppDBCalc
                UserName = 'b3156'
                AutoSize = True
                DataField = 'Q3T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212461
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3158: TppDBCalc
                UserName = 'b3158'
                AutoSize = True
                DataField = 'Q3T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228071
                mmTop = 1323
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1151: TppDBCalc
                UserName = 'b1151'
                AutoSize = True
                DataField = 'Q1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65088
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b1152: TppDBCalc
                UserName = 'b1152'
                AutoSize = True
                DataField = 'Q1PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 71702
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b2151: TppDBCalc
                UserName = 'b2151'
                AutoSize = True
                DataField = 'Q2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124090
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b2152: TppDBCalc
                UserName = 'b2152'
                AutoSize = True
                DataField = 'Q2PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 130704
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b3151: TppDBCalc
                UserName = 'b3151'
                AutoSize = True
                DataField = 'Q3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183092
                mmTop = 1323
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b3152: TppDBCalc
                UserName = 'b3152'
                AutoSize = True
                DataField = 'Q3PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 189707
                mmTop = 1323
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object bp006: TppLabel
                UserName = 'bp006'
                Caption = 'bp006'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 256382
                mmTop = 21960
                mmWidth = 5821
                BandType = 5
                GroupNo = 8
              end
              object b1157: TppDBCalc
                UserName = 'b1157'
                AutoSize = True
                DataField = 'Q1AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102129
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b2157: TppDBCalc
                UserName = 'b2157'
                AutoSize = True
                DataField = 'Q2AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 160867
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b3157: TppDBCalc
                UserName = 'b3157'
                AutoSize = True
                DataField = 'Q3AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 219869
                mmTop = 1323
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b1163: TppDBCalc
                UserName = 'b1163'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 78317
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1164: TppDBCalc
                UserName = 'b1164'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 86519
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1166: TppDBCalc
                UserName = 'b1166'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 94986
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1168: TppDBCalc
                UserName = 'b1168'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 110861
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2163: TppDBCalc
                UserName = 'b2163'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137319
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2164: TppDBCalc
                UserName = 'DBCalc2301'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 145521
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2166: TppDBCalc
                UserName = 'b2166'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 153988
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2168: TppDBCalc
                UserName = 'b2168'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 169598
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3163: TppDBCalc
                UserName = 'b3163'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 196321
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3164: TppDBCalc
                UserName = 'b3164'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 204523
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3166: TppDBCalc
                UserName = 'b3166'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 212990
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3168: TppDBCalc
                UserName = 'b3168'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 228600
                mmTop = 4498
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1161: TppDBCalc
                UserName = 'b1161'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 65617
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b1162: TppDBCalc
                UserName = 'b1162'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 72231
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b2161: TppDBCalc
                UserName = 'b2161'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 124619
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b2162: TppDBCalc
                UserName = 'b2162'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131234
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b3161: TppDBCalc
                UserName = 'b3161'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 183621
                mmTop = 4498
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b3162: TppDBCalc
                UserName = 'b3162'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 190236
                mmTop = 4498
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b1167: TppDBCalc
                UserName = 'b1167'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102394
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b2167: TppDBCalc
                UserName = 'b2167'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 161661
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b3167: TppDBCalc
                UserName = 'b3167'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 220398
                mmTop = 4498
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b1173: TppDBCalc
                UserName = 'b1173'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 78846
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1174: TppDBCalc
                UserName = 'b1174'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 87313
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1176: TppDBCalc
                UserName = 'b1176'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 95515
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1178: TppDBCalc
                UserName = 'b1178'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 111125
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2173: TppDBCalc
                UserName = 'b2173'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 137848
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2174: TppDBCalc
                UserName = 'b2174'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 146050
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2176: TppDBCalc
                UserName = 'b2176'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 154782
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2178: TppDBCalc
                UserName = 'b2178'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 170127
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3173: TppDBCalc
                UserName = 'b3173'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 196850
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3174: TppDBCalc
                UserName = 'b3174'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 205317
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3176: TppDBCalc
                UserName = 'b3176'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 213519
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3178: TppDBCalc
                UserName = 'b3178'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 229130
                mmTop = 7673
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1171: TppDBCalc
                UserName = 'b1171'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 66146
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b1172: TppDBCalc
                UserName = 'b1172'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 72761
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b2171: TppDBCalc
                UserName = 'b2171'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 125148
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b2172: TppDBCalc
                UserName = 'b2172'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131763
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b3171: TppDBCalc
                UserName = 'b3171'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 184415
                mmTop = 7673
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b3172: TppDBCalc
                UserName = 'b3172'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 190765
                mmTop = 7673
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b1177: TppDBCalc
                UserName = 'b1177'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102923
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b2177: TppDBCalc
                UserName = 'b2177'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 161925
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b3177: TppDBCalc
                UserName = 'b3177'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 220928
                mmTop = 7673
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b1183: TppDBCalc
                UserName = 'b1183'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 79375
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1184: TppDBCalc
                UserName = 'b1184'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 87842
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1186: TppDBCalc
                UserName = 'b1186'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 96044
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1188: TppDBCalc
                UserName = 'b1188'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 111654
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2183: TppDBCalc
                UserName = 'b2183'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 138377
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2184: TppDBCalc
                UserName = 'b2184'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 146579
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2186: TppDBCalc
                UserName = 'b2186'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 155311
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2188: TppDBCalc
                UserName = 'b2188'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 170657
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3183: TppDBCalc
                UserName = 'b3183'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 197380
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3184: TppDBCalc
                UserName = 'b3184'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 205582
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3186: TppDBCalc
                UserName = 'b3186'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 214048
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3188: TppDBCalc
                UserName = 'b3188'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 229659
                mmTop = 10848
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1181: TppDBCalc
                UserName = 'b1181'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 66675
                mmTop = 10848
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b1182: TppDBCalc
                UserName = 'b1182'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 73290
                mmTop = 10848
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b2181: TppDBCalc
                UserName = 'b2181'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 125677
                mmTop = 10848
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b2182: TppDBCalc
                UserName = 'b2182'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 132292
                mmTop = 10848
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b3181: TppDBCalc
                UserName = 'b3181'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 184680
                mmTop = 10848
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b3182: TppDBCalc
                UserName = 'b3182'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 191294
                mmTop = 10848
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b1187: TppDBCalc
                UserName = 'b1187'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 103452
                mmTop = 10848
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b2187: TppDBCalc
                UserName = 'b2187'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 162454
                mmTop = 10848
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b3187: TppDBCalc
                UserName = 'b3187'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 221457
                mmTop = 10848
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b1193: TppDBCalc
                UserName = 'b1193'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 79904
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1194: TppDBCalc
                UserName = 'b1194'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 88106
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1196: TppDBCalc
                UserName = 'b1196'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 96573
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1198: TppDBCalc
                UserName = 'b1198'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 112184
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2193: TppDBCalc
                UserName = 'b2193'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 138907
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2194: TppDBCalc
                UserName = 'b2194'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 147109
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2196: TppDBCalc
                UserName = 'b2196'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 155575
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2198: TppDBCalc
                UserName = 'b2198'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 171450
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3193: TppDBCalc
                UserName = 'b3193'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 197909
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3194: TppDBCalc
                UserName = 'b3194'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 206111
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3196: TppDBCalc
                UserName = 'b3196'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 214578
                mmTop = 14023
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3198: TppDBCalc
                UserName = 'b3198'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 230188
                mmTop = 13758
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1191: TppDBCalc
                UserName = 'b1191'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 67204
                mmTop = 14023
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b1192: TppDBCalc
                UserName = 'b1192'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 73819
                mmTop = 14023
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b2191: TppDBCalc
                UserName = 'b2191'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 126207
                mmTop = 14023
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b2192: TppDBCalc
                UserName = 'b2192'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 132821
                mmTop = 14023
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b3191: TppDBCalc
                UserName = 'b3191'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 185209
                mmTop = 14023
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b3192: TppDBCalc
                UserName = 'b3192'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 191823
                mmTop = 14023
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b1197: TppDBCalc
                UserName = 'b1197'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 103981
                mmTop = 14023
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b2197: TppDBCalc
                UserName = 'b2197'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 162984
                mmTop = 14023
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b3197: TppDBCalc
                UserName = 'b3197'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 221986
                mmTop = 14023
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b1203: TppDBCalc
                UserName = 'b1203'
                AutoSize = True
                DataField = 'Q4T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 80433
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1204: TppDBCalc
                UserName = 'b1204'
                AutoSize = True
                DataField = 'Q4T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 88636
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1206: TppDBCalc
                UserName = 'b1206'
                AutoSize = True
                DataField = 'Q4T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 97102
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1208: TppDBCalc
                UserName = 'b1208'
                AutoSize = True
                DataField = 'Q4T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 112713
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2203: TppDBCalc
                UserName = 'b2203'
                AutoSize = True
                DataField = 'Q5T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 139700
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2204: TppDBCalc
                UserName = 'b2204'
                AutoSize = True
                DataField = 'Q5T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 147638
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2206: TppDBCalc
                UserName = 'b2206'
                AutoSize = True
                DataField = 'Q5T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 156104
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b2208: TppDBCalc
                UserName = 'b2208'
                AutoSize = True
                DataField = 'Q5T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 171715
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3203: TppDBCalc
                UserName = 'b3203'
                AutoSize = True
                DataField = 'Q6T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 198438
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3204: TppDBCalc
                UserName = 'b3204'
                AutoSize = True
                DataField = 'Q6T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 206640
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3206: TppDBCalc
                UserName = 'b3206'
                AutoSize = True
                DataField = 'Q6T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 215371
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b3208: TppDBCalc
                UserName = 'b3208'
                AutoSize = True
                DataField = 'Q6T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 230717
                mmTop = 17198
                mmWidth = 15409
                BandType = 5
                GroupNo = 8
              end
              object b1201: TppDBCalc
                UserName = 'b1201'
                AutoSize = True
                DataField = 'Q4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 67733
                mmTop = 17198
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b1202: TppDBCalc
                UserName = 'b1202'
                AutoSize = True
                DataField = 'Q4PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 74348
                mmTop = 17198
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b2201: TppDBCalc
                UserName = 'b2201'
                AutoSize = True
                DataField = 'Q5QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 126736
                mmTop = 17198
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b2202: TppDBCalc
                UserName = 'b2202'
                AutoSize = True
                DataField = 'Q5PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 133350
                mmTop = 17198
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b3201: TppDBCalc
                UserName = 'b3201'
                AutoSize = True
                DataField = 'Q6QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 185738
                mmTop = 17198
                mmWidth = 12912
                BandType = 5
                GroupNo = 8
              end
              object b3202: TppDBCalc
                UserName = 'b3202'
                AutoSize = True
                DataField = 'Q6PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 192352
                mmTop = 17198
                mmWidth = 14309
                BandType = 5
                GroupNo = 8
              end
              object b1207: TppDBCalc
                UserName = 'b1207'
                AutoSize = True
                DataField = 'Q4AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 104511
                mmTop = 17198
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b2207: TppDBCalc
                UserName = 'b2207'
                AutoSize = True
                DataField = 'Q5AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 163777
                mmTop = 17198
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object b3207: TppDBCalc
                UserName = 'b3207'
                AutoSize = True
                DataField = 'Q6AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 222515
                mmTop = 17198
                mmWidth = 15960
                BandType = 5
                GroupNo = 8
              end
              object ppLine19: TppLine
                UserName = 'Line19'
                Weight = 0.75
                mmHeight = 1852
                mmLeft = 794
                mmTop = 20638
                mmWidth = 267494
                BandType = 5
                GroupNo = 8
              end
              object bs5101: TppLabel
                UserName = 'bs5101'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 72496
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5102: TppLabel
                UserName = 'bs5102'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 80433
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5103: TppLabel
                UserName = 'bs5103'
                Caption = 'd1003'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 87313
                mmTop = 21960
                mmWidth = 5821
                BandType = 5
                GroupNo = 8
              end
              object bs5104: TppLabel
                UserName = 'bs5104'
                Caption = 'd1004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 95515
                mmTop = 21960
                mmWidth = 5821
                BandType = 5
                GroupNo = 8
              end
              object bs5106: TppLabel
                UserName = 'bs5106'
                Caption = 'd1006'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 103981
                mmTop = 21960
                mmWidth = 5821
                BandType = 5
                GroupNo = 8
              end
              object bs5107: TppLabel
                UserName = 'bs5107'
                Caption = 'd1004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 112184
                mmTop = 21960
                mmWidth = 5821
                BandType = 5
                GroupNo = 8
              end
              object bs5108: TppLabel
                UserName = 'bs5108'
                Caption = 'd1008'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 119856
                mmTop = 21960
                mmWidth = 5821
                BandType = 5
                GroupNo = 8
              end
              object bs5201: TppLabel
                UserName = 'bs5201'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 131498
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5202: TppLabel
                UserName = 'bs5202'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 139436
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5203: TppLabel
                UserName = 'bs5203'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 146844
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5204: TppLabel
                UserName = 'bs5204'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 154782
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5206: TppLabel
                UserName = 'bs5206'
                Caption = 'q0301'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 163248
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5207: TppLabel
                UserName = 'bs5207'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 171186
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5208: TppLabel
                UserName = 'bs5208'
                Caption = 'q0401'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 178859
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5301: TppLabel
                UserName = 'bs5301'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 190500
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5302: TppLabel
                UserName = 'bs5302'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 198438
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5303: TppLabel
                UserName = 'bs5303'
                Caption = 'q0101'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 205582
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5304: TppLabel
                UserName = 'bs5304'
                Caption = 'q0201'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 213784
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5306: TppLabel
                UserName = 'bs5306'
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
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5307: TppLabel
                UserName = 'bs5307'
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
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
              object bs5308: TppLabel
                UserName = 'bs5308'
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
                mmTop = 21960
                mmWidth = 5556
                BandType = 5
                GroupNo = 8
              end
            end
          end
        end
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'RWO dependent with SKU : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 5556
        mmTop = 2117
        mmWidth = 37761
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline2
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLabel26: TppLabel
          UserName = 'Label18'
          Caption = 'Summary : - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1058
          mmTop = 1588
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppLabel67: TppLabel
          UserName = 'Label67'
          Caption = 'Manifest '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 2646
          mmTop = 6615
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
        end
        object bcn002: TppLabel
          UserName = 'bcn002'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 12700
          mmTop = 6615
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppLabel71: TppLabel
          UserName = 'Label71'
          Caption = 'Ship mode '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 33602
          mmTop = 6615
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object shpm002: TppLabel
          UserName = 'shpm002'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 45773
          mmTop = 6615
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          Caption = 'Ex-fty Date / Time '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 73025
          mmTop = 6615
          mmWidth = 17526
          BandType = 3
          GroupNo = 0
        end
        object exfty004: TppLabel
          UserName = 'exfty004'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 92075
          mmTop = 6615
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel75: TppLabel
          UserName = 'Label75'
          Caption = '/ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 106363
          mmTop = 6615
          mmWidth = 1058
          BandType = 3
          GroupNo = 0
        end
        object extm002: TppLabel
          UserName = 'extm002'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 109009
          mmTop = 6615
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 69321
        mmPrintPosition = 0
        object ppLabel30: TppLabel
          UserName = 'Label30'
          Caption = 'Notepad: - <Fty> '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1323
          mmTop = 22490
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
        end
        object ppMemo1: TppMemo
          UserName = 'Memo1'
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 17198
          mmLeft = 1323
          mmTop = 26988
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
          Caption = 'Notepad: - <Head office> '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1323
          mmTop = 46038
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppMemo2: TppMemo
          UserName = 'Memo2'
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Stretch = True
          Transparent = True
          mmHeight = 17463
          mmLeft = 1323
          mmTop = 51065
          mmWidth = 263790
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object grade001: TppLabel
          UserName = 'grade001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 1588
          mmTop = 1588
          mmWidth = 14817
          BandType = 5
          GroupNo = 0
        end
        object ppShape19: TppShape
          UserName = 'Shape19'
          mmHeight = 13229
          mmLeft = 1323
          mmTop = 7144
          mmWidth = 264584
          BandType = 5
          GroupNo = 0
        end
        object ppRichText1: TppRichText
          UserName = 'RichText1'
          Caption = 'RichText1'
          RichText = 
            '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
            '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
            'k;}{\f2\fnil\fcharset136 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slm' +
            'ult1\lang1028\f0\fs12 TIP\par'#13#10'\pard\f1\'#39'd6     \ul\f2 Grade \ul' +
            'none      \ul Comment\ulnone           \ul Diff Qty(PDN Vs Ex-ft' +
            'y) by %\ulnone       \ul Explanation\ulnone                     ' +
            '      \ul Grade \ulnone      \ul Comment\ulnone           \ul Di' +
            'ff Qty(PDN Vs Ex-fty) by %\ulnone           \ul Explanation\ulno' +
            'ne                                                             \' +
            'ul Grade \ulnone      \ul Comment\ulnone           \ul Diff Qty(' +
            'PDN Vs Ex-fty) by %\ulnone               \ul Explanation\ulnone ' +
            '  \f1\par'#13#10'\f2         \f1  \f2 '#39'A'#39'          Excellent          ' +
            '     >=99%  or <=101%                           N/A             ' +
            '                 '#39'C'#39'          Very Good             >=97%  or <=' +
            '103%                           N/A                              ' +
            '                                      '#39'F'#39'          Fail         ' +
            '               >=95%  or <=105%                           Must p' +
            'rovide\par'#13#10'         '#39'B'#39'          Commendable        >=98%  or <' +
            '=102%                           N/A                             ' +
            ' '#39'D'#39'          Good                     >=96%  or <=104%         ' +
            '                  Suggest to add the explanation                ' +
            '              '#39'U'#39'          Un-classified         < 95%  or >105%' +
            '                              Must provide\par'#13#10'        \par'#13#10'  ' +
            '       \par'#13#10'         \par'#13#10'         \f0\par'#13#10'}'#13#10
          mmHeight = 11642
          mmLeft = 1852
          mmTop = 7938
          mmWidth = 263261
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
        end
      end
    end
    object ppGroup14: TppGroup
      BreakName = 'SEQ1'
      DataPipeline = ppDBPipeline2
      UserName = 'Group14'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand14: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12171
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 11377
          mmLeft = 794
          mmTop = 794
          mmWidth = 267494
          BandType = 3
          GroupNo = 1
        end
        object ppLabel17: TppLabel
          UserName = 'Label1'
          Caption = 'Project # '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 1852
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel18: TppLabel
          UserName = 'Label2'
          Caption = 'WO #  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 14023
          mmTop = 1852
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'RWO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 25135
          mmTop = 1852
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'RWO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 57415
          mmTop = 1852
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = 'Style  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 44186
          mmTop = 1852
          mmWidth = 5821
          BandType = 3
          GroupNo = 1
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'Clr Code '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 44186
          mmTop = 5292
          mmWidth = 8996
          BandType = 3
          GroupNo = 1
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          Caption = 'PDN '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 66146
          mmTop = 1852
          mmWidth = 5027
          BandType = 3
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 11377
          mmLeft = 71702
          mmTop = 794
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 11377
          mmLeft = 245534
          mmTop = 794
          mmWidth = 2117
          BandType = 3
          GroupNo = 1
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          Caption = 'Ex-fty) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 247650
          mmTop = 8731
          mmWidth = 6615
          BandType = 3
          GroupNo = 1
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          Caption = 'Qty  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 57415
          mmTop = 5292
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          Caption = 'Ttl  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 66146
          mmTop = 5292
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          Caption = 'Diff Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 246328
          mmTop = 1852
          mmWidth = 7673
          BandType = 3
          GroupNo = 1
        end
        object ppLabel41: TppLabel
          UserName = 'Label101'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 66146
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          Caption = '(PDN Vs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 246328
          mmTop = 5292
          mmWidth = 8731
          BandType = 3
          GroupNo = 1
        end
        object ppLabel47: TppLabel
          UserName = 'Label47'
          Caption = '(% ) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 257440
          mmTop = 5292
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
        end
        object srwo01: TppLabel
          UserName = 'srwo01'
          Caption = 'RWO 1 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 2646
          mmLeft = 81492
          mmTop = 1852
          mmWidth = 7144
          BandType = 3
          GroupNo = 1
        end
        object srwo02: TppLabel
          UserName = 'srwo02'
          Caption = 'RWO 1 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 2646
          mmLeft = 147109
          mmTop = 1852
          mmWidth = 7144
          BandType = 3
          GroupNo = 1
        end
        object ss101: TppLabel
          UserName = 'ss101'
          Caption = 'QN  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 82815
          mmTop = 5292
          mmWidth = 4233
          BandType = 3
          GroupNo = 1
        end
        object ss103: TppLabel
          UserName = 'ss103'
          Caption = 'T1 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 98954
          mmTop = 5292
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ss104: TppLabel
          UserName = 'ss104'
          Caption = 'T2 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 107156
          mmTop = 5292
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ss106: TppLabel
          UserName = 'ss106'
          Caption = 'T3 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 115623
          mmTop = 5292
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ss107: TppLabel
          UserName = 'ss107'
          Caption = 'AQL '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 122767
          mmTop = 5292
          mmWidth = 4763
          BandType = 3
          GroupNo = 1
        end
        object ss108: TppLabel
          UserName = 'ss108'
          Caption = 'Ex-fty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 129117
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ss201: TppLabel
          UserName = 'ss201'
          Caption = 'QN '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 150284
          mmTop = 5292
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ss203: TppLabel
          UserName = 'ss203'
          Caption = 'T1 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 166159
          mmTop = 5292
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ss204: TppLabel
          UserName = 'ss204'
          Caption = 'T2 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 174361
          mmTop = 5292
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ss206: TppLabel
          UserName = 'ss206'
          Caption = 'T3 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 182827
          mmTop = 5292
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ss207: TppLabel
          UserName = 'ss207'
          Caption = 'AQL '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 189971
          mmTop = 5292
          mmWidth = 4763
          BandType = 3
          GroupNo = 1
        end
        object ss208: TppLabel
          UserName = 'ss208'
          Caption = 'Ex-fty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 196321
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ss111: TppLabel
          UserName = 'ss111'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 82815
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss113: TppLabel
          UserName = 'ss113'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 98954
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss114: TppLabel
          UserName = 'ss114'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 107156
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss116: TppLabel
          UserName = 'ss116'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 115623
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss117: TppLabel
          UserName = 'ss117'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 122767
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss118: TppLabel
          UserName = 'ss118'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 129117
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss211: TppLabel
          UserName = 'ss211'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 150284
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss213: TppLabel
          UserName = 'ss213'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 166159
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss214: TppLabel
          UserName = 'ss214'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 174361
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss216: TppLabel
          UserName = 'ss216'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 182827
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss217: TppLabel
          UserName = 'ss217'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 189971
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss218: TppLabel
          UserName = 'ss218'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 196321
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'Cust Style  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 31750
          mmTop = 1852
          mmWidth = 10848
          BandType = 3
          GroupNo = 1
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          Caption = 'PDN  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 73819
          mmTop = 5292
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLabel54: TppLabel
          UserName = 'Label54'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 73819
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss202: TppLabel
          UserName = 'ss202'
          Caption = 'PDN  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 141552
          mmTop = 5292
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ss212: TppLabel
          UserName = 'ss212'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 141552
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 71702
          mmTop = 4763
          mmWidth = 133350
          BandType = 3
          GroupNo = 1
        end
        object ppLabel1: TppLabel
          UserName = 'Label3'
          Caption = 'QN '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 161132
          mmTop = 1852
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ss105: TppLabel
          UserName = 'ss105'
          Caption = 'Picked  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 89694
          mmTop = 5292
          mmWidth = 7578
          BandType = 3
          GroupNo = 1
        end
        object ss115: TppLabel
          UserName = 'ss115'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 89694
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss205: TppLabel
          UserName = 'ss205'
          Caption = 'Picked  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 156898
          mmTop = 5292
          mmWidth = 7673
          BandType = 3
          GroupNo = 1
        end
        object ss215: TppLabel
          UserName = 'ss215'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 156898
          mmTop = 8731
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLine21: TppLine
          UserName = 'Line21'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 11377
          mmLeft = 204788
          mmTop = 794
          mmWidth = 2117
          BandType = 3
          GroupNo = 1
        end
        object ppLabel53: TppLabel
          UserName = 'Label401'
          Caption = 'Shipped '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 205582
          mmTop = 1852
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 205582
          mmTop = 5292
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel70: TppLabel
          UserName = 'Label70'
          Caption = 'Sample '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 216959
          mmTop = 1852
          mmWidth = 7747
          BandType = 3
          GroupNo = 1
        end
        object ppLabel72: TppLabel
          UserName = 'Label72'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 216959
          mmTop = 5292
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          Caption = 'Write-off '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 227278
          mmTop = 1852
          mmWidth = 8805
          BandType = 3
          GroupNo = 1
        end
        object ppLabel76: TppLabel
          UserName = 'Label76'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 227278
          mmTop = 5292
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel77: TppLabel
          UserName = 'Label77'
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 238655
          mmTop = 5292
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel78: TppLabel
          UserName = 'Label701'
          Caption = 'Lost '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 238655
          mmTop = 1852
          mmWidth = 4614
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand14: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          mmHeight = 5027
          mmLeft = 794
          mmTop = 0
          mmWidth = 267494
          BandType = 5
          GroupNo = 1
        end
        object ppLabel96: TppLabel
          UserName = 'Label96'
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
          GroupNo = 1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          AutoSize = True
          DataField = 'QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup14
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 51573
          mmTop = 1323
          mmWidth = 10075
          BandType = 5
          GroupNo = 1
        end
        object sbq01: TppDBCalc
          UserName = 'sbq01'
          AutoSize = True
          DataField = 'SQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup14
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 59436
          mmTop = 1323
          mmWidth = 11472
          BandType = 5
          GroupNo = 1
        end
        object sbd01: TppDBCalc
          UserName = 'sbd01'
          AutoSize = True
          DataField = 'DIFF'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup14
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 243809
          mmTop = 1323
          mmWidth = 10456
          BandType = 5
          GroupNo = 1
        end
        object sbp01: TppLabel
          UserName = 'sbp01'
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
          GroupNo = 1
        end
        object sb101: TppLabel
          UserName = 'sb101'
          Caption = 'q0101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 81492
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object sb103: TppLabel
          UserName = 'sb103'
          Caption = 'd1003'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 97102
          mmTop = 1323
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object sb104: TppLabel
          UserName = 'sb104'
          Caption = 'd1004'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 105304
          mmTop = 1323
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object sb106: TppLabel
          UserName = 'sb106'
          Caption = 'd1006'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 113771
          mmTop = 1323
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object sb107: TppLabel
          UserName = 'sb107'
          Caption = 'd1004'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 121444
          mmTop = 1323
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object sb108: TppLabel
          UserName = 'sb108'
          Caption = 'd1008'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 129117
          mmTop = 1323
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object sb201: TppLabel
          UserName = 'sb201'
          Caption = 'q0101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 148696
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object sb203: TppLabel
          UserName = 'sb203'
          Caption = 'q0101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 164571
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object sb204: TppLabel
          UserName = 'sb204'
          Caption = 'q0201'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 172773
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object sb206: TppLabel
          UserName = 'sb206'
          Caption = 'q0301'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 181240
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object sb207: TppLabel
          UserName = 'sb207'
          Caption = 'q0201'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 188384
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object sb208: TppLabel
          UserName = 'sb208'
          Caption = 'q0401'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 196850
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object sb102: TppLabel
          UserName = 'sb102'
          Caption = 'q0101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 73819
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object sb202: TppLabel
          UserName = 'sb202'
          Caption = 'q0101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 141552
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object ttl001: TppLabel
          UserName = 'ttl001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1323
          mmTop = 6350
          mmWidth = 21960
          BandType = 5
          GroupNo = 1
        end
        object diff002: TppLabel
          UserName = 'diff002'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 248709
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object sb105: TppLabel
          UserName = 'sb105'
          Caption = 'q0101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 89694
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object sb205: TppLabel
          UserName = 'sb205'
          Caption = 'q0101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 157427
          mmTop = 1323
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'RWO'
      DataPipeline = ppDBPipeline2
      ReprintOnSubsequentPage = False
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
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ACOL'
      DataPipeline = ppDBPipeline2
      ReprintOnSubsequentPage = False
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
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
end
