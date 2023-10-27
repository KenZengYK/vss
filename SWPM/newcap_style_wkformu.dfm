object frmnewcap_style_wk: Tfrmnewcap_style_wk
  Left = 54
  Top = 82
  Width = 897
  Height = 563
  Caption = 'Sale Projection by Week (based on delivery date)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 50
    Height = 13
    Caption = 'Customer  '
  end
  object DBText1: TDBText
    Left = 80
    Top = 24
    Width = 73
    Height = 17
    DataField = 'CUST'
    DataSource = frmnewcap_style.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 192
    Top = 24
    Width = 76
    Height = 13
    Caption = 'Customer Style  '
  end
  object DBText2: TDBText
    Left = 280
    Top = 24
    Width = 153
    Height = 17
    DataField = 'CSTYLE'
    DataSource = frmnewcap_style.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Year  '
  end
  object DBText3: TDBText
    Left = 56
    Top = 48
    Width = 73
    Height = 17
    DataField = 'YR'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 192
    Top = 48
    Width = 36
    Height = 13
    Caption = 'Month  '
  end
  object DBText4: TDBText
    Left = 240
    Top = 48
    Width = 57
    Height = 17
    DataField = 'M1'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 312
    Top = 48
    Width = 3
    Height = 13
  end
  object Label16: TLabel
    Left = 448
    Top = 56
    Width = 145
    Height = 13
    Caption = 'WO Ex-fty / SO del CT (days): '
  end
  object Label17: TLabel
    Left = 600
    Top = 56
    Width = 3
    Height = 13
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 80
    Width = 713
    Height = 345
    TabOrder = 0
    Visible = False
    object Label5: TLabel
      Left = 16
      Top = 32
      Width = 42
      Height = 13
      Caption = 'Week # '
    end
    object Label6: TLabel
      Left = 88
      Top = 32
      Width = 123
      Height = 13
      Caption = 'Delivery Date  /  Quantity '
    end
    object Label7: TLabel
      Left = 304
      Top = 32
      Width = 95
      Height = 13
      Caption = 'T3 Date  /  Quantity'
    end
    object Label8: TLabel
      Left = 520
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Status'
    end
    object Label9: TLabel
      Left = 16
      Top = 72
      Width = 41
      Height = 13
      Caption = 'Week 1 '
    end
    object Label10: TLabel
      Left = 16
      Top = 120
      Width = 41
      Height = 13
      Caption = 'Week 2 '
    end
    object Label11: TLabel
      Left = 16
      Top = 168
      Width = 41
      Height = 13
      Caption = 'Week 3 '
    end
    object Label12: TLabel
      Left = 16
      Top = 216
      Width = 41
      Height = 13
      Caption = 'Week 4 '
    end
    object Label13: TLabel
      Left = 16
      Top = 256
      Width = 41
      Height = 13
      Caption = 'Week 5 '
    end
    object Label14: TLabel
      Left = 16
      Top = 304
      Width = 41
      Height = 13
      Caption = 'Week 6 '
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 88
      Top = 72
      Width = 105
      Height = 21
      DataField = 'W1DT'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 0
      Visible = True
    end
    object DBEdit1: TDBEdit
      Left = 192
      Top = 72
      Width = 81
      Height = 21
      DataField = 'W1DQ'
      TabOrder = 1
    end
    object DBDateTimeEditEh2: TDBDateTimeEditEh
      Left = 304
      Top = 72
      Width = 105
      Height = 21
      DataField = 'W1T3'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 2
      Visible = True
    end
    object DBEdit2: TDBEdit
      Left = 408
      Top = 72
      Width = 81
      Height = 21
      DataField = 'W1TQ'
      TabOrder = 3
    end
    object DBComboBox1: TDBComboBox
      Left = 520
      Top = 72
      Width = 177
      Height = 21
      DataField = 'W1S'
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 4
    end
    object DBDateTimeEditEh3: TDBDateTimeEditEh
      Left = 88
      Top = 120
      Width = 105
      Height = 21
      DataField = 'W2DT'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 5
      Visible = True
    end
    object DBEdit3: TDBEdit
      Left = 192
      Top = 120
      Width = 81
      Height = 21
      DataField = 'W2DQ'
      TabOrder = 6
    end
    object DBDateTimeEditEh4: TDBDateTimeEditEh
      Left = 304
      Top = 120
      Width = 105
      Height = 21
      DataField = 'W2T3'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 7
      Visible = True
    end
    object DBEdit4: TDBEdit
      Left = 408
      Top = 120
      Width = 81
      Height = 21
      DataField = 'W2TQ'
      TabOrder = 8
    end
    object DBComboBox2: TDBComboBox
      Left = 520
      Top = 120
      Width = 177
      Height = 21
      DataField = 'W2S'
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 9
    end
    object DBDateTimeEditEh5: TDBDateTimeEditEh
      Left = 88
      Top = 168
      Width = 105
      Height = 21
      DataField = 'W3DT'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 10
      Visible = True
    end
    object DBEdit5: TDBEdit
      Left = 192
      Top = 168
      Width = 81
      Height = 21
      DataField = 'W3DQ'
      TabOrder = 11
    end
    object DBDateTimeEditEh6: TDBDateTimeEditEh
      Left = 304
      Top = 168
      Width = 105
      Height = 21
      DataField = 'W3T3'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 12
      Visible = True
    end
    object DBEdit6: TDBEdit
      Left = 408
      Top = 168
      Width = 81
      Height = 21
      DataField = 'W3TQ'
      TabOrder = 13
    end
    object DBComboBox3: TDBComboBox
      Left = 520
      Top = 168
      Width = 177
      Height = 21
      DataField = 'W3S'
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 14
    end
    object DBDateTimeEditEh7: TDBDateTimeEditEh
      Left = 88
      Top = 216
      Width = 105
      Height = 21
      DataField = 'W4DT'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 15
      Visible = True
    end
    object DBEdit7: TDBEdit
      Left = 192
      Top = 216
      Width = 81
      Height = 21
      DataField = 'W4DQ'
      TabOrder = 16
    end
    object DBDateTimeEditEh8: TDBDateTimeEditEh
      Left = 304
      Top = 216
      Width = 105
      Height = 21
      DataField = 'W4T3'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 17
      Visible = True
    end
    object DBEdit8: TDBEdit
      Left = 408
      Top = 216
      Width = 81
      Height = 21
      DataField = 'W4TQ'
      TabOrder = 18
    end
    object DBComboBox4: TDBComboBox
      Left = 520
      Top = 216
      Width = 177
      Height = 21
      DataField = 'W4S'
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 19
    end
    object DBDateTimeEditEh9: TDBDateTimeEditEh
      Left = 88
      Top = 256
      Width = 105
      Height = 21
      DataField = 'W5DT'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 20
      Visible = True
    end
    object DBEdit9: TDBEdit
      Left = 192
      Top = 256
      Width = 81
      Height = 21
      DataField = 'W5DQ'
      TabOrder = 21
    end
    object DBDateTimeEditEh10: TDBDateTimeEditEh
      Left = 304
      Top = 256
      Width = 105
      Height = 21
      DataField = 'W5T3'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 22
      Visible = True
    end
    object DBEdit10: TDBEdit
      Left = 408
      Top = 256
      Width = 81
      Height = 21
      DataField = 'W5TQ'
      TabOrder = 23
    end
    object DBComboBox5: TDBComboBox
      Left = 520
      Top = 256
      Width = 177
      Height = 21
      DataField = 'W5S'
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 24
    end
    object DBDateTimeEditEh11: TDBDateTimeEditEh
      Left = 88
      Top = 304
      Width = 105
      Height = 21
      DataField = 'W6DT'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 25
      Visible = True
    end
    object DBEdit11: TDBEdit
      Left = 192
      Top = 304
      Width = 81
      Height = 21
      DataField = 'W6DQ'
      TabOrder = 26
    end
    object DBDateTimeEditEh12: TDBDateTimeEditEh
      Left = 304
      Top = 304
      Width = 105
      Height = 21
      DataField = 'W6T3'
      EditButtons = <>
      Kind = dtkDateEh
      ReadOnly = True
      TabOrder = 27
      Visible = True
    end
    object DBEdit12: TDBEdit
      Left = 408
      Top = 304
      Width = 81
      Height = 21
      DataField = 'W6TQ'
      TabOrder = 28
    end
    object DBComboBox6: TDBComboBox
      Left = 520
      Top = 304
      Width = 177
      Height = 21
      DataField = 'W6S'
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 29
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 480
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 1
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
    Top = 480
    Width = 113
    Height = 25
    Caption = 'Customer Profile'
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn3: TBitBtn
    Left = 208
    Top = 480
    Width = 73
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 88
    Width = 841
    Height = 377
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SDESC1'
        Footers = <>
        Title.Caption = 'Progress Status'
        Width = 120
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'W1DT'
        Footers = <>
        Title.Caption = 'Week1|Delivery Date'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'W1DQ'
        Footers = <>
        Title.Caption = 'Week1|Delivery Qty'
        Width = 45
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'W1T3'
        Footers = <>
        Title.Caption = 'Week1|T3 Date'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'W1TQ'
        Footers = <>
        Title.Caption = 'Week1|T3 Qty'
        Width = 45
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'W2DT'
        Footers = <>
        Title.Caption = 'Week2|Delivery Date'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'W2DQ'
        Footers = <>
        Title.Caption = 'Week2|Delivery Qty'
        Width = 45
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'W2T3'
        Footers = <>
        Title.Caption = 'Week2|T3 Date'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'W2TQ'
        Footers = <>
        Title.Caption = 'Week2|T3 Qty'
        Width = 45
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'W3DT'
        Footers = <>
        Title.Caption = 'Week3|Delivery Date'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'W3DQ'
        Footers = <>
        Title.Caption = 'Week3|Delivery Qty'
        Width = 45
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'W3T3'
        Footers = <>
        Title.Caption = 'Week3|T3 Date'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'W3TQ'
        Footers = <>
        Title.Caption = 'Week3|T3 Qty'
        Width = 45
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'W4DT'
        Footers = <>
        Title.Caption = 'Week4|Delivery Date'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'W4DQ'
        Footers = <>
        Title.Caption = 'Week4|Delivery Qty'
        Width = 45
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'W4T3'
        Footers = <>
        Title.Caption = 'Week4|T3 Date'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'W4TQ'
        Footers = <>
        Title.Caption = 'Week4|T3 Qty'
        Width = 45
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'W5DT'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'W5DQ'
        Footers = <>
        Width = 45
      end
      item
        DisplayFormat = 'yy/MM/dd'
        EditButtons = <>
        FieldName = 'W5T3'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'W5TQ'
        Footers = <>
        Width = 45
      end>
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oa_style_new_wk1'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'M1'
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'SDESC1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'W1DT'
        DataType = ftDate
      end
      item
        Name = 'W1DQ'
        DataType = ftInteger
      end
      item
        Name = 'W1T3'
        DataType = ftDate
      end
      item
        Name = 'W1TQ'
        DataType = ftInteger
      end
      item
        Name = 'W2DT'
        DataType = ftDate
      end
      item
        Name = 'W2DQ'
        DataType = ftInteger
      end
      item
        Name = 'W2T3'
        DataType = ftDate
      end
      item
        Name = 'W2TQ'
        DataType = ftInteger
      end
      item
        Name = 'W3DT'
        DataType = ftDate
      end
      item
        Name = 'W3DQ'
        DataType = ftInteger
      end
      item
        Name = 'W3T3'
        DataType = ftDate
      end
      item
        Name = 'W3TQ'
        DataType = ftInteger
      end
      item
        Name = 'W4DT'
        DataType = ftDate
      end
      item
        Name = 'W4DQ'
        DataType = ftInteger
      end
      item
        Name = 'W4T3'
        DataType = ftDate
      end
      item
        Name = 'W4TQ'
        DataType = ftInteger
      end
      item
        Name = 'W5DT'
        DataType = ftDate
      end
      item
        Name = 'W5DQ'
        DataType = ftInteger
      end
      item
        Name = 'W5T3'
        DataType = ftDate
      end
      item
        Name = 'W5TQ'
        DataType = ftInteger
      end
      item
        Name = 'W6DT'
        DataType = ftDate
      end
      item
        Name = 'W6DQ'
        DataType = ftInteger
      end
      item
        Name = 'W6T3'
        DataType = ftDate
      end
      item
        Name = 'W6TQ'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 128
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 16
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 128
    Top = 48
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 160
    Top = 48
  end
end
