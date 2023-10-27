object frmpdnsupplement1: Tfrmpdnsupplement1
  Left = 192
  Top = 114
  Width = 601
  Height = 339
  Caption = 'PDN Manifest - Vendor Booking'
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
    Left = 16
    Top = 32
    Width = 23
    Height = 13
    Caption = 'PDN'
  end
  object DBText1: TDBText
    Left = 48
    Top = 32
    Width = 137
    Height = 17
    DataField = 'PDN'
    DataSource = frmpdn.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 200
    Top = 32
    Width = 43
    Height = 13
    Caption = 'Manifest '
  end
  object DBText2: TDBText
    Left = 248
    Top = 32
    Width = 137
    Height = 17
    DataField = 'VOYN'
    DataSource = frmvoyage.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 85
    Height = 13
    Caption = 'Tuck or Container'
  end
  object Label4: TLabel
    Left = 248
    Top = 56
    Width = 89
    Height = 13
    Caption = 'Cargo indoor Date '
  end
  object Label5: TLabel
    Left = 448
    Top = 56
    Width = 26
    Height = 13
    Caption = 'Time '
  end
  object Label6: TLabel
    Left = 16
    Top = 88
    Width = 73
    Height = 13
    Caption = 'On board Date '
  end
  object Label7: TLabel
    Left = 16
    Top = 152
    Width = 79
    Height = 13
    Caption = 'Vessel / Airflight '
  end
  object Label8: TLabel
    Left = 248
    Top = 152
    Width = 75
    Height = 13
    Caption = 'Port of Loading '
  end
  object Label9: TLabel
    Left = 16
    Top = 184
    Width = 56
    Height = 13
    Caption = 'Destination '
  end
  object Label10: TLabel
    Left = 248
    Top = 88
    Width = 36
    Height = 13
    Caption = 'Cartons'
  end
  object Label11: TLabel
    Left = 32
    Top = 120
    Width = 68
    Height = 13
    Caption = 'Weight (KGS) '
  end
  object Label12: TLabel
    Left = 248
    Top = 120
    Width = 30
    Height = 13
    Caption = 'CBMS'
  end
  object Label13: TLabel
    Left = 16
    Top = 216
    Width = 41
    Height = 13
    Caption = 'Notepad'
  end
  object DBComboBox1: TDBComboBox
    Left = 104
    Top = 56
    Width = 113
    Height = 21
    DataField = 'TRUCK'
    DataSource = frmvoyage.DataSource1
    ItemHeight = 13
    Items.Strings = (
      'Truck'
      'Container')
    TabOrder = 0
  end
  object DBDTEdit1: TDBDateTimeEditEh
    Left = 336
    Top = 56
    Width = 97
    Height = 21
    DataField = 'INDT'
    DataSource = frmvoyage.DataSource1
    EditButtons = <>
    Kind = dtkDateEh
    TabOrder = 1
    Visible = True
  end
  object DBTimeEdit1: TcxDBTimeEdit
    Left = 472
    Top = 56
    Width = 97
    Height = 21
    DataBinding.DataField = 'INTM'
    DataBinding.DataSource = frmvoyage.DataSource1
    Properties.AssignedValues.MinValue = True
    TabOrder = 2
  end
  object DBDateTimeEditEh1: TDBDateTimeEditEh
    Left = 104
    Top = 88
    Width = 113
    Height = 21
    DataField = 'ONDT'
    DataSource = frmvoyage.DataSource1
    EditButtons = <>
    Kind = dtkDateEh
    TabOrder = 3
    Visible = True
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 152
    Width = 113
    Height = 21
    DataField = 'VESS'
    DataSource = frmvoyage.DataSource1
    TabOrder = 7
  end
  object DBEdit2: TDBEdit
    Left = 328
    Top = 152
    Width = 121
    Height = 21
    DataField = 'LPORT'
    DataSource = frmvoyage.DataSource1
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 104
    Top = 184
    Width = 113
    Height = 21
    DataField = 'DEST'
    DataSource = frmvoyage.DataSource1
    TabOrder = 9
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 256
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 10
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
    Left = 88
    Top = 256
    Width = 73
    Height = 25
    TabOrder = 11
    Kind = bkClose
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit
    Left = 288
    Top = 88
    Width = 89
    Height = 21
    DataBinding.DataField = 'BOX'
    DataBinding.DataSource = frmvoyage.DataSource1
    Properties.DisplayFormat = '#0'
    Properties.ValidateOnEnter = True
    TabOrder = 4
  end
  object cxDBCurrencyEdit2: TcxDBCurrencyEdit
    Left = 104
    Top = 120
    Width = 97
    Height = 21
    DataBinding.DataField = 'WGHT'
    DataBinding.DataSource = frmvoyage.DataSource1
    Properties.DisplayFormat = '#0.00'
    Properties.ValidateOnEnter = True
    TabOrder = 5
  end
  object cxDBCurrencyEdit3: TcxDBCurrencyEdit
    Left = 288
    Top = 120
    Width = 97
    Height = 21
    DataBinding.DataField = 'CBM'
    DataBinding.DataSource = frmvoyage.DataSource1
    Properties.DisplayFormat = '#0.00'
    Properties.ValidateOnEnter = True
    TabOrder = 6
  end
  object DBEdit4: TDBEdit
    Left = 104
    Top = 216
    Width = 465
    Height = 21
    DataField = 'RAIR'
    DataSource = frmvoyage.DataSource1
    TabOrder = 12
  end
  object Query1: TClientDataSet
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
        DataType = ftInteger
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
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;acol'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 384
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 416
    Top = 88
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
    Left = 448
    Top = 88
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 480
    Top = 88
  end
  object Query4: TClientDataSet
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
    Left = 512
    Top = 88
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 544
    Top = 88
  end
end
