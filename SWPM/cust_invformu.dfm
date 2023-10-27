object frmcust_inv: Tfrmcust_inv
  Left = 192
  Top = 114
  Width = 713
  Height = 507
  Caption = 'Customer Information for Commercial Invoice'
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
    Top = 24
    Width = 24
    Height = 13
    Caption = 'Cust '
  end
  object Label2: TLabel
    Left = 472
    Top = 56
    Width = 74
    Height = 13
    Caption = 'Payment Term  '
  end
  object Label3: TLabel
    Left = 472
    Top = 96
    Width = 47
    Height = 13
    Caption = 'Incoterm  '
  end
  object Label4: TLabel
    Left = 472
    Top = 136
    Width = 84
    Height = 13
    Caption = 'Country of Origin  '
  end
  object Label5: TLabel
    Left = 472
    Top = 256
    Width = 79
    Height = 13
    Caption = 'Shipping Marks  '
  end
  object Label6: TLabel
    Left = 472
    Top = 176
    Width = 72
    Height = 13
    Caption = 'Port of Loading'
  end
  object Label7: TLabel
    Left = 472
    Top = 216
    Width = 88
    Height = 13
    Caption = 'Port of Discharge  '
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 56
    Width = 425
    Height = 169
    DataField = 'ADDR'
    DataSource = DataSource1
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object DBMemo2: TDBMemo
    Left = 24
    Top = 240
    Width = 425
    Height = 169
    DataField = 'MEMO1'
    DataSource = DataSource1
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 24
    Width = 121
    Height = 21
    DataField = 'CUST'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 472
    Top = 72
    Width = 209
    Height = 21
    DataField = 'PAYTERM'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 472
    Top = 112
    Width = 209
    Height = 21
    DataField = 'INCOTERM'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 472
    Top = 152
    Width = 209
    Height = 21
    DataField = 'COUNTRY'
    DataSource = DataSource1
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 424
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 6
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      2222200000000002222203300007030222220330000703000222033000000303
      0222033333333303000203300000330303020307777703030302030777770303
      0302030777770003030203077777070303020000000000000302220307777707
      0302220000000000000222220307777707022222000000000002}
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 424
    Width = 73
    Height = 25
    TabOrder = 7
    Kind = bkClose
  end
  object DBMemo3: TDBMemo
    Left = 472
    Top = 272
    Width = 209
    Height = 137
    DataField = 'SPMARKS'
    DataSource = DataSource1
    ScrollBars = ssVertical
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 472
    Top = 192
    Width = 209
    Height = 21
    DataField = 'LPORT'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit6: TDBEdit
    Left = 472
    Top = 232
    Width = 209
    Height = 21
    DataField = 'DPORT'
    DataSource = DataSource1
    TabOrder = 10
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_inv_cust'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ADDR'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'MEMO1'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'PAYTERM'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'INCOTERM'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'COUNTRY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SPMARKS'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 208
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 16
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
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
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 272
    Top = 16
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 304
    Top = 16
  end
end
