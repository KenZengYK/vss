object frmnewcap_wstyle: Tfrmnewcap_wstyle
  Left = 76
  Top = 114
  Width = 825
  Height = 515
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
    DataSource = DataSource1
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
    DataSource = DataSource1
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
    Width = 153
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
  object GroupBox1: TGroupBox
    Left = 24
    Top = 80
    Width = 769
    Height = 337
    Caption = 'Quantity by Week'
    TabOrder = 0
    object Label9: TLabel
      Left = 648
      Top = 24
      Width = 41
      Height = 13
      AutoSize = False
      Caption = 'Status  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 328
      Top = 24
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Delivery Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label5: TLabel
      Left = 216
      Top = 24
      Width = 87
      Height = 13
      Caption = 'Week # / Qty  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 432
      Top = 24
      Width = 80
      Height = 13
      Caption = 'Ex-fty Date    '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 536
      Top = 24
      Width = 96
      Height = 13
      Caption = 'T3 Date / Qty    '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 216
      Top = 64
      Width = 81
      Height = 17
      Alignment = taCenter
      DataField = 'w1'
      DataSource = DataSource1
    end
    object DBText6: TDBText
      Left = 208
      Top = 96
      Width = 81
      Height = 17
      Alignment = taCenter
      DataField = 'w2'
      DataSource = DataSource1
    end
    object DBText7: TDBText
      Left = 216
      Top = 144
      Width = 81
      Height = 17
      Alignment = taCenter
      DataField = 'w3'
      DataSource = DataSource1
    end
    object DBText8: TDBText
      Left = 216
      Top = 192
      Width = 81
      Height = 17
      Alignment = taCenter
      DataField = 'w4'
      DataSource = DataSource1
    end
    object DBText9: TDBText
      Left = 216
      Top = 240
      Width = 81
      Height = 17
      Alignment = taCenter
      DataField = 'w5'
      DataSource = DataSource1
    end
    object DBText10: TDBText
      Left = 216
      Top = 288
      Width = 81
      Height = 17
      Alignment = taCenter
      DataField = 'w6'
      DataSource = DataSource1
    end
    object lbldue1: TLabel
      Left = 328
      Top = 96
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'lbldue1'
    end
    object lbldue2: TLabel
      Left = 328
      Top = 144
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lbldue3: TLabel
      Left = 328
      Top = 192
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lbldue4: TLabel
      Left = 328
      Top = 240
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lbldue5: TLabel
      Left = 328
      Top = 288
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lblex1: TLabel
      Left = 432
      Top = 96
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lblex2: TLabel
      Left = 432
      Top = 144
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lblex3: TLabel
      Left = 432
      Top = 192
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lblex4: TLabel
      Left = 432
      Top = 240
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lblex5: TLabel
      Left = 432
      Top = 288
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lblt31: TLabel
      Left = 536
      Top = 96
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lblt32: TLabel
      Left = 536
      Top = 144
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lblt33: TLabel
      Left = 536
      Top = 192
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lblt34: TLabel
      Left = 536
      Top = 240
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object lblt35: TLabel
      Left = 536
      Top = 288
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label5'
    end
    object Label10: TLabel
      Left = 8
      Top = 24
      Width = 79
      Height = 13
      Caption = 'Fty Capacity  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 96
      Top = 24
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ttl Projection'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object DBEdit1: TDBEdit
      Left = 216
      Top = 112
      Width = 81
      Height = 21
      DataField = 'Q01'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBComboBox1: TDBComboBox
      Left = 648
      Top = 112
      Width = 113
      Height = 21
      DataField = 'CFM01'
      DataSource = DataSource1
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 216
      Top = 160
      Width = 81
      Height = 21
      DataField = 'Q02'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBComboBox2: TDBComboBox
      Left = 648
      Top = 160
      Width = 113
      Height = 21
      DataField = 'CFM02'
      DataSource = DataSource1
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 216
      Top = 208
      Width = 81
      Height = 21
      DataField = 'Q03'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBComboBox3: TDBComboBox
      Left = 648
      Top = 208
      Width = 113
      Height = 21
      DataField = 'CFM03'
      DataSource = DataSource1
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 216
      Top = 256
      Width = 81
      Height = 21
      DataField = 'Q04'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBComboBox4: TDBComboBox
      Left = 648
      Top = 256
      Width = 113
      Height = 21
      DataField = 'CFM04'
      DataSource = DataSource1
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 7
    end
    object DBEdit5: TDBEdit
      Left = 216
      Top = 304
      Width = 81
      Height = 21
      DataField = 'Q05'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBComboBox5: TDBComboBox
      Left = 648
      Top = 304
      Width = 113
      Height = 21
      DataField = 'CFM05'
      DataSource = DataSource1
      ItemHeight = 13
      Items.Strings = (
        'Projection/Indication'
        'Booking'
        'Reserved/Commitment'
        'Confirm/Execution')
      TabOrder = 9
    end
    object DBEdit6: TDBEdit
      Left = 536
      Top = 64
      Width = 81
      Height = 21
      Color = 13499643
      DataField = 'TQ01'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit7: TDBEdit
      Left = 536
      Top = 112
      Width = 81
      Height = 21
      Color = 13499643
      DataField = 'TQ02'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit8: TDBEdit
      Left = 536
      Top = 160
      Width = 81
      Height = 21
      Color = 13499643
      DataField = 'TQ03'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdit9: TDBEdit
      Left = 536
      Top = 208
      Width = 81
      Height = 21
      Color = 13499643
      DataField = 'TQ04'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit10: TDBEdit
      Left = 536
      Top = 256
      Width = 81
      Height = 21
      Color = 13499643
      DataField = 'TQ05'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 14
    end
    object DBEdit11: TDBEdit
      Left = 536
      Top = 304
      Width = 81
      Height = 21
      Color = 13499643
      DataField = 'TQ06'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 15
    end
    object DBEdit12: TDBEdit
      Left = 8
      Top = 64
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 16
    end
    object DBEdit13: TDBEdit
      Left = 8
      Top = 112
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 17
    end
    object DBEdit14: TDBEdit
      Left = 8
      Top = 160
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 18
    end
    object DBEdit15: TDBEdit
      Left = 8
      Top = 208
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 19
    end
    object DBEdit16: TDBEdit
      Left = 8
      Top = 256
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 20
    end
    object DBEdit17: TDBEdit
      Left = 8
      Top = 304
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 21
    end
    object DBEdit18: TDBEdit
      Left = 96
      Top = 64
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 22
    end
    object DBEdit19: TDBEdit
      Left = 96
      Top = 112
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 23
    end
    object DBEdit20: TDBEdit
      Left = 96
      Top = 160
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 24
    end
    object DBEdit21: TDBEdit
      Left = 96
      Top = 208
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 25
    end
    object DBEdit22: TDBEdit
      Left = 96
      Top = 256
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 26
    end
    object DBEdit23: TDBEdit
      Left = 96
      Top = 304
      Width = 81
      Height = 21
      Color = 13499643
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 27
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 432
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 1
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
    Top = 432
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
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oa_style_new1'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'M1'
        DataType = ftInteger
      end
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
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'OLDNEW'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SAH'
        DataType = ftFloat
      end
      item
        Name = 'E01'
        DataType = ftFloat
      end
      item
        Name = 'E101'
        DataType = ftFloat
      end
      item
        Name = 'DUE01'
        DataType = ftDate
      end
      item
        Name = 'EXF01'
        DataType = ftDate
      end
      item
        Name = 'T301'
        DataType = ftDate
      end
      item
        Name = 'Q01'
        DataType = ftInteger
      end
      item
        Name = 'CFM01'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSAH01'
        DataType = ftFloat
      end
      item
        Name = 'TW01'
        DataType = ftFloat
      end
      item
        Name = 'DUE02'
        DataType = ftDate
      end
      item
        Name = 'EXF02'
        DataType = ftDate
      end
      item
        Name = 'T302'
        DataType = ftDate
      end
      item
        Name = 'Q02'
        DataType = ftInteger
      end
      item
        Name = 'CFM02'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSAH02'
        DataType = ftFloat
      end
      item
        Name = 'TW02'
        DataType = ftFloat
      end
      item
        Name = 'DUE03'
        DataType = ftDate
      end
      item
        Name = 'EXF03'
        DataType = ftDate
      end
      item
        Name = 'T303'
        DataType = ftDate
      end
      item
        Name = 'Q03'
        DataType = ftInteger
      end
      item
        Name = 'CFM03'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSAH03'
        DataType = ftFloat
      end
      item
        Name = 'TW03'
        DataType = ftFloat
      end
      item
        Name = 'DUE04'
        DataType = ftDate
      end
      item
        Name = 'EXF04'
        DataType = ftDate
      end
      item
        Name = 'T304'
        DataType = ftDate
      end
      item
        Name = 'Q04'
        DataType = ftInteger
      end
      item
        Name = 'CFM04'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSAH04'
        DataType = ftFloat
      end
      item
        Name = 'TW04'
        DataType = ftFloat
      end
      item
        Name = 'DUE05'
        DataType = ftDate
      end
      item
        Name = 'EXF05'
        DataType = ftDate
      end
      item
        Name = 'T305'
        DataType = ftDate
      end
      item
        Name = 'Q05'
        DataType = ftInteger
      end
      item
        Name = 'CFM05'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSAH05'
        DataType = ftFloat
      end
      item
        Name = 'TW05'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
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
