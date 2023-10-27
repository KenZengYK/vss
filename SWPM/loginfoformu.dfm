object frmloginfo: Tfrmloginfo
  Left = 192
  Top = 114
  Caption = 'Logistics Info for our land cost analysis '
  ClientHeight = 383
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 320
    Top = 296
    Width = 81
    Height = 13
    Caption = 'Packing Method '
  end
  object DBGridEh1: TDBGridEh
    Left = 32
    Top = 32
    Width = 545
    Height = 249
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        Title.Caption = 'Factory'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        Title.Caption = 'Customer'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'CURR'
        Footers = <>
        Title.Caption = 'Currency'
        Width = 52
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LCOST'
        Footers = <>
        Title.Caption = 'Local Delivery (per carton)'
        Width = 70
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'ACOST'
        Footers = <>
        Title.Caption = 'By Air (per carton)'
        Width = 70
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'BCOST'
        Footers = <>
        Title.Caption = 'By Boat (per carton)'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'YR'
        Footers = <>
        Title.Caption = 'Past Performance'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'UDT'
        Footers = <>
        Title.Caption = 'Last Updated on'
        Width = 66
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 296
    Width = 281
    Height = 25
    Caption = 'Preview (cbm, actual weight and volume weight)'
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
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 32
    Top = 328
    Width = 217
    Height = 25
    Caption = 'Preview (past performance by carton)'
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
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object ComboBox1: TComboBox
    Left = 408
    Top = 296
    Width = 73
    Height = 21
    TabOrder = 3
    Text = 'ALL'
    Items.Strings = (
      'ALL'
      'SSF1'
      'AAF1'
      'SAF1'
      'ASF1'
      'SSFA'
      'SSH1'
      'AAH1'
      'SAH1'
      'ASH1'
      'SSHA'
      'SSB1'
      'AAB1'
      'SAB1'
      'ASB1'
      'SSBA'
      'SMF1'
      'SMH1'
      'SMB1')
  end
  object chk1: TCheckBox
    Left = 488
    Top = 296
    Width = 89
    Height = 17
    Caption = 'Only Summary'
    TabOrder = 4
    Visible = False
  end
  object BitBtn3: TBitBtn
    Left = 248
    Top = 328
    Width = 65
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 5
  end
  object chk2: TCheckBox
    Left = 376
    Top = 328
    Width = 129
    Height = 17
    Caption = 'Without Brand Code'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_logisticcost'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CURR'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'LCOST'
        DataType = ftFloat
      end
      item
        Name = 'ACOST'
        DataType = ftFloat
      end
      item
        Name = 'BCOST'
        DataType = ftFloat
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'EDT'
        DataType = ftDate
      end
      item
        Name = 'UDT'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 24
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 56
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
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
    Left = 120
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from sp_pdn_genlogistic_cost('#39'SL'#39',2009,2,2009,2,'#39'SALL'#39',' +
      #39'ALL'#39')'
    FieldDefs = <
      item
        Name = 'PDN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FLAG60'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'BOX'
        DataType = ftFloat
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
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PKM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'LCOST'
        DataType = ftFloat
      end
      item
        Name = 'ACOST'
        DataType = ftFloat
      end
      item
        Name = 'BCOST'
        DataType = ftFloat
      end
      item
        Name = 'OCOST'
        DataType = ftFloat
      end
      item
        Name = 'TCOST'
        DataType = ftFloat
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'UDT'
        DataType = ftDate
      end
      item
        Name = 'CUST'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOST1'
        DataType = ftFloat
      end
      item
        Name = 'BCOST1'
        DataType = ftFloat
      end
      item
        Name = 'ACOST2'
        DataType = ftFloat
      end
      item
        Name = 'BCOST2'
        DataType = ftFloat
      end
      item
        Name = 'OCOST1'
        DataType = ftFloat
      end
      item
        Name = 'CUST1'
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 184
  end
  object DataSource2: TDataSource
    DataSet = Query5
    Left = 216
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline1'
    Left = 248
  end
  object ppReport1: TppReport
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
    Left = 280
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 33602
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Logistic Info for cost analysis (cbm, actual weight and volume w' +
          'eight)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 34131
        mmTop = 5556
        mmWidth = 143669
        BandType = 0
      end
      object title002: TppLabel
        UserName = 'title002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- HANS (Vendor Booking)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 6085
        mmWidth = 84931
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 14288
        mmLeft = 1588
        mmTop = 19579
        mmWidth = 279665
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 20638
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust PO# '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 22225
        mmTop = 20638
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prod '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 39158
        mmTop = 20638
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 49213
        mmTop = 20638
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Category '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37042
        mmTop = 25400
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipped '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 20638
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 25400
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 82815
        mmTop = 20638
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Unit '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 82815
        mmTop = 25400
        mmWidth = 5821
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 89429
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 104775
        mmTop = 20638
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Carton '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 91017
        mmTop = 25400
        mmWidth = 9271
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weight '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 104246
        mmTop = 25400
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(kgs) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 104246
        mmTop = 29633
        mmWidth = 7112
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CBMs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 116946
        mmTop = 25400
        mmWidth = 8509
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 127529
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 89694
        mmTop = 24606
        mmWidth = 38100
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 184944
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 138907
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'EA per  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 128323
        mmTop = 20638
        mmWidth = 10287
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Carton '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 128323
        mmTop = 25400
        mmWidth = 9271
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 138907
        mmTop = 24606
        mmWidth = 46038
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(Per 1,000 EA)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 153723
        mmTop = 20638
        mmWidth = 20362
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vol. Wt. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 141023
        mmTop = 25400
        mmWidth = 10922
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(kgs) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 141023
        mmTop = 29633
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weight '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 158486
        mmTop = 25400
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(kgs) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 158486
        mmTop = 29633
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CBMs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175419
        mmTop = 25400
        mmWidth = 8467
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 211403
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ship mode  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 196586
        mmTop = 20638
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Destination  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 212196
        mmTop = 20638
        mmWidth = 15875
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 231511
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 246857
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN #   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 232305
        mmTop = 20638
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Manifest #  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 247650
        mmTop = 20638
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(if avaliable)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 247650
        mmTop = 25400
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 265642
        mmTop = 20638
        mmWidth = 10329
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ex-fty date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 265642
        mmTop = 25400
        mmWidth = 14817
        BandType = 0
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
        mmLeft = 264848
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory:   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2381
        mmTop = 14288
        mmWidth = 13462
        BandType = 0
      end
      object pdn001: TppLabel
        UserName = 'pdn001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 14288
        mmWidth = 36777
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label401'
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 216959
        mmTop = 14288
        mmWidth = 15346
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
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 233892
        mmTop = 14288
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 250561
        mmTop = 14288
        mmWidth = 7673
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 259292
        mmTop = 14288
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label402'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 6350
        mmTop = 2646
        mmWidth = 9260
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 17198
        mmTop = 2646
        mmWidth = 14901
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label403'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Packing Method:    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 67469
        mmTop = 14288
        mmWidth = 25993
        BandType = 0
      end
      object pack001: TppLabel
        UserName = 'pack001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer Ready Packing  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 94721
        mmTop = 14288
        mmWidth = 60061
        BandType = 0
      end
      object ppLine45: TppLine
        UserName = 'Line45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 195792
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Packing  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 185738
        mmTop = 20638
        mmWidth = 11726
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'method  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 185738
        mmTop = 25400
        mmWidth = 11091
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 4498
        mmLeft = 1588
        mmTop = 0
        mmWidth = 194469
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
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 2381
        mmTop = 794
        mmWidth = 10880
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
        DataField = 'CUSTPO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 22225
        mmTop = 794
        mmWidth = 10287
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
        DataField = 'FLAG6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 40217
        mmTop = 794
        mmWidth = 3006
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
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 49213
        mmTop = 794
        mmWidth = 11134
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
        DataField = 'PDN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 232305
        mmTop = 794
        mmWidth = 12742
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
        DataField = 'DEST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 212196
        mmTop = 794
        mmWidth = 6604
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
        DataField = 'BCN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 247650
        mmTop = 794
        mmWidth = 5207
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
        DataField = 'EXFTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 265642
        mmTop = 794
        mmWidth = 7832
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
        DataField = 'SHPM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 196586
        mmTop = 794
        mmWidth = 8297
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
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 72369
        mmTop = 794
        mmWidth = 5419
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
        DataField = 'BOX'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 97568
        mmTop = 794
        mmWidth = 2709
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
        DataField = 'WGHT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 106584
        mmTop = 794
        mmWidth = 7451
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
        DataField = 'CBM'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 120672
        mmTop = 794
        mmWidth = 4741
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'EA  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 82815
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'XBOX'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 130894
        mmTop = 794
        mmWidth = 6689
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WGHT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 160825
        mmTop = 794
        mmWidth = 7451
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'XCBM'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 176900
        mmTop = 794
        mmWidth = 6985
        BandType = 4
      end
      object v001: TppLabel
        UserName = 'v001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'v001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2879
        mmLeft = 146579
        mmTop = 794
        mmWidth = 5292
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 89429
        mmTop = 0
        mmWidth = 2117
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
        mmHeight = 4498
        mmLeft = 127529
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 138907
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 211403
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 184944
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 246857
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 231511
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 264848
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 280988
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 195792
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PKM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 186002
        mmTop = 794
        mmWidth = 6477
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Grand Total: -  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2381
        mmTop = 2117
        mmWidth = 20193
        BandType = 7
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weighted Ave: -  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2381
        mmTop = 7144
        mmWidth = 22987
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 63183
        mmTop = 2117
        mmWidth = 14605
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BOX'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 88466
        mmTop = 2117
        mmWidth = 11811
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WGHT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 99685
        mmTop = 2117
        mmWidth = 14351
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CBM'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 113306
        mmTop = 2117
        mmWidth = 12107
        BandType = 7
      end
      object z001: TppLabel
        UserName = 'z001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'x001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 132292
        mmTop = 7144
        mmWidth = 5292
        BandType = 7
      end
      object z002: TppLabel
        UserName = 'z002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'x002'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 146579
        mmTop = 7144
        mmWidth = 5292
        BandType = 7
      end
      object z003: TppLabel
        UserName = 'z003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'x003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 162984
        mmTop = 7144
        mmWidth = 5292
        BandType = 7
      end
      object z004: TppLabel
        UserName = 'z004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'x004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 178594
        mmTop = 7144
        mmWidth = 5292
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1588
        mmTop = 0
        mmWidth = 279665
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1588
        mmTop = 12171
        mmWidth = 279665
        BandType = 7
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Brush.Style = bsClear
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 12965
        mmLeft = 0
        mmTop = 14288
        mmWidth = 284692
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppSubReport1: TppSubReport
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 21167
          mmWidth = 284692
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppDBPipeline2
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
            DataPipelineName = 'ppDBPipeline2'
            object ppTitleBand1: TppTitleBand
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object subject001: TppLabel
                UserName = 'subject001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'By Prod Category: -  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 2381
                mmTop = 265
                mmWidth = 28046
                BandType = 1
              end
            end
            object ppDetailBand2: TppDetailBand
              BeforePrint = ppDetailBand2BeforePrint
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppShape5: TppShape
                UserName = 'Shape5'
                mmHeight = 4498
                mmLeft = 1588
                mmTop = 0
                mmWidth = 194469
                BandType = 4
              end
              object ppDBText18: TppDBText
                UserName = 'DBText18'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'FLAG6'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2879
                mmLeft = 40217
                mmTop = 794
                mmWidth = 3006
                BandType = 4
              end
              object ppDBText19: TppDBText
                UserName = 'DBText19'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'BOX'
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
                mmLeft = 97631
                mmTop = 794
                mmWidth = 2709
                BandType = 4
              end
              object ppDBText20: TppDBText
                UserName = 'DBText20'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'WGHT'
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
                mmLeft = 107982
                mmTop = 794
                mmWidth = 6096
                BandType = 4
              end
              object ppDBText21: TppDBText
                UserName = 'DBText21'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'CBM'
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
                mmLeft = 120650
                mmTop = 794
                mmWidth = 4741
                BandType = 4
              end
              object ppDBText22: TppDBText
                UserName = 'DBText101'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'T4QTY'
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
                mmLeft = 72496
                mmTop = 794
                mmWidth = 5419
                BandType = 4
              end
              object w001: TppLabel
                UserName = 'w001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'x001'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2910
                mmLeft = 132292
                mmTop = 794
                mmWidth = 5292
                BandType = 4
              end
              object w002: TppLabel
                UserName = 'w002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'x002'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2910
                mmLeft = 146579
                mmTop = 794
                mmWidth = 5292
                BandType = 4
              end
              object w003: TppLabel
                UserName = 'w003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'x003'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2910
                mmLeft = 162984
                mmTop = 794
                mmWidth = 5292
                BandType = 4
              end
              object w004: TppLabel
                UserName = 'w004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'x004'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2910
                mmLeft = 178594
                mmTop = 794
                mmWidth = 5292
                BandType = 4
              end
              object ppLine29: TppLine
                UserName = 'Line29'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4233
                mmLeft = 89429
                mmTop = 0
                mmWidth = 2117
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
                mmHeight = 4233
                mmLeft = 138907
                mmTop = 0
                mmWidth = 2117
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
                mmHeight = 4233
                mmLeft = 127529
                mmTop = 0
                mmWidth = 2117
                BandType = 4
              end
              object ppLine32: TppLine
                UserName = 'Line32'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4233
                mmLeft = 184944
                mmTop = 0
                mmWidth = 2117
                BandType = 4
              end
              object ppLine49: TppLine
                UserName = 'Line49'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4233
                mmLeft = 195792
                mmTop = 0
                mmWidth = 2117
                BandType = 4
              end
              object ppDBText23: TppDBText
                UserName = 'DBText23'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'PKM'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2879
                mmLeft = 186002
                mmTop = 794
                mmWidth = 8594
                BandType = 4
              end
              object sdiv001: TppDBText
                UserName = 'sdiv001'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'SDIV35'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                SuppressRepeatedValues = True
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2879
                mmLeft = 19050
                mmTop = 794
                mmWidth = 8424
                BandType = 4
              end
            end
            object ppSummaryBand2: TppSummaryBand
              BeforePrint = ppSummaryBand2BeforePrint
              PrintHeight = phDynamic
              AlignToBottom = False
              mmBottomOffset = 0
              mmHeight = 15346
              mmPrintPosition = 0
              object subject002: TppLabel
                UserName = 'subject002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'By Prod Code: -  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 2381
                mmTop = 1588
                mmWidth = 23019
                BandType = 7
              end
              object ppSubReport2: TppSubReport
                UserName = 'SubReport2'
                ExpandAll = False
                NewPrintJob = False
                OutlineSettings.CreateNode = True
                TraverseAllData = False
                DataPipelineName = 'ppDBPipeline3'
                mmHeight = 5027
                mmLeft = 0
                mmTop = 6615
                mmWidth = 284427
                BandType = 7
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                object ppChildReport2: TppChildReport
                  AutoStop = False
                  DataPipeline = ppDBPipeline3
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
                  DataPipelineName = 'ppDBPipeline3'
                  object ppTitleBand2: TppTitleBand
                    mmBottomOffset = 0
                    mmHeight = 0
                    mmPrintPosition = 0
                  end
                  object ppDetailBand3: TppDetailBand
                    BeforePrint = ppDetailBand3BeforePrint
                    mmBottomOffset = 0
                    mmHeight = 4498
                    mmPrintPosition = 0
                    object ppShape10: TppShape
                      UserName = 'Shape10'
                      mmHeight = 4763
                      mmLeft = 1588
                      mmTop = 0
                      mmWidth = 194469
                      BandType = 4
                    end
                    object ppDBText25: TppDBText
                      UserName = 'DBText25'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'FLAG60'
                      DataPipeline = ppDBPipeline3
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'ppDBPipeline3'
                      mmHeight = 2879
                      mmLeft = 40217
                      mmTop = 794
                      mmWidth = 1651
                      BandType = 4
                    end
                    object ppDBText26: TppDBText
                      UserName = 'DBText26'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'BOX'
                      DataPipeline = ppDBPipeline3
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppDBPipeline3'
                      mmHeight = 2879
                      mmLeft = 97664
                      mmTop = 794
                      mmWidth = 2709
                      BandType = 4
                    end
                    object ppDBText27: TppDBText
                      UserName = 'DBText201'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'WGHT'
                      DataPipeline = ppDBPipeline3
                      DisplayFormat = '#,0.00;-#,0.00'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppDBPipeline3'
                      mmHeight = 2879
                      mmLeft = 106627
                      mmTop = 794
                      mmWidth = 7451
                      BandType = 4
                    end
                    object ppDBText28: TppDBText
                      UserName = 'DBText28'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'CBM'
                      DataPipeline = ppDBPipeline3
                      DisplayFormat = '#,0.00;-#,0.00'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppDBPipeline3'
                      mmHeight = 2879
                      mmLeft = 120650
                      mmTop = 794
                      mmWidth = 4741
                      BandType = 4
                    end
                    object ppDBText29: TppDBText
                      UserName = 'DBText29'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'T4QTY'
                      DataPipeline = ppDBPipeline3
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppDBPipeline3'
                      mmHeight = 2879
                      mmLeft = 72496
                      mmTop = 794
                      mmWidth = 5419
                      BandType = 4
                    end
                    object b001: TppLabel
                      UserName = 'b001'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'x001'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 132292
                      mmTop = 794
                      mmWidth = 5292
                      BandType = 4
                    end
                    object b002: TppLabel
                      UserName = 'b002'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'x002'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 146579
                      mmTop = 794
                      mmWidth = 5292
                      BandType = 4
                    end
                    object b003: TppLabel
                      UserName = 'b003'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'x003'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 162984
                      mmTop = 794
                      mmWidth = 5292
                      BandType = 4
                    end
                    object b004: TppLabel
                      UserName = 'b004'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'x004'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 178594
                      mmTop = 794
                      mmWidth = 5292
                      BandType = 4
                    end
                    object ppLine50: TppLine
                      UserName = 'Line50'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 4498
                      mmLeft = 89429
                      mmTop = 0
                      mmWidth = 2117
                      BandType = 4
                    end
                    object ppLine51: TppLine
                      UserName = 'Line301'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 4498
                      mmLeft = 138907
                      mmTop = 0
                      mmWidth = 2117
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
                      mmHeight = 4498
                      mmLeft = 127529
                      mmTop = 0
                      mmWidth = 2117
                      BandType = 4
                    end
                    object ppLine53: TppLine
                      UserName = 'Line53'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 4498
                      mmLeft = 184944
                      mmTop = 0
                      mmWidth = 2117
                      BandType = 4
                    end
                    object ppLine54: TppLine
                      UserName = 'Line54'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 4498
                      mmLeft = 195792
                      mmTop = 0
                      mmWidth = 2117
                      BandType = 4
                    end
                    object ppDBText30: TppDBText
                      UserName = 'DBText30'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'PKM'
                      DataPipeline = ppDBPipeline3
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'ppDBPipeline3'
                      mmHeight = 2879
                      mmLeft = 186002
                      mmTop = 794
                      mmWidth = 6308
                      BandType = 4
                    end
                    object sdiv002: TppDBText
                      UserName = 'sdiv002'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'SDIV35'
                      DataPipeline = ppDBPipeline3
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      SuppressRepeatedValues = True
                      Transparent = True
                      DataPipelineName = 'ppDBPipeline3'
                      mmHeight = 2879
                      mmLeft = 19050
                      mmTop = 794
                      mmWidth = 3006
                      BandType = 4
                    end
                  end
                  object ppSummaryBand3: TppSummaryBand
                    AlignToBottom = False
                    mmBottomOffset = 0
                    mmHeight = 33073
                    mmPrintPosition = 0
                    object ppLabel91: TppLabel
                      UserName = 'Label91'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Tips: - '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      mmHeight = 3260
                      mmLeft = 2646
                      mmTop = 3704
                      mmWidth = 8721
                      BandType = 7
                    end
                    object ppShape17: TppShape
                      UserName = 'Shape17'
                      mmHeight = 24077
                      mmLeft = 2646
                      mmTop = 8996
                      mmWidth = 261673
                      BandType = 7
                    end
                    object ppLine68: TppLine
                      UserName = 'Line68'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Weight = 0.750000000000000000
                      mmHeight = 1852
                      mmLeft = 2646
                      mmTop = 19315
                      mmWidth = 261673
                      BandType = 7
                    end
                    object ppLine69: TppLine
                      UserName = 'Line69'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Weight = 0.750000000000000000
                      mmHeight = 1852
                      mmLeft = 2646
                      mmTop = 23813
                      mmWidth = 261673
                      BandType = 7
                    end
                    object ppLine70: TppLine
                      UserName = 'Line70'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Weight = 0.750000000000000000
                      mmHeight = 1852
                      mmLeft = 2646
                      mmTop = 28310
                      mmWidth = 261673
                      BandType = 7
                    end
                    object ppLine71: TppLine
                      UserName = 'Line71'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 24077
                      mmLeft = 33602
                      mmTop = 8996
                      mmWidth = 3175
                      BandType = 7
                    end
                    object ppLine72: TppLine
                      UserName = 'Line72'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 24077
                      mmLeft = 71702
                      mmTop = 8996
                      mmWidth = 3175
                      BandType = 7
                    end
                    object ppLine77: TppLine
                      UserName = 'Line77'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 24077
                      mmLeft = 225425
                      mmTop = 8996
                      mmWidth = 3175
                      BandType = 7
                    end
                    object ppLine78: TppLine
                      UserName = 'Line78'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 24077
                      mmLeft = 148167
                      mmTop = 8996
                      mmWidth = 3175
                      BandType = 7
                    end
                    object ppLine79: TppLine
                      UserName = 'Line79'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 24077
                      mmLeft = 109802
                      mmTop = 8996
                      mmWidth = 3175
                      BandType = 7
                    end
                    object ppLabel93: TppLabel
                      UserName = 'Label93'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Packing method  '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 9
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3598
                      mmLeft = 3704
                      mmTop = 10319
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel94: TppLabel
                      UserName = 'Label94'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'matrix: - '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 9
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3704
                      mmLeft = 3704
                      mmTop = 15346
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel95: TppLabel
                      UserName = 'Label95'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Flat Pack'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 3704
                      mmTop = 20108
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel96: TppLabel
                      UserName = 'Label96'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Hanger Pack'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 3704
                      mmTop = 24606
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel97: TppLabel
                      UserName = 'Label97'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Box Pack'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 3704
                      mmTop = 29104
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel98: TppLabel
                      UserName = 'Label98'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '1.) Solid Clr / Solid SZ  '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 34925
                      mmTop = 10054
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel115: TppLabel
                      UserName = 'Label115'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '(Style dependent) '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2381
                      mmLeft = 34925
                      mmTop = 15081
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel116: TppLabel
                      UserName = 'Label116'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '2.) Assorted Clr / Assorted SZ  '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 149754
                      mmTop = 10319
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel117: TppLabel
                      UserName = 'Label117'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '(Style dependent) '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2381
                      mmLeft = 149754
                      mmTop = 15346
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel118: TppLabel
                      UserName = 'Label118'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '3.) Solid Clr / Assorted SZ  '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 188384
                      mmTop = 10319
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel119: TppLabel
                      UserName = 'Label119'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '(Style dependent) '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2381
                      mmLeft = 188384
                      mmTop = 15346
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel120: TppLabel
                      UserName = 'Label120'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '4.) Assorted Clr / Solid SZ  '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 227278
                      mmTop = 10319
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel121: TppLabel
                      UserName = 'Label121'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '(Style dependent) '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2381
                      mmLeft = 227278
                      mmTop = 15346
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel122: TppLabel
                      UserName = 'Label1201'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '5.) Solid Clr / Solid SZ  '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 73025
                      mmTop = 10319
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel123: TppLabel
                      UserName = 'Label123'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '(Assorted Styles) '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2381
                      mmLeft = 73025
                      mmTop = 15346
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel124: TppLabel
                      UserName = 'Label124'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SSF1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 38100
                      mmTop = 19844
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel125: TppLabel
                      UserName = 'Label125'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SSH1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 38100
                      mmTop = 24342
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel126: TppLabel
                      UserName = 'Label126'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SSB1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 38100
                      mmTop = 28840
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel127: TppLabel
                      UserName = 'Label127'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'AAF1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 152136
                      mmTop = 20108
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel128: TppLabel
                      UserName = 'Label128'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'AAH1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 152136
                      mmTop = 24606
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel129: TppLabel
                      UserName = 'Label129'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'AAB1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 152136
                      mmTop = 29104
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel130: TppLabel
                      UserName = 'Label130'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SAF1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 192352
                      mmTop = 20108
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel131: TppLabel
                      UserName = 'Label131'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SAH1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 192352
                      mmTop = 24606
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel132: TppLabel
                      UserName = 'Label132'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SAB1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 192352
                      mmTop = 29104
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel133: TppLabel
                      UserName = 'Label133'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'ASF1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 230982
                      mmTop = 20108
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel134: TppLabel
                      UserName = 'Label134'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'ASH1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 230982
                      mmTop = 24606
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel135: TppLabel
                      UserName = 'Label135'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'ASB1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 230982
                      mmTop = 29104
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel136: TppLabel
                      UserName = 'Label136'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SSFA'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 75936
                      mmTop = 20108
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel137: TppLabel
                      UserName = 'Label137'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SSHA'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 75936
                      mmTop = 24606
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel138: TppLabel
                      UserName = 'Label138'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SSBA'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 75936
                      mmTop = 29104
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel37: TppLabel
                      UserName = 'Label37'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '6.) Solid Clr / Mulit SZ  '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 111125
                      mmTop = 10319
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel44: TppLabel
                      UserName = 'Label44'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '(Assorted Styles) '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsUnderline]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 2381
                      mmLeft = 111125
                      mmTop = 15346
                      mmWidth = 35719
                      BandType = 7
                    end
                    object ppLabel139: TppLabel
                      UserName = 'Label139'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SMF1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 114565
                      mmTop = 20108
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel140: TppLabel
                      UserName = 'Label140'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SMH1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 114565
                      mmTop = 24606
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLabel141: TppLabel
                      UserName = 'Label141'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'SMB1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 114565
                      mmTop = 29104
                      mmWidth = 28840
                      BandType = 7
                    end
                    object ppLine80: TppLine
                      UserName = 'Line80'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 24077
                      mmLeft = 186796
                      mmTop = 8996
                      mmWidth = 3175
                      BandType = 7
                    end
                  end
                end
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
          Caption = 'Summary: -  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 2381
          mmTop = 16405
          mmWidth = 17198
          BandType = 7
        end
        object prd001: TppLabel
          UserName = 'prd001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Summary: -  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 23019
          mmTop = 16405
          mmWidth = 17198
          BandType = 7
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'PDN'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand2BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          mmHeight = 10848
          mmLeft = 1588
          mmTop = 0
          mmWidth = 194469
          BandType = 5
          GroupNo = 0
        end
        object ppShape9: TppShape
          UserName = 'Shape9'
          Brush.Color = 13288958
          mmHeight = 3704
          mmLeft = 4498
          mmTop = 6085
          mmWidth = 35719
          BandType = 5
          GroupNo = 0
        end
        object ppShape8: TppShape
          UserName = 'Shape8'
          Brush.Color = 13288958
          mmHeight = 3704
          mmLeft = 4498
          mmTop = 1323
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
        end
        object ppLine25: TppLine
          UserName = 'Line25'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 89429
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object y001: TppLabel
          UserName = 'y001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 132292
          mmTop = 6350
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object y002: TppLabel
          UserName = 'y002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x002'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 146579
          mmTop = 6350
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object y003: TppLabel
          UserName = 'y003'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x003'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 162984
          mmTop = 6350
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object y004: TppLabel
          UserName = 'y004'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x004'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 178594
          mmTop = 6350
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object ppLabel38: TppLabel
          UserName = 'Label38'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total (by PDN): -  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 4763
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'T4QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 63183
          mmTop = 1588
          mmWidth = 14605
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BOX'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 88466
          mmTop = 1588
          mmWidth = 11811
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'WGHT'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 99685
          mmTop = 1588
          mmWidth = 14351
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CBM'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 113306
          mmTop = 1588
          mmWidth = 12107
          BandType = 5
          GroupNo = 0
        end
        object ppLabel39: TppLabel
          UserName = 'Label39'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Weighted Ave (by PDN): -  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 4763
          mmTop = 6350
          mmWidth = 34396
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
          mmHeight = 10848
          mmLeft = 138907
          mmTop = 0
          mmWidth = 3175
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
          mmHeight = 10848
          mmLeft = 127529
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine28: TppLine
          UserName = 'Line28'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 184944
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine35: TppLine
          UserName = 'Line35'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 280988
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine40: TppLine
          UserName = 'Line40'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 231511
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine41: TppLine
          UserName = 'Line41'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 211403
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine42: TppLine
          UserName = 'Line42'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 246857
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
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
          mmLeft = 264848
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine44: TppLine
          UserName = 'Line44'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 184944
          mmTop = 10583
          mmWidth = 96309
          BandType = 5
          GroupNo = 0
        end
        object ppLine48: TppLine
          UserName = 'Line48'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 195792
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'BCN'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 10848
          mmLeft = 1588
          mmTop = 0
          mmWidth = 194469
          BandType = 5
          GroupNo = 1
        end
        object ppShape7: TppShape
          UserName = 'Shape7'
          Brush.Color = 10024081
          mmHeight = 3440
          mmLeft = 21960
          mmTop = 6085
          mmWidth = 35719
          BandType = 5
          GroupNo = 1
        end
        object ppShape6: TppShape
          UserName = 'Shape6'
          Brush.Color = 10024081
          mmHeight = 3440
          mmLeft = 21960
          mmTop = 1588
          mmWidth = 28046
          BandType = 5
          GroupNo = 1
        end
        object x001: TppLabel
          UserName = 'x001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 132292
          mmTop = 6350
          mmWidth = 5292
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
          Caption = 'x002'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 146579
          mmTop = 6350
          mmWidth = 5292
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
          Caption = 'x003'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 162984
          mmTop = 6350
          mmWidth = 5292
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
          Caption = 'x004'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 178594
          mmTop = 6350
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sub-Ttl (by manifest): -  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 22225
          mmTop = 1852
          mmWidth = 26162
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'T4QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 63183
          mmTop = 1852
          mmWidth = 14605
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
          DataField = 'BOX'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 88466
          mmTop = 1852
          mmWidth = 11811
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'WGHT'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 99685
          mmTop = 1852
          mmWidth = 14351
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CBM'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 113306
          mmTop = 1852
          mmWidth = 12107
          BandType = 5
          GroupNo = 0
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Weighted Ave (by manifest): -  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 22225
          mmTop = 6350
          mmWidth = 33602
          BandType = 5
          GroupNo = 0
        end
        object ppLine21: TppLine
          UserName = 'Line21'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 89429
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
        object ppLine22: TppLine
          UserName = 'Line22'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 127529
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
        object ppLine23: TppLine
          UserName = 'Line23'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 138907
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
        object ppLine24: TppLine
          UserName = 'Line24'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 184944
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
        object ppLine34: TppLine
          UserName = 'Line34'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 280988
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
        object ppLine36: TppLine
          UserName = 'Line36'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 231511
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
        object ppLine37: TppLine
          UserName = 'Line37'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 211403
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
        object ppLine38: TppLine
          UserName = 'Line38'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 246857
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
        object ppLine39: TppLine
          UserName = 'Line39'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 264848
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
        object ppLine47: TppLine
          UserName = 'Line47'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 195792
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Query6: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from sp_pdn_genlogistic_cost('#39'SL'#39',2009,2,2009,2,'#39'SALL'#39',' +
      #39'ALL'#39')'
    FieldDefs = <
      item
        Name = 'PDN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FLAG60'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'BOX'
        DataType = ftFloat
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
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PKM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'LCOST'
        DataType = ftFloat
      end
      item
        Name = 'ACOST'
        DataType = ftFloat
      end
      item
        Name = 'BCOST'
        DataType = ftFloat
      end
      item
        Name = 'OCOST'
        DataType = ftFloat
      end
      item
        Name = 'TCOST'
        DataType = ftFloat
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'UDT'
        DataType = ftDate
      end
      item
        Name = 'CUST'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOST1'
        DataType = ftFloat
      end
      item
        Name = 'BCOST1'
        DataType = ftFloat
      end
      item
        Name = 'ACOST2'
        DataType = ftFloat
      end
      item
        Name = 'BCOST2'
        DataType = ftFloat
      end
      item
        Name = 'OCOST1'
        DataType = ftFloat
      end
      item
        Name = 'CUST1'
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 312
  end
  object DataSource3: TDataSource
    DataSet = Query6
    Left = 344
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline2'
    Left = 376
  end
  object Query7: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_log_info'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'PDN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CUSTPO'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'BOX'
        DataType = ftFloat
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
        Name = 'VWGHT'
        DataType = ftFloat
      end
      item
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEST'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'ETM'
        DataType = ftTime
      end
      item
        Name = 'XBOX'
        DataType = ftFloat
      end
      item
        Name = 'XWGHT'
        DataType = ftFloat
      end
      item
        Name = 'XCBM'
        DataType = ftFloat
      end
      item
        Name = 'XVWGHT'
        DataType = ftFloat
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'FLAG60'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'PKM'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SDIV35'
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 408
  end
  object DataSource4: TDataSource
    DataSet = Query7
    Left = 440
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DataSource4
    UserName = 'DBPipeline3'
    Left = 472
  end
  object ppReport2: TppReport
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
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 504
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Logistics Info for our land logistics cost analysis (past perfor' +
          'mance by carton)  & Logistics cost diff. (gain or loss) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 21167
        mmTop = 5027
        mmWidth = 231267
        BandType = 0
      end
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '-  SALL  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 63236
        mmTop = 10848
        mmWidth = 134409
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory :  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 4233
        mmTop = 16669
        mmWidth = 12658
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
        mmLeft = 19050
        mmTop = 16669
        mmWidth = 7662
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Packing method :  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 58208
        mmTop = 16669
        mmWidth = 23548
        BandType = 0
      end
      object pkm001: TppLabel
        UserName = 'pkm001'
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
        mmLeft = 83873
        mmTop = 16669
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'Label144'
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
        mmHeight = 3260
        mmLeft = 210873
        mmTop = 16669
        mmWidth = 14351
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
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
        mmHeight = 3260
        mmLeft = 227807
        mmTop = 16669
        mmWidth = 12573
        BandType = 0
      end
      object ppLabel145: TppLabel
        UserName = 'Label145'
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
        mmLeft = 247915
        mmTop = 16669
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
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
        mmLeft = 256646
        mmTop = 16669
        mmWidth = 7144
        BandType = 0
      end
      object wkno001: TppLabel
        UserName = 'wkno001'
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
        mmLeft = 123825
        mmTop = 16669
        mmWidth = 23537
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      BeforePrint = ppDetailBand4BeforePrint
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 5292
        mmLeft = 3969
        mmTop = 0
        mmWidth = 276490
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 5027
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 24077
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FLAG6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 41540
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 49742
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 79534
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BOX'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 95938
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WGHT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 109168
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CBM'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 121338
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'EA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 83608
        mmTop = 1058
        mmWidth = 3704
        BandType = 4
      end
      object cx001: TppLabel
        UserName = 'cx001'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 131234
        mmTop = 1058
        mmWidth = 3683
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHPM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 137584
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PKM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 150019
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ACOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 167217
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 183357
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 160602
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 176477
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object cx002: TppLabel
        UserName = 'cx002'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 216959
        mmTop = 1058
        mmWidth = 7408
        BandType = 4
      end
      object cx003: TppLabel
        UserName = 'cx003'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 232834
        mmTop = 1058
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 258498
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 277178
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 209550
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 225425
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 193146
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 200025
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText502'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 241300
        mmTop = 1058
        mmWidth = 635
        BandType = 4
      end
      object cx004: TppLabel
        UserName = 'cx004'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 248624
        mmTop = 1058
        mmWidth = 7493
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2646
      mmPrintPosition = 0
    end
    object ppSummaryBand4: TppSummaryBand
      BeforePrint = ppSummaryBand4BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppSubReport3: TppSubReport
        UserName = 'SubReport3'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 265
        mmWidth = 284427
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
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
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppShape15: TppShape
              UserName = 'Shape15'
              Brush.Color = 11134136
              mmHeight = 12171
              mmLeft = 69586
              mmTop = 529
              mmWidth = 188384
              BandType = 1
            end
            object ppLabel100: TppLabel
              UserName = 'Label100'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 101865
              mmTop = 1323
              mmWidth = 7144
              BandType = 1
            end
            object ppLabel101: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Weight '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 101865
              mmTop = 5027
              mmWidth = 9790
              BandType = 1
            end
            object ppLabel102: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '(kgs) '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 101865
              mmTop = 8731
              mmWidth = 7144
              BandType = 1
            end
            object ppLabel103: TppLabel
              UserName = 'Label103'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'CBMs '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 114036
              mmTop = 4498
              mmWidth = 8467
              BandType = 1
            end
            object ppLabel104: TppLabel
              UserName = 'Label104'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'EA per  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 124354
              mmTop = 1852
              mmWidth = 10319
              BandType = 1
            end
            object ppLabel105: TppLabel
              UserName = 'Label105'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Carton '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 124354
              mmTop = 6085
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel106: TppLabel
              UserName = 'Label106'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Transit '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 1852
              mmWidth = 9525
              BandType = 1
            end
            object ppLabel107: TppLabel
              UserName = 'Label107'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Mode '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 6085
              mmWidth = 7938
              BandType = 1
            end
            object ppLabel108: TppLabel
              UserName = 'Label703'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Packing '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 148696
              mmTop = 1852
              mmWidth = 10848
              BandType = 1
            end
            object ppLabel109: TppLabel
              UserName = 'Label109'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Method '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 148696
              mmTop = 6085
              mmWidth = 10319
              BandType = 1
            end
            object ppLabel110: TppLabel
              UserName = 'Label110'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Actual Logistics Cost '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 170392
              mmTop = 1323
              mmWidth = 27252
              BandType = 1
            end
            object ppLabel111: TppLabel
              UserName = 'Label111'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '   Air '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 163513
              mmTop = 5027
              mmWidth = 6519
              BandType = 1
            end
            object ppLabel112: TppLabel
              UserName = 'Label112'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '/ Carton '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 163513
              mmTop = 8731
              mmWidth = 10880
              BandType = 1
            end
            object ppLabel113: TppLabel
              UserName = 'Label113'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Ocean '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 179652
              mmTop = 5027
              mmWidth = 9144
              BandType = 1
            end
            object ppLabel114: TppLabel
              UserName = 'Label114'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '/ Carton '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 179652
              mmTop = 8731
              mmWidth = 10880
              BandType = 1
            end
            object ppLabel142: TppLabel
              UserName = 'Label142'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Extra Inland '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 193411
              mmTop = 5027
              mmWidth = 15875
              BandType = 1
            end
            object ppLabel143: TppLabel
              UserName = 'Label143'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '/ Carton '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 195263
              mmTop = 8731
              mmWidth = 10880
              BandType = 1
            end
            object ppLabel146: TppLabel
              UserName = 'Label1101'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Actual Logistics Cost '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 219075
              mmTop = 1323
              mmWidth = 27252
              BandType = 1
            end
            object ppLabel147: TppLabel
              UserName = 'Label147'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '   Air  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 212196
              mmTop = 5027
              mmWidth = 7324
              BandType = 1
            end
            object ppLabel148: TppLabel
              UserName = 'Label148'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '/ Piece '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 212196
              mmTop = 8731
              mmWidth = 9525
              BandType = 1
            end
            object ppLabel149: TppLabel
              UserName = 'Label149'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Ocean '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 228336
              mmTop = 5027
              mmWidth = 9144
              BandType = 1
            end
            object ppLabel150: TppLabel
              UserName = 'Label150'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '/ Piece '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 228336
              mmTop = 8731
              mmWidth = 9525
              BandType = 1
            end
            object ppLabel151: TppLabel
              UserName = 'Label151'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Extra Inland '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 241830
              mmTop = 5027
              mmWidth = 15875
              BandType = 1
            end
            object ppLabel152: TppLabel
              UserName = 'Label152'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '/ Piece '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 244740
              mmTop = 8731
              mmWidth = 9525
              BandType = 1
            end
            object ppLabel90: TppLabel
              UserName = 'Label90'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Summary: -  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 3440
              mmTop = 529
              mmWidth = 16404
              BandType = 1
            end
            object ppLabel92: TppLabel
              UserName = 'Label92'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Prod Cat.  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 21696
              mmTop = 6879
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel99: TppLabel
              UserName = 'Label99'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Carton '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 90223
              mmTop = 4498
              mmWidth = 9260
              BandType = 1
            end
            object ppLine66: TppLine
              UserName = 'Line66'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 209021
              mmTop = 529
              mmWidth = 2910
              BandType = 1
            end
            object ppLine73: TppLine
              UserName = 'Line602'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 123296
              mmTop = 529
              mmWidth = 2910
              BandType = 1
            end
            object ppLine74: TppLine
              UserName = 'Line74'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 136261
              mmTop = 529
              mmWidth = 2910
              BandType = 1
            end
            object ppLine75: TppLine
              UserName = 'Line75'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 147902
              mmTop = 529
              mmWidth = 2910
              BandType = 1
            end
            object ppLine76: TppLine
              UserName = 'Line76'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 160073
              mmTop = 529
              mmWidth = 2910
              BandType = 1
            end
            object subtitle001: TppLabel
              UserName = 'subtitle001'
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
              mmLeft = 20638
              mmTop = 529
              mmWidth = 11906
              BandType = 1
            end
            object ppLine84: TppLine
              UserName = 'Line84'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12171
              mmLeft = 89429
              mmTop = 529
              mmWidth = 2910
              BandType = 1
            end
            object ppLabel158: TppLabel
              UserName = 'Label158'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Shipped '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 70644
              mmTop = 2646
              mmWidth = 11113
              BandType = 1
            end
            object ppLabel159: TppLabel
              UserName = 'Label159'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Qty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 70644
              mmTop = 6879
              mmWidth = 5292
              BandType = 1
            end
            object ppLabel160: TppLabel
              UserName = 'Label160'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Qty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 82815
              mmTop = 2646
              mmWidth = 5292
              BandType = 1
            end
            object ppLabel161: TppLabel
              UserName = 'Label601'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Unit '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 82815
              mmTop = 6879
              mmWidth = 5821
              BandType = 1
            end
          end
          object ppHeaderBand3: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand5: TppDetailBand
            BeforePrint = ppDetailBand5BeforePrint
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppShape16: TppShape
              UserName = 'Shape16'
              mmHeight = 5292
              mmLeft = 3969
              mmTop = 0
              mmWidth = 254001
              BandType = 4
            end
            object ppDBText51: TppDBText
              UserName = 'DBText51'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'FLAG6'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 24606
              mmTop = 1058
              mmWidth = 3471
              BandType = 4
            end
            object ppDBText52: TppDBText
              UserName = 'DBText52'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T4QTY'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 73099
              mmTop = 1058
              mmWidth = 7070
              BandType = 4
            end
            object ppDBText53: TppDBText
              UserName = 'DBText53'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BOX'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 93440
              mmTop = 1058
              mmWidth = 3133
              BandType = 4
            end
            object ppDBText54: TppDBText
              UserName = 'DBText54'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'WGHT'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 101167
              mmTop = 1058
              mmWidth = 8636
              BandType = 4
            end
            object ppDBText55: TppDBText
              UserName = 'DBText55'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CBM'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 116470
              mmTop = 1058
              mmWidth = 5503
              BandType = 4
            end
            object cy001: TppLabel
              UserName = 'cy001'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 127529
              mmTop = 1058
              mmWidth = 7408
              BandType = 4
            end
            object ppDBText56: TppDBText
              UserName = 'DBText56'
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
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 137584
              mmTop = 1058
              mmWidth = 9610
              BandType = 4
            end
            object ppDBText57: TppDBText
              UserName = 'DBText402'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PKM'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 150019
              mmTop = 1058
              mmWidth = 7535
              BandType = 4
            end
            object ppDBText58: TppDBText
              UserName = 'DBText58'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CURR'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 209286
              mmTop = 1058
              mmWidth = 5969
              BandType = 4
            end
            object cy002: TppLabel
              UserName = 'cy002'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 216165
              mmTop = 1058
              mmWidth = 7408
              BandType = 4
            end
            object ppDBText59: TppDBText
              UserName = 'DBText501'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CURR'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 225161
              mmTop = 1058
              mmWidth = 5969
              BandType = 4
            end
            object cy003: TppLabel
              UserName = 'cy003'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 232040
              mmTop = 1058
              mmWidth = 7408
              BandType = 4
            end
            object ppDBText61: TppDBText
              UserName = 'DBText61'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CURR'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 241830
              mmTop = 1058
              mmWidth = 5969
              BandType = 4
            end
            object cy004: TppLabel
              UserName = 'cy004'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 248709
              mmTop = 1058
              mmWidth = 7408
              BandType = 4
            end
            object ppDBText62: TppDBText
              UserName = 'DBText62'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CURR'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 160867
              mmTop = 1058
              mmWidth = 5969
              BandType = 4
            end
            object cy005: TppLabel
              UserName = 'cy005'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 167619
              mmTop = 1058
              mmWidth = 7535
              BandType = 4
            end
            object ppDBText63: TppDBText
              UserName = 'DBText63'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CURR'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 176742
              mmTop = 1058
              mmWidth = 5969
              BandType = 4
            end
            object cy006: TppLabel
              UserName = 'cy006'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 183494
              mmTop = 1058
              mmWidth = 7535
              BandType = 4
            end
            object ppDBText64: TppDBText
              UserName = 'DBText64'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CURR'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 193411
              mmTop = 1058
              mmWidth = 5969
              BandType = 4
            end
            object cy007: TppLabel
              UserName = 'cy007'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 200163
              mmTop = 1058
              mmWidth = 7535
              BandType = 4
            end
            object ppLabel162: TppLabel
              UserName = 'Label162'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'EA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 83608
              mmTop = 1058
              mmWidth = 3704
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            BeforePrint = ppSummaryBand5BeforePrint
            PrintHeight = phDynamic
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 18256
            mmPrintPosition = 0
            object ppShape14: TppShape
              UserName = 'Shape14'
              mmHeight = 5292
              mmLeft = 3969
              mmTop = 0
              mmWidth = 254001
              BandType = 7
            end
            object ppDBCalc18: TppDBCalc
              UserName = 'DBCalc18'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T4QTY'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 63278
              mmTop = 1058
              mmWidth = 16891
              BandType = 7
            end
            object ppDBCalc19: TppDBCalc
              UserName = 'DBCalc19'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BOX'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 95007
              mmTop = 1058
              mmWidth = 1566
              BandType = 7
            end
            object ppDBCalc20: TppDBCalc
              UserName = 'DBCalc20'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'WGHT'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 93292
              mmTop = 1058
              mmWidth = 16510
              BandType = 7
            end
            object ppDBCalc21: TppDBCalc
              UserName = 'DBCalc201'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CBM'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 107961
              mmTop = 1058
              mmWidth = 14012
              BandType = 7
            end
            object cw005: TppLabel
              UserName = 'cw005'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 167026
              mmTop = 1058
              mmWidth = 8128
              BandType = 7
            end
            object cw006: TppLabel
              UserName = 'cw006'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 182901
              mmTop = 1058
              mmWidth = 8128
              BandType = 7
            end
            object cw007: TppLabel
              UserName = 'cw007'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 199570
              mmTop = 1058
              mmWidth = 8128
              BandType = 7
            end
            object cw002: TppLabel
              UserName = 'cw002'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 215445
              mmTop = 1058
              mmWidth = 8128
              BandType = 7
            end
            object cw003: TppLabel
              UserName = 'cw003'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 231320
              mmTop = 1058
              mmWidth = 8128
              BandType = 7
            end
            object cw004: TppLabel
              UserName = 'cw004'
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 247989
              mmTop = 1058
              mmWidth = 8128
              BandType = 7
            end
            object ppSubReport4: TppSubReport
              UserName = 'SubReport4'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 12700
              mmWidth = 284427
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport4: TppChildReport
                AutoStop = False
                DataPipeline = ppDBPipeline3
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
                DataPipelineName = 'ppDBPipeline3'
                object ppTitleBand4: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
                object ppDetailBand6: TppDetailBand
                  BeforePrint = ppDetailBand6BeforePrint
                  mmBottomOffset = 0
                  mmHeight = 5027
                  mmPrintPosition = 0
                  object ppShape18: TppShape
                    UserName = 'Shape18'
                    mmHeight = 5292
                    mmLeft = 3969
                    mmTop = 0
                    mmWidth = 254001
                    BandType = 4
                  end
                  object dy001: TppLabel
                    UserName = 'dy001'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dy001'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 127275
                    mmTop = 1058
                    mmWidth = 7662
                    BandType = 4
                  end
                  object dy002: TppLabel
                    UserName = 'dy002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dy002'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 215911
                    mmTop = 1058
                    mmWidth = 7662
                    BandType = 4
                  end
                  object dy003: TppLabel
                    UserName = 'dy003'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dy003'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 231786
                    mmTop = 1058
                    mmWidth = 7662
                    BandType = 4
                  end
                  object dy004: TppLabel
                    UserName = 'dy004'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dy004'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 248455
                    mmTop = 1058
                    mmWidth = 7662
                    BandType = 4
                  end
                  object dy005: TppLabel
                    UserName = 'dy005'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dy005'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 167619
                    mmTop = 1058
                    mmWidth = 7662
                    BandType = 4
                  end
                  object dy006: TppLabel
                    UserName = 'dy006'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dy006'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 183494
                    mmTop = 1058
                    mmWidth = 7662
                    BandType = 4
                  end
                  object dy007: TppLabel
                    UserName = 'dy007'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dy007'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 200163
                    mmTop = 1058
                    mmWidth = 7662
                    BandType = 4
                  end
                  object ppDBText65: TppDBText
                    UserName = 'DBText65'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'FLAG6'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 24606
                    mmTop = 1058
                    mmWidth = 3471
                    BandType = 4
                  end
                  object ppDBText66: TppDBText
                    UserName = 'DBText66'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'T4QTY'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 73014
                    mmTop = 1058
                    mmWidth = 7070
                    BandType = 4
                  end
                  object ppDBText67: TppDBText
                    UserName = 'DBText67'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'BOX'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 93398
                    mmTop = 1058
                    mmWidth = 3133
                    BandType = 4
                  end
                  object ppDBText68: TppDBText
                    UserName = 'DBText68'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'WGHT'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 102637
                    mmTop = 1058
                    mmWidth = 7070
                    BandType = 4
                  end
                  object ppDBText69: TppDBText
                    UserName = 'DBText69'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'CBM'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 116417
                    mmTop = 1058
                    mmWidth = 5503
                    BandType = 4
                  end
                  object ppDBText70: TppDBText
                    UserName = 'DBText70'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'SHPM'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 137584
                    mmTop = 1058
                    mmWidth = 9610
                    BandType = 4
                  end
                  object ppDBText71: TppDBText
                    UserName = 'DBText71'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'PKM'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 150019
                    mmTop = 1058
                    mmWidth = 7112
                    BandType = 4
                  end
                  object ppDBText72: TppDBText
                    UserName = 'DBText72'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'CURR'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 209286
                    mmTop = 1058
                    mmWidth = 8128
                    BandType = 4
                  end
                  object ppDBText73: TppDBText
                    UserName = 'DBText73'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'CURR'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 225161
                    mmTop = 1058
                    mmWidth = 8128
                    BandType = 4
                  end
                  object ppDBText74: TppDBText
                    UserName = 'DBText74'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'CURR'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 241830
                    mmTop = 1058
                    mmWidth = 8128
                    BandType = 4
                  end
                  object ppDBText75: TppDBText
                    UserName = 'DBText75'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'CURR'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 160867
                    mmTop = 1058
                    mmWidth = 8128
                    BandType = 4
                  end
                  object ppDBText76: TppDBText
                    UserName = 'DBText76'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'CURR'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 176742
                    mmTop = 1058
                    mmWidth = 8128
                    BandType = 4
                  end
                  object ppDBText77: TppDBText
                    UserName = 'DBText77'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'CURR'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 193411
                    mmTop = 1058
                    mmWidth = 8128
                    BandType = 4
                  end
                end
                object ppSummaryBand6: TppSummaryBand
                  BeforePrint = ppSummaryBand6BeforePrint
                  AlignToBottom = False
                  mmBottomOffset = 0
                  mmHeight = 35983
                  mmPrintPosition = 0
                  object ppShape19: TppShape
                    UserName = 'Shape19'
                    mmHeight = 5292
                    mmLeft = 3969
                    mmTop = 0
                    mmWidth = 254001
                    BandType = 7
                  end
                  object dw002: TppLabel
                    UserName = 'dw002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dw002'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 215244
                    mmTop = 1058
                    mmWidth = 8255
                    BandType = 7
                  end
                  object dw003: TppLabel
                    UserName = 'dw003'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dw003'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 231119
                    mmTop = 1058
                    mmWidth = 8255
                    BandType = 7
                  end
                  object dw004: TppLabel
                    UserName = 'dw004'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dw004'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 247788
                    mmTop = 1058
                    mmWidth = 8255
                    BandType = 7
                  end
                  object dw005: TppLabel
                    UserName = 'dw005'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dw005'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 166825
                    mmTop = 1058
                    mmWidth = 8255
                    BandType = 7
                  end
                  object dw006: TppLabel
                    UserName = 'dw006'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dw006'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 182700
                    mmTop = 1058
                    mmWidth = 8255
                    BandType = 7
                  end
                  object dw007: TppLabel
                    UserName = 'dw007'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'dw007'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3260
                    mmLeft = 199369
                    mmTop = 1058
                    mmWidth = 8255
                    BandType = 7
                  end
                  object ppDBCalc22: TppDBCalc
                    UserName = 'DBCalc22'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'T4QTY'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 63236
                    mmTop = 1058
                    mmWidth = 16891
                    BandType = 7
                  end
                  object ppDBCalc23: TppDBCalc
                    UserName = 'DBCalc23'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'BOX'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 94923
                    mmTop = 1058
                    mmWidth = 1566
                    BandType = 7
                  end
                  object ppDBCalc24: TppDBCalc
                    UserName = 'DBCalc202'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'WGHT'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 93398
                    mmTop = 1058
                    mmWidth = 16510
                    BandType = 7
                  end
                  object ppDBCalc25: TppDBCalc
                    UserName = 'DBCalc25'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'CBM'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 3260
                    mmLeft = 107950
                    mmTop = 1058
                    mmWidth = 14012
                    BandType = 7
                  end
                  object ppShape20: TppShape
                    UserName = 'Shape20'
                    mmHeight = 24871
                    mmLeft = 3969
                    mmTop = 10054
                    mmWidth = 224367
                    BandType = 7
                  end
                  object ppLine67: TppLine
                    UserName = 'Line67'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 3969
                    mmTop = 20902
                    mmWidth = 224367
                    BandType = 7
                  end
                  object ppLabel154: TppLabel
                    UserName = 'Label154'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Prod Code '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 15346
                    mmTop = 11377
                    mmWidth = 14288
                    BandType = 7
                  end
                  object ppLabel155: TppLabel
                    UserName = 'Label155'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Default Transit Mode '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 63236
                    mmTop = 11377
                    mmWidth = 26988
                    BandType = 7
                  end
                  object ppLabel156: TppLabel
                    UserName = 'Label156'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Budgeted Logistic Cost (pcs) '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 104775
                    mmTop = 11377
                    mmWidth = 40746
                    BandType = 7
                  end
                  object ppLabel157: TppLabel
                    UserName = 'Label157'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Diff (Budgeted vs Actual) '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 176742
                    mmTop = 11377
                    mmWidth = 38100
                    BandType = 7
                  end
                  object ppLine81: TppLine
                    UserName = 'Line81'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 24871
                    mmLeft = 37835
                    mmTop = 10054
                    mmWidth = 3704
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
                    mmHeight = 24871
                    mmLeft = 91811
                    mmTop = 10054
                    mmWidth = 3704
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
                    mmHeight = 24871
                    mmLeft = 154252
                    mmTop = 10054
                    mmWidth = 3704
                    BandType = 7
                  end
                  object pb001: TppLabel
                    UserName = 'pb001'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'B '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 18256
                    mmTop = 21960
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pk001: TppLabel
                    UserName = 'pk001'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'K '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 18256
                    mmTop = 26458
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pu001: TppLabel
                    UserName = 'pu001'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'U '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 18256
                    mmTop = 30956
                    mmWidth = 2910
                    BandType = 7
                  end
                  object pb002: TppLabel
                    UserName = 'pb002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'B '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 64558
                    mmTop = 21960
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pk002: TppLabel
                    UserName = 'pk002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'K '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 64558
                    mmTop = 26458
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pu002: TppLabel
                    UserName = 'pu002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'U '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 64558
                    mmTop = 30956
                    mmWidth = 2910
                    BandType = 7
                  end
                  object pb003: TppLabel
                    UserName = 'pb003'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'B '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 105834
                    mmTop = 21960
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pk003: TppLabel
                    UserName = 'pk003'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'K '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 105834
                    mmTop = 26458
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pu003: TppLabel
                    UserName = 'Label1601'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'U '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 105834
                    mmTop = 30956
                    mmWidth = 2910
                    BandType = 7
                  end
                  object pb004: TppLabel
                    UserName = 'pb004'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'B '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 166952
                    mmTop = 21960
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pk004: TppLabel
                    UserName = 'pk004'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'K '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 166952
                    mmTop = 26458
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pu004: TppLabel
                    UserName = 'pu004'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'U '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 166952
                    mmTop = 30956
                    mmWidth = 2910
                    BandType = 7
                  end
                  object ppLabel163: TppLabel
                    UserName = 'Label163'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'on Def Transit Mode '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 96309
                    mmTop = 16669
                    mmWidth = 26458
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
                    mmHeight = 24871
                    mmLeft = 61119
                    mmTop = 10054
                    mmWidth = 1588
                    BandType = 7
                  end
                  object ppLabel165: TppLabel
                    UserName = 'Label165'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Incoterm '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 43921
                    mmTop = 11377
                    mmWidth = 11906
                    BandType = 7
                  end
                  object ppLabel166: TppLabel
                    UserName = 'Label166'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'FOB '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 46567
                    mmTop = 21960
                    mmWidth = 6615
                    BandType = 7
                  end
                  object ppLabel167: TppLabel
                    UserName = 'Label167'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Extra Inland Cost '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 129382
                    mmTop = 16669
                    mmWidth = 22490
                    BandType = 7
                  end
                  object ppLine87: TppLine
                    UserName = 'Line87'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Weight = 0.750000000000000000
                    mmHeight = 2117
                    mmLeft = 91811
                    mmTop = 15875
                    mmWidth = 136525
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
                    mmHeight = 19050
                    mmLeft = 126471
                    mmTop = 15875
                    mmWidth = 3704
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
                    mmHeight = 19050
                    mmLeft = 188648
                    mmTop = 15875
                    mmWidth = 3704
                    BandType = 7
                  end
                  object ppLabel168: TppLabel
                    UserName = 'Label168'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Default Transit Mode '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 158750
                    mmTop = 16669
                    mmWidth = 26988
                    BandType = 7
                  end
                  object ppLabel169: TppLabel
                    UserName = 'Label169'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Actual Transit Mode '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 194734
                    mmTop = 16669
                    mmWidth = 25929
                    BandType = 7
                  end
                  object pb0031: TppLabel
                    UserName = 'pb0031'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'B '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 133879
                    mmTop = 21960
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pk0031: TppLabel
                    UserName = 'pk0031'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'K '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 133879
                    mmTop = 26458
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pu0031: TppLabel
                    UserName = 'pu0031'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'U '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 133879
                    mmTop = 30956
                    mmWidth = 2910
                    BandType = 7
                  end
                  object pb0041: TppLabel
                    UserName = 'Label1701'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'B '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 202142
                    mmTop = 21960
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pk0041: TppLabel
                    UserName = 'pk0041'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'K '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 202142
                    mmTop = 26458
                    mmWidth = 2646
                    BandType = 7
                  end
                  object pu0041: TppLabel
                    UserName = 'pu0041'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'U '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 202142
                    mmTop = 30956
                    mmWidth = 2910
                    BandType = 7
                  end
                end
              end
            end
            object ppLabel153: TppLabel
              UserName = 'Label153'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Prod Code  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 21696
              mmTop = 8467
              mmWidth = 15113
              BandType = 7
            end
          end
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CUST'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12965
        mmPrintPosition = 0
        object ppShape11: TppShape
          UserName = 'Shape11'
          Brush.Color = 11134136
          mmHeight = 11906
          mmLeft = 3969
          mmTop = 1323
          mmWidth = 276490
          BandType = 3
          GroupNo = 0
        end
        object ppShape22: TppShape
          UserName = 'Shape22'
          Brush.Color = 15658734
          mmHeight = 11906
          mmLeft = 48154
          mmTop = 1323
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
        end
        object ppShape21: TppShape
          UserName = 'Shape21'
          Brush.Color = 15658734
          mmHeight = 11906
          mmLeft = 3969
          mmTop = 1323
          mmWidth = 35983
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
          Caption = 'PDN # '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 5821
          mmTop = 5027
          mmWidth = 9260
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
          Caption = 'Project # '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 24077
          mmTop = 5027
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel54: TppLabel
          UserName = 'Label54'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Prod '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 40746
          mmTop = 2646
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cat. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 40746
          mmTop = 6879
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cust Style '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 49477
          mmTop = 5292
          mmWidth = 13758
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
          Caption = 'Shipped '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 70644
          mmTop = 2646
          mmWidth = 11113
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
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 70644
          mmTop = 6879
          mmWidth = 5292
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
          Caption = 'Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 82815
          mmTop = 2646
          mmWidth = 5292
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
          Caption = 'Unit '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 82815
          mmTop = 6879
          mmWidth = 5821
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
          Caption = 'Carton '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 90223
          mmTop = 5292
          mmWidth = 9260
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
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 101865
          mmTop = 2117
          mmWidth = 7144
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
          Caption = 'Weight '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 101865
          mmTop = 5821
          mmWidth = 9790
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
          Caption = '(kgs) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 101865
          mmTop = 9525
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'CBMs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 114036
          mmTop = 5292
          mmWidth = 8467
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
          Caption = 'EA per  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 124354
          mmTop = 2646
          mmWidth = 10319
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
          Caption = 'Carton '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 124354
          mmTop = 6879
          mmWidth = 9260
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
          Caption = 'Transit  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 137319
          mmTop = 2646
          mmWidth = 10319
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
          Caption = 'Mode '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 137319
          mmTop = 6879
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel70: TppLabel
          UserName = 'Label70'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Packing '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 148696
          mmTop = 2646
          mmWidth = 10848
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
          Caption = 'Method '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 148696
          mmTop = 6879
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel72: TppLabel
          UserName = 'Label701'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Actual Logistics Cost '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 170392
          mmTop = 2117
          mmWidth = 27252
          BandType = 3
          GroupNo = 0
        end
        object ppLabel73: TppLabel
          UserName = 'Label702'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   Air  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 163513
          mmTop = 5821
          mmWidth = 7324
          BandType = 3
          GroupNo = 0
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '/ Carton '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 163513
          mmTop = 9525
          mmWidth = 10880
          BandType = 3
          GroupNo = 0
        end
        object ppLabel75: TppLabel
          UserName = 'Label75'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ocean  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 179652
          mmTop = 5821
          mmWidth = 9948
          BandType = 3
          GroupNo = 0
        end
        object ppLabel76: TppLabel
          UserName = 'Label76'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '/ Carton '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 179652
          mmTop = 9525
          mmWidth = 10880
          BandType = 3
          GroupNo = 0
        end
        object ppLabel77: TppLabel
          UserName = 'Label77'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Actual Logistics Cost '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 217753
          mmTop = 2117
          mmWidth = 27252
          BandType = 3
          GroupNo = 0
        end
        object ppLabel78: TppLabel
          UserName = 'Label78'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   Air  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 212196
          mmTop = 5821
          mmWidth = 7324
          BandType = 3
          GroupNo = 0
        end
        object ppLabel79: TppLabel
          UserName = 'Label79'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ocean  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 228336
          mmTop = 5821
          mmWidth = 9948
          BandType = 3
          GroupNo = 0
        end
        object ppLabel80: TppLabel
          UserName = 'Label80'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '/ Piece '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 212196
          mmTop = 9525
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppLabel81: TppLabel
          UserName = 'Label81'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '/ Piece '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 228336
          mmTop = 9525
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppLabel82: TppLabel
          UserName = 'Label82'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Actual '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 262996
          mmTop = 2117
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
        end
        object ppLabel83: TppLabel
          UserName = 'Label83'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sub-total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 261673
          mmTop = 9525
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppLabel84: TppLabel
          UserName = 'Label84'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Extra Inland '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 193146
          mmTop = 5821
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel85: TppLabel
          UserName = 'Label85'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '/ Carton '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 195792
          mmTop = 9525
          mmWidth = 10880
          BandType = 3
          GroupNo = 0
        end
        object ppLabel86: TppLabel
          UserName = 'Label86'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Extra Inland '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 241830
          mmTop = 5821
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel87: TppLabel
          UserName = 'Label87'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '/ Piece '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 243417
          mmTop = 9525
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppLabel88: TppLabel
          UserName = 'Label88'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Logistics Cost '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 259557
          mmTop = 5821
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLine55: TppLine
          UserName = 'Line55'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 23019
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine56: TppLine
          UserName = 'Line56'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 39688
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine57: TppLine
          UserName = 'Line57'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 48154
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine58: TppLine
          UserName = 'Line58'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 69586
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine59: TppLine
          UserName = 'Line59'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 89429
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine60: TppLine
          UserName = 'Line60'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 123296
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine61: TppLine
          UserName = 'Line601'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 136261
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine62: TppLine
          UserName = 'Line62'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 147902
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine63: TppLine
          UserName = 'Line63'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 160073
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine64: TppLine
          UserName = 'Line64'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 208757
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine65: TppLine
          UserName = 'Line65'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 257705
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'PDN'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppShape13: TppShape
          UserName = 'Shape13'
          mmHeight = 5556
          mmLeft = 3969
          mmTop = 0
          mmWidth = 276490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'T4QTY'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 63278
          mmTop = 1058
          mmWidth = 16891
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BOX'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 95007
          mmTop = 1058
          mmWidth = 1566
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'WGHT'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 93292
          mmTop = 1058
          mmWidth = 16510
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CBM'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 107961
          mmTop = 1058
          mmWidth = 14012
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TCOST'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 260457
          mmTop = 1058
          mmWidth = 17357
          BandType = 5
          GroupNo = 0
        end
        object ppLabel89: TppLabel
          UserName = 'Label502'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sub-total -  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 5027
          mmTop = 1058
          mmWidth = 14690
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object Query8: TClientDataSet
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
    Left = 536
  end
end
