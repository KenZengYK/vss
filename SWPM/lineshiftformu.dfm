object frmshift: Tfrmshift
  Left = 192
  Top = 105
  Caption = #20540#29677
  ClientHeight = 552
  ClientWidth = 1209
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 511
    Width = 1209
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object BitBtn3: TBitBtn
      Left = 160
      Top = 6
      Width = 73
      Height = 25
      Caption = #20445#23384
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 232
      Top = 6
      Width = 73
      Height = 25
      Caption = #23566#20986
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 304
      Top = 6
      Width = 73
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 6
      Width = 73
      Height = 25
      Caption = #26032#22686
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 88
      Top = 6
      Width = 73
      Height = 25
      Caption = #21034#38500
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1209
    Height = 511
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 0
      Width = 1209
      Height = 511
      Align = alClient
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnKeyPress = DBGridEh1KeyPress
      Columns = <
        item
          EditButtons = <>
          FieldName = 'TPLANT'
          Footers = <>
          Title.Caption = #24288
          Width = 32
        end
        item
          EditButtons = <>
          FieldName = 'SFTC'
          Footers = <>
          Title.Caption = #20540#29677#20195#34399
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = 'SFT'
          Footers = <>
          Title.Caption = #20540#26085
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'WRK_DAY'
          Footers = <>
          Title.Caption = #24037#20316#22825#25976
          Width = 33
        end
        item
          DisplayFormat = 'hh:nn'
          EditButtons = <>
          FieldName = 'ST01'
          Footers = <>
          Title.Caption = #27491#24120'-1 (Code: N1)|'#19978#29677#26178#38291'|'#30001
          Width = 35
        end
        item
          DisplayFormat = 'hh:nn'
          EditButtons = <>
          FieldName = 'ET01'
          Footers = <>
          Title.Caption = #27491#24120'-1 (Code: N1)|'#19978#29677#26178#38291'|'#33267
          Width = 35
        end
        item
          Color = 11267047
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'TT01'
          Footers = <>
          ReadOnly = True
          Title.Caption = #27491#24120'-1 (Code: N1)|'#21512#35336
          Width = 30
        end
        item
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'LTT01'
          Footers = <>
          Title.Caption = #27491#24120'-1 (Code: N1)|'#23567#20241#26178#38291
          Width = 30
        end
        item
          DisplayFormat = 'hh:nn'
          EditButtons = <>
          FieldName = 'ST02'
          Footers = <>
          Title.Caption = #27491#24120'-2 (Code: N2)|'#19978#29677#26178#38291'|'#30001
          Width = 35
        end
        item
          DisplayFormat = 'hh:nn'
          EditButtons = <>
          FieldName = 'ET02'
          Footers = <>
          Title.Caption = #27491#24120'-2 (Code: N2)|'#19978#29677#26178#38291'|'#33267
          Width = 35
        end
        item
          Color = 11267047
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'TT02'
          Footers = <>
          ReadOnly = True
          Title.Caption = #27491#24120'-2 (Code: N2)|'#21512#35336
          Width = 30
        end
        item
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'LTT02'
          Footers = <>
          Title.Caption = #27491#24120'-2 (Code: N2)|'#23567#20241#26178#38291
          Width = 30
        end
        item
          DisplayFormat = 'hh:nn'
          EditButtons = <>
          FieldName = 'ST03'
          Footers = <>
          Title.Caption = #21152#29677'1 (Code: OT1)|'#19978#29677#26178#38291'|'#30001
          Width = 35
        end
        item
          DisplayFormat = 'hh:nn'
          EditButtons = <>
          FieldName = 'ET03'
          Footers = <>
          Title.Caption = #21152#29677'1 (Code: OT1)|'#19978#29677#26178#38291'|'#33267
          Width = 35
        end
        item
          Color = 11267047
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'TT03'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21152#29677'1 (Code: OT1)|'#21512#35336
          Width = 30
        end
        item
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'LTT03'
          Footers = <>
          Title.Caption = #21152#29677'1 (Code: OT1)|'#23567#20241#26178#38291
          Width = 30
        end
        item
          DisplayFormat = 'hh:nn'
          EditButtons = <>
          FieldName = 'ST04'
          Footers = <>
          Title.Caption = #21152#29677'2 (Code: OT2)|'#19978#29677#26178#38291'|'#30001
          Width = 35
        end
        item
          DisplayFormat = 'hh:nn'
          EditButtons = <>
          FieldName = 'ET04'
          Footers = <>
          Title.Caption = #21152#29677'2 (Code: OT2)|'#19978#29677#26178#38291'|'#33267
          Width = 35
        end
        item
          Color = 11267047
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'TT04'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21152#29677'2 (Code: OT2)|'#21512#35336
          Width = 30
        end
        item
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'LTT04'
          Footers = <>
          Title.Caption = #21152#29677'2 (Code: OT2)|'#23567#20241#26178#38291
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'ST05'
          Footers = <>
          Title.Caption = #36861#29677' (Code: CsT)|'#19978#29677#26178#38291'|'#30001
          Width = 35
        end
        item
          EditButtons = <>
          FieldName = 'ET05'
          Footers = <>
          Title.Caption = #36861#29677' (Code: CsT)|'#19978#29677#26178#38291'|'#33267
          Width = 35
        end
        item
          Color = 11267047
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'TT05'
          Footers = <>
          ReadOnly = True
          Title.Caption = #36861#29677' (Code: CsT)|'#21512#35336
          Width = 35
        end
        item
          Color = 11267047
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'TT'
          Footers = <>
          ReadOnly = True
          Title.Caption = #32317#26178#38291'|'#19978#29677#26178#38291
          Width = 35
        end
        item
          Color = 11267047
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'LTT'
          Footers = <>
          ReadOnly = True
          Title.Caption = #32317#26178#38291'|'#23567#20241#26178#38291
          Width = 35
        end
        item
          DisplayFormat = 'YY/MM/DD'
          EditButtons = <>
          FieldName = 'EFM'
          Footers = <>
          Title.Caption = #26377#25928#26399'|'#24478
        end
        item
          DisplayFormat = 'YY/MM/DD'
          EditButtons = <>
          FieldName = 'EED'
          Footers = <>
          Title.Caption = #26377#25928#26399'|'#21040
        end
        item
          EditButtons = <>
          FieldName = 'RMK'
          Footers = <>
          Title.Caption = #20633#35387
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_shift'
    FieldDefs = <
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SFT'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SFTC'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ST01'
        DataType = ftTime
      end
      item
        Name = 'ET01'
        DataType = ftTime
      end
      item
        Name = 'TT01'
        DataType = ftFloat
      end
      item
        Name = 'LTS01'
        DataType = ftTime
      end
      item
        Name = 'LTE01'
        DataType = ftTime
      end
      item
        Name = 'LTT01'
        DataType = ftFloat
      end
      item
        Name = 'ST02'
        DataType = ftTime
      end
      item
        Name = 'ET02'
        DataType = ftTime
      end
      item
        Name = 'TT02'
        DataType = ftFloat
      end
      item
        Name = 'LTS02'
        DataType = ftTime
      end
      item
        Name = 'LTE02'
        DataType = ftTime
      end
      item
        Name = 'LTT02'
        DataType = ftFloat
      end
      item
        Name = 'ST03'
        DataType = ftTime
      end
      item
        Name = 'ET03'
        DataType = ftTime
      end
      item
        Name = 'TT03'
        DataType = ftFloat
      end
      item
        Name = 'ST04'
        DataType = ftTime
      end
      item
        Name = 'ET04'
        DataType = ftTime
      end
      item
        Name = 'TT04'
        DataType = ftFloat
      end
      item
        Name = 'TT'
        DataType = ftFloat
      end
      item
        Name = 'LTT'
        DataType = ftFloat
      end
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'LTS03'
        DataType = ftTime
      end
      item
        Name = 'LTE03'
        DataType = ftTime
      end
      item
        Name = 'LTT03'
        DataType = ftFloat
      end
      item
        Name = 'LTS04'
        DataType = ftTime
      end
      item
        Name = 'LTE04'
        DataType = ftTime
      end
      item
        Name = 'LTT04'
        DataType = ftFloat
      end
      item
        Name = 'ST05'
        DataType = ftTime
      end
      item
        Name = 'ET05'
        DataType = ftTime
      end
      item
        Name = 'TT05'
        DataType = ftFloat
      end
      item
        Name = 'EFROM'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'EEND'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RMK'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'EFM'
        DataType = ftDate
      end
      item
        Name = 'EED'
        DataType = ftDate
      end
      item
        Name = 'WRK_DAY'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'seq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 88
    Top = 88
    object Query1SEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = '"TBL_SHIFT"."SEQ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query1SFT: TWideStringField
      FieldName = 'SFT'
      Origin = '"TBL_SHIFT"."SFT"'
    end
    object Query1SFTC: TWideStringField
      FieldName = 'SFTC'
      Origin = '"TBL_SHIFT"."SFTC"'
      Size = 10
    end
    object Query1ST01: TTimeField
      FieldName = 'ST01'
      Origin = '"TBL_SHIFT"."ST01"'
      OnChange = Query1ST01Change
    end
    object Query1ET01: TTimeField
      FieldName = 'ET01'
      Origin = '"TBL_SHIFT"."ET01"'
      OnChange = Query1ST01Change
    end
    object Query1TT01: TFloatField
      FieldName = 'TT01'
      Origin = '"TBL_SHIFT"."TT01"'
      OnChange = Query1TT01Change
    end
    object Query1LTS01: TTimeField
      FieldName = 'LTS01'
      Origin = '"TBL_SHIFT"."LTS01"'
    end
    object Query1LTE01: TTimeField
      FieldName = 'LTE01'
      Origin = '"TBL_SHIFT"."LTE01"'
    end
    object Query1LTT01: TFloatField
      FieldName = 'LTT01'
      Origin = '"TBL_SHIFT"."LTT01"'
      OnChange = Query1LTT01Change
    end
    object Query1ST02: TTimeField
      FieldName = 'ST02'
      Origin = '"TBL_SHIFT"."ST02"'
      OnChange = Query1ST02Change
    end
    object Query1ET02: TTimeField
      FieldName = 'ET02'
      Origin = '"TBL_SHIFT"."ET02"'
      OnChange = Query1ST02Change
    end
    object Query1TT02: TFloatField
      FieldName = 'TT02'
      Origin = '"TBL_SHIFT"."TT02"'
      OnChange = Query1TT01Change
    end
    object Query1LTS02: TTimeField
      FieldName = 'LTS02'
      Origin = '"TBL_SHIFT"."LTS02"'
    end
    object Query1LTE02: TTimeField
      FieldName = 'LTE02'
      Origin = '"TBL_SHIFT"."LTE02"'
    end
    object Query1LTT02: TFloatField
      FieldName = 'LTT02'
      Origin = '"TBL_SHIFT"."LTT02"'
      OnChange = Query1LTT01Change
    end
    object Query1ST03: TTimeField
      FieldName = 'ST03'
      Origin = '"TBL_SHIFT"."ST03"'
      OnChange = Query1ST03Change
    end
    object Query1ET03: TTimeField
      FieldName = 'ET03'
      Origin = '"TBL_SHIFT"."ET03"'
      OnChange = Query1ST03Change
    end
    object Query1TT03: TFloatField
      FieldName = 'TT03'
      Origin = '"TBL_SHIFT"."TT03"'
      OnChange = Query1TT01Change
    end
    object Query1ST04: TTimeField
      FieldName = 'ST04'
      Origin = '"TBL_SHIFT"."ST04"'
      OnChange = Query1ST04Change
    end
    object Query1ET04: TTimeField
      FieldName = 'ET04'
      Origin = '"TBL_SHIFT"."ET04"'
      OnChange = Query1ST04Change
    end
    object Query1TT04: TFloatField
      FieldName = 'TT04'
      Origin = '"TBL_SHIFT"."TT04"'
      OnChange = Query1TT01Change
    end
    object Query1TT: TFloatField
      FieldName = 'TT'
      Origin = '"TBL_SHIFT"."TT"'
    end
    object Query1LTT: TFloatField
      FieldName = 'LTT'
      Origin = '"TBL_SHIFT"."LTT"'
    end
    object Query1TPLANT: TWideStringField
      FieldName = 'TPLANT'
      Origin = '"TBL_SHIFT"."TPLANT"'
      Size = 10
    end
    object Query1LTS03: TTimeField
      FieldName = 'LTS03'
      Origin = '"TBL_SHIFT"."LTS03"'
    end
    object Query1LTE03: TTimeField
      FieldName = 'LTE03'
      Origin = '"TBL_SHIFT"."LTE03"'
    end
    object Query1LTT03: TFloatField
      FieldName = 'LTT03'
      Origin = '"TBL_SHIFT"."LTT03"'
      OnChange = Query1LTT01Change
    end
    object Query1LTS04: TTimeField
      FieldName = 'LTS04'
      Origin = '"TBL_SHIFT"."LTS04"'
    end
    object Query1LTE04: TTimeField
      FieldName = 'LTE04'
      Origin = '"TBL_SHIFT"."LTE04"'
    end
    object Query1LTT04: TFloatField
      FieldName = 'LTT04'
      Origin = '"TBL_SHIFT"."LTT04"'
      OnChange = Query1LTT01Change
    end
    object Query1ST05: TTimeField
      FieldName = 'ST05'
      OnChange = Query1ST05Change
    end
    object Query1ET05: TTimeField
      FieldName = 'ET05'
      OnChange = Query1ST05Change
    end
    object Query1TT05: TFloatField
      FieldName = 'TT05'
      OnChange = Query1LTT01Change
    end
    object Query1EFROM: TWideStringField
      FieldName = 'EFROM'
      Size = 10
    end
    object Query1EEND: TWideStringField
      FieldName = 'EEND'
      Size = 10
    end
    object Query1RMK: TWideStringField
      FieldName = 'RMK'
      Size = 50
    end
    object Query1EFM: TDateField
      FieldName = 'EFM'
    end
    object Query1EED: TDateField
      FieldName = 'EED'
    end
    object Query1WRK_DAY: TIntegerField
      FieldName = 'WRK_DAY'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 120
    Top = 88
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 88
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 184
    Top = 88
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_shift'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query4AfterPost
    OnNewRecord = Query4NewRecord
    Left = 216
    Top = 88
    object Query4SEQ: TIntegerField
      FieldName = 'SEQ'
      Required = True
    end
    object Query4SFT: TWideStringField
      FieldName = 'SFT'
    end
    object Query4SFTC: TWideStringField
      FieldName = 'SFTC'
      Size = 10
    end
    object Query4ST01: TTimeField
      FieldName = 'ST01'
      OnChange = Query4ST01Change
    end
    object Query4ET01: TTimeField
      FieldName = 'ET01'
      OnChange = Query4ST01Change
    end
    object Query4TT01: TFloatField
      FieldName = 'TT01'
      OnChange = Query4TT01Change
    end
    object Query4LTS01: TTimeField
      FieldName = 'LTS01'
      OnChange = Query4LTS01Change
    end
    object Query4LTE01: TTimeField
      FieldName = 'LTE01'
      OnChange = Query4LTS01Change
    end
    object Query4LTT01: TFloatField
      FieldName = 'LTT01'
      OnChange = Query4LTT01Change
    end
    object Query4ST02: TTimeField
      FieldName = 'ST02'
      OnChange = Query4ST02Change
    end
    object Query4ET02: TTimeField
      FieldName = 'ET02'
      OnChange = Query4ST02Change
    end
    object Query4TT02: TFloatField
      FieldName = 'TT02'
      OnChange = Query4LTT01Change
    end
    object Query4LTS02: TTimeField
      FieldName = 'LTS02'
      OnChange = Query4LTS02Change
    end
    object Query4LTE02: TTimeField
      FieldName = 'LTE02'
      OnChange = Query4LTS02Change
    end
    object Query4LTT02: TFloatField
      FieldName = 'LTT02'
      OnChange = Query1TT01Change
    end
    object Query4ST03: TTimeField
      FieldName = 'ST03'
      OnChange = Query4ST03Change
    end
    object Query4ET03: TTimeField
      FieldName = 'ET03'
      OnChange = Query4ST03Change
    end
    object Query4TT03: TFloatField
      FieldName = 'TT03'
      OnChange = Query4TT01Change
    end
    object Query4ST04: TTimeField
      FieldName = 'ST04'
      OnChange = Query4ST04Change
    end
    object Query4ET04: TTimeField
      FieldName = 'ET04'
      OnChange = Query4ST04Change
    end
    object Query4TT04: TFloatField
      FieldName = 'TT04'
      OnChange = Query4TT01Change
    end
    object Query4TT: TFloatField
      FieldName = 'TT'
    end
    object Query4LTT: TFloatField
      FieldName = 'LTT'
    end
    object Query4TPLANT: TWideStringField
      FieldName = 'TPLANT'
      Size = 10
    end
    object Query4LTS03: TTimeField
      FieldName = 'LTS03'
    end
    object Query4LTE03: TTimeField
      FieldName = 'LTE03'
    end
    object Query4LTT03: TFloatField
      FieldName = 'LTT03'
    end
    object Query4LTS04: TTimeField
      FieldName = 'LTS04'
    end
    object Query4LTE04: TTimeField
      FieldName = 'LTE04'
    end
    object Query4LTT04: TFloatField
      FieldName = 'LTT04'
      OnChange = Query4LTT01Change
    end
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 248
    Top = 88
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 280
    Top = 88
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_shift'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query5AfterPost
    OnNewRecord = Query5NewRecord
    Left = 312
    Top = 88
    object Query5SEQ: TIntegerField
      FieldName = 'SEQ'
      Required = True
    end
    object Query5SFT: TWideStringField
      FieldName = 'SFT'
    end
    object Query5SFTC: TWideStringField
      FieldName = 'SFTC'
      Size = 10
    end
    object Query5ST01: TTimeField
      FieldName = 'ST01'
      OnChange = Query5ST01Change
    end
    object Query5ET01: TTimeField
      FieldName = 'ET01'
      OnChange = Query5ST01Change
    end
    object Query5TT01: TFloatField
      FieldName = 'TT01'
      OnChange = Query5TT01Change
    end
    object Query5LTS01: TTimeField
      FieldName = 'LTS01'
      OnChange = Query5LTS01Change
    end
    object Query5LTE01: TTimeField
      FieldName = 'LTE01'
      OnChange = Query5LTS01Change
    end
    object Query5LTT01: TFloatField
      FieldName = 'LTT01'
      OnChange = Query5LTT01Change
    end
    object Query5ST02: TTimeField
      FieldName = 'ST02'
      OnChange = Query5ST02Change
    end
    object Query5ET02: TTimeField
      FieldName = 'ET02'
      OnChange = Query5ST02Change
    end
    object Query5TT02: TFloatField
      FieldName = 'TT02'
      OnChange = Query5TT01Change
    end
    object Query5LTS02: TTimeField
      FieldName = 'LTS02'
      OnChange = Query5LTS02Change
    end
    object Query5LTE02: TTimeField
      FieldName = 'LTE02'
      OnChange = Query5LTS02Change
    end
    object Query5LTT02: TFloatField
      FieldName = 'LTT02'
      OnChange = Query5LTT01Change
    end
    object Query5ST03: TTimeField
      FieldName = 'ST03'
      OnChange = Query5ST03Change
    end
    object Query5ET03: TTimeField
      FieldName = 'ET03'
      OnChange = Query5ST03Change
    end
    object Query5TT03: TFloatField
      FieldName = 'TT03'
      OnChange = Query5TT01Change
    end
    object Query5ST04: TTimeField
      FieldName = 'ST04'
      OnChange = Query5ST04Change
    end
    object Query5ET04: TTimeField
      FieldName = 'ET04'
      OnChange = Query5ST04Change
    end
    object Query5TT04: TFloatField
      FieldName = 'TT04'
      OnChange = Query5TT01Change
    end
    object Query5TT: TFloatField
      FieldName = 'TT'
    end
    object Query5LTT: TFloatField
      FieldName = 'LTT'
    end
    object Query5TPLANT: TWideStringField
      FieldName = 'TPLANT'
      Size = 10
    end
    object Query5LTS03: TTimeField
      FieldName = 'LTS03'
      OnChange = Query5LTS03Change
    end
    object Query5LTE03: TTimeField
      FieldName = 'LTE03'
      OnChange = Query5LTS03Change
    end
    object Query5LTT03: TFloatField
      FieldName = 'LTT03'
      OnChange = Query5LTT01Change
    end
    object Query5LTS04: TTimeField
      FieldName = 'LTS04'
      OnChange = Query5LTS04Change
    end
    object Query5LTE04: TTimeField
      FieldName = 'LTE04'
      OnChange = Query5LTS04Change
    end
    object Query5LTT04: TFloatField
      FieldName = 'LTT04'
      OnChange = Query5LTT01Change
    end
  end
  object DataSource3: TDataSource
    DataSet = Query5
    Left = 344
    Top = 88
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 616
    Top = 200
  end
  object siLang1: TsiLang
    Version = '6.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    LangDelim = 1
    LangNames.Strings = (
      'Traditional Chinese'
      'English'
      'Bengali')
    Language = 'Traditional Chinese'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields')
    Left = 432
    Top = 112
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D007300680069006600740001003C50ED73
      010053006800690066007400200048006F00750072007300010001000D000A00
      420069007400420074006E0033000100DD4F585B010053006100760065000100
      01000D000A00420069007400420074006E00340001000E5CFA51010045007800
      70006F0072007400010001000D000A00420069007400420074006E0035000100
      0090FA5101004500780069007400010001000D000A0042006900740042007400
      6E0031000100B0659E580100410064006400010001000D000A00420069007400
      420074006E00320001002A5264960100440065006C0065007400650001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A005100750065007200
      7900310053004500510001005300450051000100010001000D000A0051007500
      650072007900310053004600540001005300460054000100010001000D000A00
      5100750065007200790031005300460054004300010053004600540043000100
      010001000D000A00510075006500720079003100530054003000310001005300
      5400300031000100010001000D000A0051007500650072007900310045005400
      30003100010045005400300031000100010001000D000A005100750065007200
      790031005400540030003100010054005400300031000100010001000D000A00
      5100750065007200790031004C00540053003000310001004C00540053003000
      31000100010001000D000A005100750065007200790031004C00540045003000
      310001004C0054004500300031000100010001000D000A005100750065007200
      790031004C00540054003000310001004C005400540030003100010001000100
      0D000A0051007500650072007900310053005400300032000100530054003000
      32000100010001000D000A005100750065007200790031004500540030003200
      010045005400300032000100010001000D000A00510075006500720079003100
      5400540030003200010054005400300032000100010001000D000A0051007500
      65007200790031004C00540053003000320001004C0054005300300032000100
      010001000D000A005100750065007200790031004C0054004500300032000100
      4C0054004500300032000100010001000D000A00510075006500720079003100
      4C00540054003000320001004C0054005400300032000100010001000D000A00
      5100750065007200790031005300540030003300010053005400300033000100
      010001000D000A00510075006500720079003100450054003000330001004500
      5400300033000100010001000D000A0051007500650072007900310054005400
      30003300010054005400300033000100010001000D000A005100750065007200
      790031005300540030003400010053005400300034000100010001000D000A00
      5100750065007200790031004500540030003400010045005400300034000100
      010001000D000A00510075006500720079003100540054003000340001005400
      5400300034000100010001000D000A0051007500650072007900310054005400
      0100540054000100010001000D000A005100750065007200790031004C005400
      540001004C00540054000100010001000D000A00510075006500720079003100
      540050004C0041004E0054000100540050004C0041004E005400010001000100
      0D000A005100750065007200790031004C00540053003000330001004C005400
      5300300033000100010001000D000A005100750065007200790031004C005400
      45003000330001004C0054004500300033000100010001000D000A0051007500
      65007200790031004C00540054003000330001004C0054005400300033000100
      010001000D000A005100750065007200790031004C0054005300300034000100
      4C0054005300300034000100010001000D000A00510075006500720079003100
      4C00540045003000340001004C0054004500300034000100010001000D000A00
      5100750065007200790031004C00540054003000340001004C00540054003000
      34000100010001000D000A005100750065007200790031005300540030003500
      010053005400300035000100010001000D000A00510075006500720079003100
      4500540030003500010045005400300035000100010001000D000A0051007500
      6500720079003100540054003000350001005400540030003500010001000100
      0D000A005100750065007200790031004500460052004F004D00010045004600
      52004F004D000100010001000D000A0051007500650072007900310045004500
      4E0044000100450045004E0044000100010001000D000A005100750065007200
      7900310052004D004B00010052004D004B000100010001000D000A0051007500
      6500720079003100450046004D000100450046004D000100010001000D000A00
      5100750065007200790031004500450044000100450045004400010001000100
      0D000A0051007500650072007900340053004500510001005300450051000100
      010001000D000A00510075006500720079003400530046005400010053004600
      54000100010001000D000A005100750065007200790034005300460054004300
      010053004600540043000100010001000D000A00510075006500720079003400
      5300540030003100010053005400300031000100010001000D000A0051007500
      6500720079003400450054003000310001004500540030003100010001000100
      0D000A0051007500650072007900340054005400300031000100540054003000
      31000100010001000D000A005100750065007200790034004C00540053003000
      310001004C0054005300300031000100010001000D000A005100750065007200
      790034004C00540045003000310001004C005400450030003100010001000100
      0D000A005100750065007200790034004C00540054003000310001004C005400
      5400300031000100010001000D000A0051007500650072007900340053005400
      30003200010053005400300032000100010001000D000A005100750065007200
      790034004500540030003200010045005400300032000100010001000D000A00
      5100750065007200790034005400540030003200010054005400300032000100
      010001000D000A005100750065007200790034004C0054005300300032000100
      4C0054005300300032000100010001000D000A00510075006500720079003400
      4C00540045003000320001004C0054004500300032000100010001000D000A00
      5100750065007200790034004C00540054003000320001004C00540054003000
      32000100010001000D000A005100750065007200790034005300540030003300
      010053005400300033000100010001000D000A00510075006500720079003400
      4500540030003300010045005400300033000100010001000D000A0051007500
      6500720079003400540054003000330001005400540030003300010001000100
      0D000A0051007500650072007900340053005400300034000100530054003000
      34000100010001000D000A005100750065007200790034004500540030003400
      010045005400300034000100010001000D000A00510075006500720079003400
      5400540030003400010054005400300034000100010001000D000A0051007500
      6500720079003400540054000100540054000100010001000D000A0051007500
      65007200790034004C005400540001004C00540054000100010001000D000A00
      510075006500720079003400540050004C0041004E0054000100540050004C00
      41004E0054000100010001000D000A005100750065007200790034004C005400
      53003000330001004C0054005300300033000100010001000D000A0051007500
      65007200790034004C00540045003000330001004C0054004500300033000100
      010001000D000A005100750065007200790034004C0054005400300033000100
      4C0054005400300033000100010001000D000A00510075006500720079003400
      4C00540053003000340001004C0054005300300034000100010001000D000A00
      5100750065007200790034004C00540045003000340001004C00540045003000
      34000100010001000D000A005100750065007200790034004C00540054003000
      340001004C0054005400300034000100010001000D000A005100750065007200
      7900350053004500510001005300450051000100010001000D000A0051007500
      650072007900350053004600540001005300460054000100010001000D000A00
      5100750065007200790035005300460054004300010053004600540043000100
      010001000D000A00510075006500720079003500530054003000310001005300
      5400300031000100010001000D000A0051007500650072007900350045005400
      30003100010045005400300031000100010001000D000A005100750065007200
      790035005400540030003100010054005400300031000100010001000D000A00
      5100750065007200790035004C00540053003000310001004C00540053003000
      31000100010001000D000A005100750065007200790035004C00540045003000
      310001004C0054004500300031000100010001000D000A005100750065007200
      790035004C00540054003000310001004C005400540030003100010001000100
      0D000A0051007500650072007900350053005400300032000100530054003000
      32000100010001000D000A005100750065007200790035004500540030003200
      010045005400300032000100010001000D000A00510075006500720079003500
      5400540030003200010054005400300032000100010001000D000A0051007500
      65007200790035004C00540053003000320001004C0054005300300032000100
      010001000D000A005100750065007200790035004C0054004500300032000100
      4C0054004500300032000100010001000D000A00510075006500720079003500
      4C00540054003000320001004C0054005400300032000100010001000D000A00
      5100750065007200790035005300540030003300010053005400300033000100
      010001000D000A00510075006500720079003500450054003000330001004500
      5400300033000100010001000D000A0051007500650072007900350054005400
      30003300010054005400300033000100010001000D000A005100750065007200
      790035005300540030003400010053005400300034000100010001000D000A00
      5100750065007200790035004500540030003400010045005400300034000100
      010001000D000A00510075006500720079003500540054003000340001005400
      5400300034000100010001000D000A0051007500650072007900350054005400
      0100540054000100010001000D000A005100750065007200790035004C005400
      540001004C00540054000100010001000D000A00510075006500720079003500
      540050004C0041004E0054000100540050004C0041004E005400010001000100
      0D000A005100750065007200790035004C00540053003000330001004C005400
      5300300033000100010001000D000A005100750065007200790035004C005400
      45003000330001004C0054004500300033000100010001000D000A0051007500
      65007200790035004C00540054003000330001004C0054005400300033000100
      010001000D000A005100750065007200790035004C0054005300300034000100
      4C0054005300300034000100010001000D000A00510075006500720079003500
      4C00540045003000340001004C0054004500300034000100010001000D000A00
      5100750065007200790035004C00540054003000340001004C00540054003000
      34000100010001000D000A00510075006500720079003100570052004B005F00
      4400410059000100570052004B005F004400410059000100010001000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A005400660072006D007300680069006600740001004D005300200053006100
      6E00730020005300650072006900660001005400610068006F006D0061000100
      01000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740044006C00670073004300
      61007000740069006F006E0073005F0055006E00690063006F00640065000D00
      0A005700610072006E0069006E00670001005700610072006E0069006E006700
      0100010001000D000A004500720072006F00720001004500720072006F007200
      0100010001000D000A0049006E0066006F0072006D006100740069006F006E00
      010049006E0066006F0072006D006100740069006F006E000100010001000D00
      0A0043006F006E006600690072006D00010043006F006E006600690072006D00
      0100010001000D000A0059006500730001002600590065007300010001000100
      0D000A004E006F00010026004E006F000100010001000D000A004F004B000100
      4F004B000100010001000D000A00430061006E00630065006C00010043006100
      6E00630065006C000100010001000D000A00410062006F007200740001002600
      410062006F00720074000100010001000D000A00520065007400720079000100
      2600520065007400720079000100010001000D000A00490067006E006F007200
      650001002600490067006E006F00720065000100010001000D000A0041006C00
      6C000100260041006C006C000100010001000D000A004E006F00200054006F00
      200041006C006C0001004E0026006F00200074006F00200041006C006C000100
      010001000D000A00590065007300200054006F00200041006C006C0001005900
      65007300200074006F002000260041006C006C000100010001000D000A004800
      65006C00700001002600480065006C0070000100010001000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A005100750065007200790031002E00
      43006F006D006D0061006E00640054006500780074000100730065006C006500
      6300740020002A002000660072006F006D002000740062006C005F0073006800
      6900660074000100010001000D000A005100750065007200790031002E005000
      72006F00760069006400650072004E0061006D00650001006400730070007300
      630068006500640075006C0065000100010001000D000A005100750065007200
      790031005300450051002E004F0072006900670069006E000100220054004200
      4C005F005300480049004600540022002E002200530045005100220001000100
      01000D000A005100750065007200790031005300460054002E004F0072006900
      670069006E0001002200540042004C005F005300480049004600540022002E00
      220053004600540022000100010001000D000A00510075006500720079003100
      53004600540043002E004F0072006900670069006E0001002200540042004C00
      5F005300480049004600540022002E0022005300460054004300220001000100
      01000D000A0051007500650072007900310053005400300031002E004F007200
      6900670069006E0001002200540042004C005F00530048004900460054002200
      2E002200530054003000310022000100010001000D000A005100750065007200
      7900310045005400300031002E004F0072006900670069006E00010022005400
      42004C005F005300480049004600540022002E00220045005400300031002200
      0100010001000D000A0051007500650072007900310054005400300031002E00
      4F0072006900670069006E0001002200540042004C005F005300480049004600
      540022002E002200540054003000310022000100010001000D000A0051007500
      65007200790031004C0054005300300031002E004F0072006900670069006E00
      01002200540042004C005F005300480049004600540022002E0022004C005400
      53003000310022000100010001000D000A005100750065007200790031004C00
      54004500300031002E004F0072006900670069006E0001002200540042004C00
      5F005300480049004600540022002E0022004C00540045003000310022000100
      010001000D000A005100750065007200790031004C0054005400300031002E00
      4F0072006900670069006E0001002200540042004C005F005300480049004600
      540022002E0022004C00540054003000310022000100010001000D000A005100
      7500650072007900310053005400300032002E004F0072006900670069006E00
      01002200540042004C005F005300480049004600540022002E00220053005400
      3000320022000100010001000D000A0051007500650072007900310045005400
      300032002E004F0072006900670069006E0001002200540042004C005F005300
      480049004600540022002E002200450054003000320022000100010001000D00
      0A0051007500650072007900310054005400300032002E004F00720069006700
      69006E0001002200540042004C005F005300480049004600540022002E002200
      540054003000320022000100010001000D000A00510075006500720079003100
      4C0054005300300032002E004F0072006900670069006E000100220054004200
      4C005F005300480049004600540022002E0022004C0054005300300032002200
      0100010001000D000A005100750065007200790031004C005400450030003200
      2E004F0072006900670069006E0001002200540042004C005F00530048004900
      4600540022002E0022004C00540045003000320022000100010001000D000A00
      5100750065007200790031004C0054005400300032002E004F00720069006700
      69006E0001002200540042004C005F005300480049004600540022002E002200
      4C00540054003000320022000100010001000D000A0051007500650072007900
      310053005400300033002E004F0072006900670069006E000100220054004200
      4C005F005300480049004600540022002E002200530054003000330022000100
      010001000D000A0051007500650072007900310045005400300033002E004F00
      72006900670069006E0001002200540042004C005F0053004800490046005400
      22002E002200450054003000330022000100010001000D000A00510075006500
      72007900310054005400300033002E004F0072006900670069006E0001002200
      540042004C005F005300480049004600540022002E0022005400540030003300
      22000100010001000D000A005100750065007200790031005300540030003400
      2E004F0072006900670069006E0001002200540042004C005F00530048004900
      4600540022002E002200530054003000340022000100010001000D000A005100
      7500650072007900310045005400300034002E004F0072006900670069006E00
      01002200540042004C005F005300480049004600540022002E00220045005400
      3000340022000100010001000D000A0051007500650072007900310054005400
      300034002E004F0072006900670069006E0001002200540042004C005F005300
      480049004600540022002E002200540054003000340022000100010001000D00
      0A00510075006500720079003100540054002E004F0072006900670069006E00
      01002200540042004C005F005300480049004600540022002E00220054005400
      22000100010001000D000A005100750065007200790031004C00540054002E00
      4F0072006900670069006E0001002200540042004C005F005300480049004600
      540022002E0022004C005400540022000100010001000D000A00510075006500
      720079003100540050004C0041004E0054002E004F0072006900670069006E00
      01002200540042004C005F005300480049004600540022002E00220054005000
      4C0041004E00540022000100010001000D000A00510075006500720079003100
      4C0054005300300033002E004F0072006900670069006E000100220054004200
      4C005F005300480049004600540022002E0022004C0054005300300033002200
      0100010001000D000A005100750065007200790031004C005400450030003300
      2E004F0072006900670069006E0001002200540042004C005F00530048004900
      4600540022002E0022004C00540045003000330022000100010001000D000A00
      5100750065007200790031004C0054005400300033002E004F00720069006700
      69006E0001002200540042004C005F005300480049004600540022002E002200
      4C00540054003000330022000100010001000D000A0051007500650072007900
      31004C0054005300300034002E004F0072006900670069006E00010022005400
      42004C005F005300480049004600540022002E0022004C005400530030003400
      22000100010001000D000A005100750065007200790031004C00540045003000
      34002E004F0072006900670069006E0001002200540042004C005F0053004800
      49004600540022002E0022004C00540045003000340022000100010001000D00
      0A005100750065007200790031004C0054005400300034002E004F0072006900
      670069006E0001002200540042004C005F005300480049004600540022002E00
      22004C00540054003000340022000100010001000D000A005100750065007200
      790032002E00500072006F00760069006400650072004E0061006D0065000100
      6400730070007300630068006500640075006C0065000100010001000D000A00
      5100750065007200790033002E00500072006F00760069006400650072004E00
      61006D00650001006400730070007300630068006500640075006C0065000100
      010001000D000A005100750065007200790034002E0043006F006D006D006100
      6E00640054006500780074000100730065006C0065006300740020002A002000
      660072006F006D002000740062006C005F007300680069006600740001000100
      01000D000A005100750065007200790034002E00500072006F00760069006400
      650072004E0061006D0065000100640073007000730063006800650064007500
      6C0065000100010001000D000A0043006C00690065006E007400440061007400
      610053006500740032002E00500072006F00760069006400650072004E006100
      6D00650001006400730070007300630068006500640075006C00650001000100
      01000D000A005100750065007200790035002E0043006F006D006D0061006E00
      640054006500780074000100730065006C0065006300740020002A0020006600
      72006F006D002000740062006C005F0073006800690066007400010001000100
      0D000A005100750065007200790035002E00500072006F007600690064006500
      72004E0061006D00650001006400730070007300630068006500640075006C00
      65000100010001000D000A0053006100760065004400690061006C006F006700
      31002E00460069006C0074006500720001002A002E0078006C0073007C002A00
      2E0078006C0073000100010001000D000A00730074004C006F00630061006C00
      650073005F0055006E00690063006F00640065000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0030005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100E05E0100460074007900010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B0031005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001003C50ED73E34E5F86010053006800690066007400200043006F006400
      6500010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0032005D002E005400690074006C0065002E00
      430061007000740069006F006E0001003C50E565010053006800690066007400
      20004400610074006500010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B0033005D002E0054006900
      74006C0065002E00430061007000740069006F006E000100E55D5C4F29597865
      010057006F0072006B0069006E00670020004400610079007300010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0034005D002E005400690074006C0065002E004300610070007400
      69006F006E000100636B385E2D0031002000280043006F00640065003A002000
      4E00310029007C000A4EED73426693957C00317501004E003100200028004300
      6F00640065003A0020004E00310029007C0057006F0072006B0069006E006700
      20004800720073007C00460072006F006D00010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003500
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      636B385E2D0031002000280043006F00640065003A0020004E00310029007C00
      0A4EED73426693957C00F38101004E0031002000280043006F00640065003A00
      20004E00310029007C0057006F0072006B0069006E0067002000480072007300
      7C0054006F00010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0036005D002E005400690074006C00
      65002E00430061007000740069006F006E000100636B385E2D00310020002800
      43006F00640065003A0020004E00310029007C000854088A01004E0031002000
      280043006F00640065003A0020004E00310029007C00540074006C0001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0037005D002E005400690074006C0065002E00430061007000
      740069006F006E000100636B385E2D0031002000280043006F00640065003A00
      20004E00310029007C000F5C114F4266939501004E0031002000280043006F00
      640065003A0020004E00310029007C0052006500730074002000540069006D00
      6500010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0038005D002E005400690074006C0065002E00
      430061007000740069006F006E000100636B385E2D0032002000280043006F00
      640065003A0020004E00320029007C000A4EED73426693957C00317501004E00
      32002000280043006F00640065003A0020004E00320029007C0057006F007200
      6B0069006E00670020004800720073007C00460072006F006D00010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0039005D002E005400690074006C0065002E004300610070007400
      69006F006E000100636B385E2D0032002000280043006F00640065003A002000
      4E00320029007C000A4EED73426693957C00F38101004E003200200028004300
      6F00640065003A0020004E00320029007C0057006F0072006B0069006E006700
      20004800720073007C0054006F00010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B00310030005D00
      2E005400690074006C0065002E00430061007000740069006F006E000100636B
      385E2D0032002000280043006F00640065003A0020004E00320029007C000854
      088A01004E0032002000280043006F00640065003A0020004E00320029007C00
      540074006C00010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B00310031005D002E00540069007400
      6C0065002E00430061007000740069006F006E000100636B385E2D0032002000
      280043006F00640065003A0020004E00320029007C000F5C114F426693950100
      4E0032002000280043006F00640065003A0020004E00320029007C0052006500
      730074002000540069006D006500010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B00310032005D00
      2E005400690074006C0065002E00430061007000740069006F006E000100A052
      ED7331002000280043006F00640065003A0020004F005400310029007C000A4E
      ED73426693957C00317501004F00540031002000280043006F00640065003A00
      20004F005400310029007C0057006F0072006B0069006E006700200048007200
      73007C00460072006F006D00010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B00310033005D002E00
      5400690074006C0065002E00430061007000740069006F006E000100A052ED73
      31002000280043006F00640065003A0020004F005400310029007C000A4EED73
      426693957C00F38101004F00540031002000280043006F00640065003A002000
      4F005400310029007C0057006F0072006B0069006E0067002000480072007300
      7C0054006F00010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B00310034005D002E00540069007400
      6C0065002E00430061007000740069006F006E000100A052ED73310020002800
      43006F00640065003A0020004F005400310029007C000854088A01004F005400
      31002000280043006F00640065003A0020004F005400310029007C0054007400
      6C00010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B00310035005D002E005400690074006C006500
      2E00430061007000740069006F006E000100A052ED7331002000280043006F00
      640065003A0020004F005400310029007C000F5C114F4266939501004F005400
      31002000280043006F00640065003A0020004F005400310029007C0052006500
      730074002000540069006D006500010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B00310036005D00
      2E005400690074006C0065002E00430061007000740069006F006E000100A052
      ED7332002000280043006F00640065003A0020004F005400320029007C000A4E
      ED73426693957C00317501004F00540032002000280043006F00640065003A00
      20004F005400320029007C0057006F0072006B0069006E006700200048007200
      73007C00460072006F006D00010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B00310037005D002E00
      5400690074006C0065002E00430061007000740069006F006E000100A052ED73
      32002000280043006F00640065003A0020004F005400320029007C000A4EED73
      426693957C00F38101004F00540032002000280043006F00640065003A002000
      4F005400320029007C0057006F0072006B0069006E0067002000480072007300
      7C0054006F00010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B00310038005D002E00540069007400
      6C0065002E00430061007000740069006F006E000100A052ED73320020002800
      43006F00640065003A0020004F005400320029007C000854088A01004F005400
      32002000280043006F00640065003A0020004F005400320029007C0054007400
      6C00010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B00310039005D002E005400690074006C006500
      2E00430061007000740069006F006E000100A052ED7332002000280043006F00
      640065003A0020004F005400320029007C000F5C114F4266939501004F005400
      32002000280043006F00640065003A0020004F005400320029007C0052006500
      730074002000540069006D006500010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B00320030005D00
      2E005400690074006C0065002E00430061007000740069006F006E000100FD8F
      ED732000280043006F00640065003A00200043007300540029007C000A4EED73
      426693957C00317501004300730074002000280043006F00640065003A002000
      43007300740029007C0057006F0072006B0069006E0067002000480072007300
      7C00460072006F006D00010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B00320031005D002E005400
      690074006C0065002E00430061007000740069006F006E000100FD8FED732000
      280043006F00640065003A00200043007300540029007C000A4EED7342669395
      7C00F38101004300730074002000280043006F00640065003A00200043007300
      740029007C0057006F0072006B0069006E00670020004800720073007C005400
      6F00010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B00320032005D002E005400690074006C006500
      2E00430061007000740069006F006E000100FD8FED732000280043006F006400
      65003A00200043007300540029007C000854088A010043007300740020002800
      43006F00640065003A00200043007300740029007C00540074006C0001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B00320033005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001003D7E426693957C000A4EED734266939501005400
      74006C0020004800720073007C0057006F0072006B0069006E00670020004800
      72007300010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B00320034005D002E005400690074006C00
      65002E00430061007000740069006F006E0001003D7E426693957C000F5C114F
      426693950100540074006C0020004800720073007C0052006500730074002000
      540069006D006500010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B00320035005D002E0054006900
      74006C0065002E00430061007000740069006F006E000100096748651F677C00
      9E5F010045006600660065006300740069007600650020004400610074006500
      7C00460072006F006D00010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B00320036005D002E005400
      690074006C0065002E00430061007000740069006F006E000100096748651F67
      7C00305201004500660066006500630074006900760065002000440061007400
      65007C0054006F00010001000D000A005100750065007200790031002E004900
      6E0064006500780044006500660073005B0030005D002E004600690065006C00
      6400730001007300650071000100010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B00320037005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001009950
      3B8A0100520065006D00610072006B007300010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A005400660072006D0073006800690066007400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00}
  end
end
