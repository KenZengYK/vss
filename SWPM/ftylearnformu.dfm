object frmftylearn: Tfrmftylearn
  Left = 154
  Top = 98
  Caption = 'Start Phase of PLC (new style)'
  ClientHeight = 415
  ClientWidth = 803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 374
    Width = 803
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'AddNew'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Delete'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 168
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn5: TBitBtn
      Left = 600
      Top = 6
      Width = 89
      Height = 25
      Caption = 'Select Phase'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      TabOrder = 3
      Visible = False
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 240
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
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
      TabOrder = 4
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 312
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 803
    Height = 341
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    RowDetailPanel.Color = clBtnFace
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Fty'
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        Title.Caption = 'Proj Code'#13#10'(for customer chosen)'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'PTYP'
        Footers = <>
        PickList.Strings = (
          'B'
          'K'
          'U'
          'S')
        Title.Caption = 'Prdt'#13#10'Cate'#13#10'-gory'
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'FLR'
        Footers = <>
        Title.Caption = 'Start phase of PLC (new Style)'
        Width = 39
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'FLR'
        Footers = <>
        Title.Caption = 'Default CT|Start'
        Width = 27
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'TLR'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Default CT|End'
        Width = 30
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'TR'
        Footers = <>
        Title.Caption = 'Default CT|Ttl Sects'
        Width = 37
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Planning Line Eff (Group)|Ave'
        Width = 45
      end
      item
        DisplayFormat = '#0;-#0;'#39#39
        EditButtons = <>
        FieldName = 'GRADE'
        Footers = <>
        Title.Caption = 'Rank'#13#10'-ing'
        Width = 26
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'RANK'
        Footers = <>
        Title.Caption = 'Approval(new style only)|Cfmd by'
        Width = 49
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'EDT'
        Footers = <>
        Title.Caption = 'Approval(new style only)|Effective date'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'RGRP'
        Footers = <>
        Title.Caption = 'Section Hr by Phase|Combination'
        Visible = False
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'LR1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No. of section per phase|1st'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'LR2'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No. of section per phase|2nd'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'LR3'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No. of section per phase|3rd'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'LR4'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No. of section per phase|4th'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'LR5'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No. of section per phase|5th'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'LR6'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No. of section per phase|6th'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'LR7'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No. of section per phase|7th'
        Width = 40
      end
      item
        Color = 13365228
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'LR8'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No. of section per phase|8th'
        Width = 40
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR9'
        Footers = <>
        Title.Caption = 'No. of section per phase|9th'
        Width = 40
      end
      item
        Color = 13365228
        EditButtons = <>
        FieldName = 'LR10'
        Footers = <>
        Title.Caption = 'No. of section per phase|10th'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'EGRP'
        Footers = <>
        Title.Caption = 'Opt Perf % by Phase|Combination'
        Visible = False
        Width = 35
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Eff% per phase|1st'
        Width = 42
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE2'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Eff% per phase|2nd'
        Width = 42
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE3'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Eff% per phase|3rd'
        Width = 42
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE4'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Eff% per phase|4th'
        Width = 42
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE5'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Eff% per phase|5th'
        Width = 42
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE6'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Eff% per phase|6th'
        Width = 42
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE7'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Eff% per phase|7th'
        Width = 42
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE8'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Eff% per phase|8th'
        Width = 42
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE9'
        Footers = <>
        Title.Caption = 'Eff% per phase|9th'
        Width = 42
      end
      item
        Color = 13365228
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'LE10'
        Footers = <>
        Title.Caption = 'Eff% per phase|10th'
        Width = 42
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 16
      Height = 13
      Caption = 'Fty'
    end
    object SpeedButton1: TSpeedButton
      Left = 736
      Top = 5
      Width = 129
      Height = 22
      Caption = 'Current Version'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
        33333333373F33333333333330B03333333333337F7F33333333333330F03333
        333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
        333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
        333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
        3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
        33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
        33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
        03333337777777F7F33333330000000003333337777777773333}
      NumGlyphs = 2
      Visible = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 864
      Top = 5
      Width = 129
      Height = 22
      Caption = 'New Plan'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      Visible = False
      OnClick = SpeedButton2Click
    end
    object ComboBox1: TComboBox
      Left = 56
      Top = 8
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'SL'
        'GG'
        'RX'
        'CL')
    end
    object BitBtn4: TBitBtn
      Left = 248
      Top = 3
      Width = 81
      Height = 25
      Caption = 'Standard'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn8: TBitBtn
      Left = 384
      Top = 2
      Width = 121
      Height = 25
      Caption = 'Opt Difficulty'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BitBtn8Click
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblplant_learn'
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CUST'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PTYP'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'LR1'
        DataType = ftFloat
      end
      item
        Name = 'LR2'
        DataType = ftFloat
      end
      item
        Name = 'LR3'
        DataType = ftFloat
      end
      item
        Name = 'LR4'
        DataType = ftFloat
      end
      item
        Name = 'LR5'
        DataType = ftFloat
      end
      item
        Name = 'LR6'
        DataType = ftFloat
      end
      item
        Name = 'LE1'
        DataType = ftFloat
      end
      item
        Name = 'LE2'
        DataType = ftFloat
      end
      item
        Name = 'LE3'
        DataType = ftFloat
      end
      item
        Name = 'LE4'
        DataType = ftFloat
      end
      item
        Name = 'LE5'
        DataType = ftFloat
      end
      item
        Name = 'LE6'
        DataType = ftFloat
      end
      item
        Name = 'LE'
        DataType = ftFloat
      end
      item
        Name = 'LE7'
        DataType = ftFloat
      end
      item
        Name = 'LE8'
        DataType = ftFloat
      end
      item
        Name = 'LR7'
        DataType = ftFloat
      end
      item
        Name = 'LR8'
        DataType = ftFloat
      end
      item
        Name = 'RGRP'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EGRP'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FLR'
        DataType = ftInteger
      end
      item
        Name = 'TLR'
        DataType = ftFloat
      end
      item
        Name = 'TR'
        DataType = ftFloat
      end
      item
        Name = 'LE9'
        DataType = ftFloat
      end
      item
        Name = 'LE10'
        DataType = ftFloat
      end
      item
        Name = 'LR9'
        DataType = ftFloat
      end
      item
        Name = 'LR10'
        DataType = ftFloat
      end
      item
        Name = 'EDT'
        DataType = ftDate
      end
      item
        Name = 'RANK'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SR'
        DataType = ftInteger
      end
      item
        Name = 'GRADE'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;sr;rank;cust;ptyp'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 208
    Top = 304
    object Query1TPLANT: TWideStringField
      FieldName = 'TPLANT'
      Origin = '"TBLPLANT_LEARN"."TPLANT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = Query1TPLANTChange
      Size = 10
    end
    object Query1SEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = '"TBLPLANT_LEARN"."SEQ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query1CUST: TWideStringField
      FieldName = 'CUST'
      Origin = '"TBLPLANT_LEARN"."CUST"'
      Size = 10
    end
    object Query1PTYP: TWideStringField
      FieldName = 'PTYP'
      Origin = '"TBLPLANT_LEARN"."PTYP"'
      OnChange = Query1PTYPChange
    end
    object Query1LR1: TFloatField
      FieldName = 'LR1'
      Origin = '"TBLPLANT_LEARN"."LR1"'
    end
    object Query1LR2: TFloatField
      FieldName = 'LR2'
      Origin = '"TBLPLANT_LEARN"."LR2"'
    end
    object Query1LR3: TFloatField
      FieldName = 'LR3'
      Origin = '"TBLPLANT_LEARN"."LR3"'
    end
    object Query1LR4: TFloatField
      FieldName = 'LR4'
      Origin = '"TBLPLANT_LEARN"."LR4"'
    end
    object Query1LR5: TFloatField
      FieldName = 'LR5'
      Origin = '"TBLPLANT_LEARN"."LR5"'
    end
    object Query1LR6: TFloatField
      FieldName = 'LR6'
      Origin = '"TBLPLANT_LEARN"."LR6"'
    end
    object Query1LE1: TFloatField
      FieldName = 'LE1'
      Origin = '"TBLPLANT_LEARN"."LE1"'
    end
    object Query1LE2: TFloatField
      FieldName = 'LE2'
      Origin = '"TBLPLANT_LEARN"."LE2"'
    end
    object Query1LE3: TFloatField
      FieldName = 'LE3'
      Origin = '"TBLPLANT_LEARN"."LE3"'
    end
    object Query1LE4: TFloatField
      FieldName = 'LE4'
      Origin = '"TBLPLANT_LEARN"."LE4"'
    end
    object Query1LE5: TFloatField
      FieldName = 'LE5'
      Origin = '"TBLPLANT_LEARN"."LE5"'
    end
    object Query1LE6: TFloatField
      FieldName = 'LE6'
      Origin = '"TBLPLANT_LEARN"."LE6"'
    end
    object Query1LE: TFloatField
      FieldName = 'LE'
      Origin = '"TBLPLANT_LEARN"."LE"'
    end
    object Query1LE7: TFloatField
      FieldName = 'LE7'
      Origin = '"TBLPLANT_LEARN"."LE7"'
    end
    object Query1LE8: TFloatField
      FieldName = 'LE8'
      Origin = '"TBLPLANT_LEARN"."LE8"'
    end
    object Query1LR7: TFloatField
      FieldName = 'LR7'
      Origin = '"TBLPLANT_LEARN"."LR7"'
    end
    object Query1LR8: TFloatField
      FieldName = 'LR8'
      Origin = '"TBLPLANT_LEARN"."LR8"'
    end
    object Query1RGRP: TWideStringField
      FieldName = 'RGRP'
      Origin = '"TBLPLANT_LEARN"."RGRP"'
    end
    object Query1EGRP: TWideStringField
      FieldName = 'EGRP'
      Origin = '"TBLPLANT_LEARN"."EGRP"'
    end
    object Query1FLR: TIntegerField
      FieldName = 'FLR'
      Origin = '"TBLPLANT_LEARN"."FLR"'
      OnChange = Query1LR1Change
    end
    object Query1TLR: TFloatField
      FieldName = 'TLR'
      Origin = '"TBLPLANT_LEARN"."TLR"'
    end
    object Query1TR: TFloatField
      FieldName = 'TR'
      Origin = '"TBLPLANT_LEARN"."TR"'
      OnChange = Query1LR1Change
    end
    object Query1LE9: TFloatField
      FieldName = 'LE9'
      Origin = '"TBLPLANT_LEARN"."LE9"'
    end
    object Query1LE10: TFloatField
      FieldName = 'LE10'
      Origin = '"TBLPLANT_LEARN"."LE10"'
    end
    object Query1LR9: TFloatField
      FieldName = 'LR9'
      Origin = '"TBLPLANT_LEARN"."LR9"'
    end
    object Query1LR10: TFloatField
      FieldName = 'LR10'
      Origin = '"TBLPLANT_LEARN"."LR10"'
    end
    object Query1EDT: TDateField
      FieldName = 'EDT'
      Origin = '"TBLPLANT_LEARN"."EDT"'
    end
    object Query1SR: TIntegerField
      FieldName = 'SR'
      Origin = '"TBLPLANT_LEARN"."SR"'
    end
    object Query1RANK: TWideStringField
      FieldName = 'RANK'
      Origin = '"TBLPLANT_LEARN"."RANK"'
    end
    object Query1GRADE: TIntegerField
      FieldName = 'GRADE'
      Origin = '"TBLPLANT_LEARN"."GRADE"'
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 240
    Top = 304
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 272
    Top = 304
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 304
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 336
    Top = 304
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 368
    Top = 304
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
    Left = 400
    Top = 304
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 32544
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 14023
        mmLeft = 794
        mmTop = 18521
        mmWidth = 282840
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27573#23416#22987#27573#35373#23450' ('#26032#27454') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6773
        mmLeft = 42069
        mmTop = 3969
        mmWidth = 110861
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
        mmHeight = 14023
        mmLeft = 191030
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
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
        mmLeft = 32279
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#36984#25799#23458'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 7408
        mmTop = 23019
        mmWidth = 8509
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29986#21697' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 17727
        mmTop = 19050
        mmWidth = 6562
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
        mmHeight = 14023
        mmLeft = 24606
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27599#27573#25289#25928#29575'%  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 227278
        mmTop = 19050
        mmWidth = 18711
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
        mmHeight = 14023
        mmLeft = 61913
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35336#21123#24615' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 64294
        mmTop = 19050
        mmWidth = 8128
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#21152#27402#24179#22343')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 62706
        mmTop = 26988
        mmWidth = 11684
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25171#21360#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 224367
        mmTop = 13494
        mmWidth = 12234
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
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 240242
        mmTop = 13494
        mmWidth = 635
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38913#30908' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 261673
        mmTop = 13494
        mmWidth = 6562
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
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 270140
        mmTop = 13494
        mmWidth = 635
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#19968' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 192617
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#20108' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 201877
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#19977' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 211138
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#22235' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 220398
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#20116' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 229659
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#20845' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 238919
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#19971' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 248180
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#20843' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 257440
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27599#27573#31680#26178' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 145257
        mmTop = 19050
        mmWidth = 12234
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#19968' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 115094
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#20108' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 122767
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#19977' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 130440
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#22235' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 138113
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#20116' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 145786
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#20845' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 153459
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#19971' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 161132
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#20843' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 168805
        mmTop = 23813
        mmWidth = 5673
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
        mmHeight = 14023
        mmLeft = 6350
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #39006' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 18785
        mmTop = 23019
        mmWidth = 3725
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 111919
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38928#35373#26178#38480' (Default CT) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 33073
        mmTop = 19050
        mmWidth = 28448
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 48948
        mmTop = 23019
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#20061' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 176477
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#21313' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 184415
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#20061' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 266701
        mmTop = 23813
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31532#21313' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 276226
        mmTop = 23813
        mmWidth = 5673
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
        Caption = '(GD) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6773
        mmLeft = 153988
        mmTop = 3969
        mmWidth = 38894
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 16933
        mmTop = 18521
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label402'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27573#23416' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 25400
        mmTop = 19050
        mmWidth = 6562
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22987#27573' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 25400
        mmTop = 23019
        mmWidth = 6562
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label403'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24288' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1852
        mmTop = 23283
        mmWidth = 3725
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label404'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#31243#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 6879
        mmTop = 19050
        mmWidth = 9398
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23433#25490#25928#29575' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 63236
        mmTop = 23019
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22987#40670' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 33073
        mmTop = 23813
        mmWidth = 6562
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32066#40670' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 41540
        mmTop = 23813
        mmWidth = 6562
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32317#31680' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 52917
        mmTop = 23813
        mmWidth = 6562
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 82021
        mmTop = 23019
        mmWidth = 201348
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25142#29992')  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 8467
        mmTop = 26988
        mmWidth = 6392
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35373#23450' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 25400
        mmTop = 26988
        mmWidth = 6562
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26178#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 52917
        mmTop = 28046
        mmWidth = 6562
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 32279
        mmTop = 23019
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 248180
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 257440
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 115094
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 122767
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 130440
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 138113
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 145786
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 153459
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 161132
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 192617
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 201877
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 211138
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 220398
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 229659
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 238919
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 168805
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 176477
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 184415
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 266701
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#27573'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 276226
        mmTop = 28046
        mmWidth = 5503
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 74877
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25209#26680' ('#21482#29992#26044#26032#27454') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 87577
        mmTop = 19050
        mmWidth = 20574
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #30906#23450#20154' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 85196
        mmTop = 26458
        mmWidth = 8128
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26377#25928#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 100013
        mmTop = 26458
        mmWidth = 10583
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 98161
        mmTop = 23019
        mmWidth = 3704
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 82021
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35413#32026' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 75936
        mmTop = 23283
        mmWidth = 5673
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5821
        mmLeft = 794
        mmTop = 0
        mmWidth = 282840
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 6350
        mmTop = 265
        mmWidth = 3704
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 191030
        mmTop = 0
        mmWidth = 529
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
        mmHeight = 5821
        mmLeft = 32279
        mmTop = 0
        mmWidth = 3704
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
        mmHeight = 5821
        mmLeft = 24606
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 61913
        mmTop = 0
        mmWidth = 3704
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
        DataField = 'CUST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 6879
        mmTop = 1323
        mmWidth = 6773
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
        DataField = 'PTYP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 18521
        mmTop = 1323
        mmWidth = 6435
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
        DataField = 'LE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 69882
        mmTop = 1323
        mmWidth = 2625
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
        DataField = 'TPLANT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 9864
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 111919
        mmTop = 0
        mmWidth = 3704
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
        mmHeight = 5821
        mmLeft = 48948
        mmTop = 0
        mmWidth = 3704
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
        DataField = 'FLR'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 31305
        mmTop = 1323
        mmWidth = 4657
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
        DataField = 'TLR'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 42990
        mmTop = 1323
        mmWidth = 4826
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
        mmHeight = 5821
        mmLeft = 16933
        mmTop = 0
        mmWidth = 3704
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
        DataField = 'FLR'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 24690
        mmTop = 1323
        mmWidth = 4657
        BandType = 4
      end
      object lr001: TppLabel
        UserName = 'lr001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 114565
        mmTop = 1323
        mmWidth = 6350
        BandType = 4
      end
      object lr002: TppLabel
        UserName = 'lr002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 122238
        mmTop = 1323
        mmWidth = 6350
        BandType = 4
      end
      object lr003: TppLabel
        UserName = 'lr003'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 129911
        mmTop = 1323
        mmWidth = 6350
        BandType = 4
      end
      object lr004: TppLabel
        UserName = 'lr004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 137584
        mmTop = 1323
        mmWidth = 6350
        BandType = 4
      end
      object lr005: TppLabel
        UserName = 'lr005'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 145257
        mmTop = 1323
        mmWidth = 6350
        BandType = 4
      end
      object lr006: TppLabel
        UserName = 'lr006'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 152929
        mmTop = 1323
        mmWidth = 6350
        BandType = 4
      end
      object lr007: TppLabel
        UserName = 'lr007'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 160602
        mmTop = 1323
        mmWidth = 6350
        BandType = 4
      end
      object lr008: TppLabel
        UserName = 'lr008'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 168275
        mmTop = 1323
        mmWidth = 6350
        BandType = 4
      end
      object lr009: TppLabel
        UserName = 'lr009'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 175948
        mmTop = 1323
        mmWidth = 6350
        BandType = 4
      end
      object lr010: TppLabel
        UserName = 'lr010'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 183886
        mmTop = 1323
        mmWidth = 6350
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
        DataField = 'TR'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 55774
        mmTop = 1323
        mmWidth = 3429
        BandType = 4
      end
      object le001: TppLabel
        UserName = 'le001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '105.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 191823
        mmTop = 1323
        mmWidth = 7938
        BandType = 4
      end
      object le002: TppLabel
        UserName = 'le002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 201084
        mmTop = 1323
        mmWidth = 7938
        BandType = 4
      end
      object le003: TppLabel
        UserName = 'le003'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 210344
        mmTop = 1323
        mmWidth = 7938
        BandType = 4
      end
      object le004: TppLabel
        UserName = 'le004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 219605
        mmTop = 1323
        mmWidth = 7938
        BandType = 4
      end
      object le005: TppLabel
        UserName = 'le005'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 228865
        mmTop = 1323
        mmWidth = 7938
        BandType = 4
      end
      object le006: TppLabel
        UserName = 'le006'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 238125
        mmTop = 1323
        mmWidth = 7938
        BandType = 4
      end
      object le007: TppLabel
        UserName = 'le007'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 247386
        mmTop = 1323
        mmWidth = 7938
        BandType = 4
      end
      object le008: TppLabel
        UserName = 'le008'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 256646
        mmTop = 1323
        mmWidth = 7938
        BandType = 4
      end
      object le009: TppLabel
        UserName = 'le009'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 265907
        mmTop = 1323
        mmWidth = 7938
        BandType = 4
      end
      object le010: TppLabel
        UserName = 'le010'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 274903
        mmTop = 1323
        mmWidth = 7938
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 74877
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 98161
        mmTop = 0
        mmWidth = 3704
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
        DataField = 'EDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yy-mm-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 99219
        mmTop = 1323
        mmWidth = 5165
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 82021
        mmTop = 0
        mmWidth = 3704
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
        DataField = 'GRADE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 75936
        mmTop = 1323
        mmWidth = 8890
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
        DataField = 'RANK'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 83079
        mmTop = 1323
        mmWidth = 7027
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'SR'
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
        BeforePrint = ppGroupHeaderBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object sr001: TppLabel
          UserName = 'sr001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3429
          mmLeft = 13758
          mmTop = 529
          mmWidth = 53975
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object siLang1: TsiLang
    Version = '7.6.0.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    ActiveLanguage = 2
    LangDelim = 1
    LangNames.Strings = (
      'Traditional Chinese'
      'English'
      'Bengali')
    Language = 'English'
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
    Left = 456
    Top = 240
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D006600740079006C006500610072006E00
      0100B56B785BCB59B56B2D8A9A5B2800B0653E6B290001005300740061007200
      740020005000680061007300650020006F006600200050004C00430020002800
      6E006500770020007300740079006C0065002900010001000D000A0042006900
      7400420074006E0031000100B0659E58A25B366201004100640064004E006500
      7700010001000D000A00420069007400420074006E00320001002A526496A25B
      36620100440065006C00650074006500010001000D000A004200690074004200
      74006E0033000100DD4F585B01005300610076006500010001000D000A004200
      69007400420074006E0035000100530065006C00650063007400200050006800
      6100730065000100010001000D000A00420069007400420074006E0036000100
      1098BD8901005000720065007600690065007700010001000D000A0042006900
      7400420074006E00370001000090FA5101004500780069007400010001000D00
      0A004C006100620065006C0031000100E05E2000010046007400790001000100
      0D000A005300700065006500640042007500740074006F006E00310001004300
      75007200720065006E0074002000560065007200730069006F006E0001000100
      01000D000A005300700065006500640042007500740074006F006E0032000100
      4E0065007700200050006C0061006E000100010001000D000A00420069007400
      420074006E0034000100196A966E01005300740061006E006400610072006400
      010001000D000A00420069007400420074006E0038000100B0653E6BE55D8F5E
      E3961366A65E01004F0070007400200044006900660066006900630075006C00
      74007900010001000D000A00700070004C006100620065006C0032000100B56B
      785BCB59B56B2D8A9A5B20002800B0653E6B290020000100010001000D000A00
      700070004C006100620065006C003300010028007890C764A25B200020000100
      010001000D000A00700070004C006100620065006C00340001002275C1542000
      0100010001000D000A00700070004C006100620065006C0036000100CF6BB56B
      C962486587732500200020000100010001000D000A00700070004C0061006200
      65006C0037000100088A8352276020000100010001000D000A00700070004C00
      6100620065006C00380001002800A0520A6B735E475729000100010001000D00
      0A00700070004C006100620065006C0031003800010053627053E5651F672000
      0100010001000D000A00700070004C006100620065006C003100390001000198
      BC7820000100010001000D000A00700070004C006100620065006C0032003200
      01002C7B004E20000100010001000D000A00700070004C006100620065006C00
      3200330001002C7B8C4E20000100010001000D000A00700070004C0061006200
      65006C003200340001002C7B094E20000100010001000D000A00700070004C00
      6100620065006C003200350001002C7BDB5620000100010001000D000A007000
      70004C006100620065006C003200360001002C7B944E20000100010001000D00
      0A00700070004C006100620065006C003200370001002C7B6D51200001000100
      01000D000A00700070004C006100620065006C003100300001002C7B034E2000
      0100010001000D000A00700070004C006100620065006C003100310001002C7B
      6B5120000100010001000D000A00700070004C006100620065006C0039000100
      CF6BB56BC07B426620000100010001000D000A00700070004C00610062006500
      6C003100320001002C7B004E20000100010001000D000A00700070004C006100
      620065006C003100330001002C7B8C4E20000100010001000D000A0070007000
      4C006100620065006C003100340001002C7B094E20000100010001000D000A00
      700070004C006100620065006C003100360001002C7BDB562000010001000100
      0D000A00700070004C006100620065006C003100370001002C7B944E20000100
      010001000D000A00700070004C006100620065006C003200300001002C7B6D51
      20000100010001000D000A00700070004C006100620065006C00320031000100
      2C7B034E20000100010001000D000A00700070004C006100620065006C003200
      380001002C7B6B5120000100010001000D000A00700070004C00610062006500
      6C00310001005E9820000100010001000D000A00700070004C00610062006500
      6C0033003000010010982D8A4266509620002800440065006600610075006C00
      7400200043005400290020000100010001000D000A00700070004C0061006200
      65006C003300360001002C7B5D4E20000100010001000D000A00700070004C00
      6100620065006C003300370001002C7B415320000100010001000D000A007000
      70004C006100620065006C003300380001002C7B5D4E20000100010001000D00
      0A00700070004C006100620065006C003300390001002C7B4153200001000100
      01000D000A007400690074006C00650030003000320001002800470044002900
      20000100010001000D000A00700070004C006100620065006C00340033000100
      B56B785B20000100010001000D000A00700070004C006100620065006C003400
      34000100CB59B56B20000100010001000D000A00700070004C00610062006500
      6C00330033000100E05E20000100010001000D000A00700070004C0061006200
      65006C00330034000100E55D0B7A5F8620000100010001000D000A0070007000
      4C006100620065006C00340035000100895B9263486587732000010001000100
      0D000A00700070004C006100620065006C00340036000100CB59DE9E20000100
      010001000D000A00700070004C006100620065006C00340037000100427DDE9E
      20000100010001000D000A00700070004C006100620065006C00340038000100
      3D7EC07B20000100010001000D000A00700070004C006100620065006C003500
      0100366228752900200020000100010001000D000A00700070004C0061006200
      65006C003200390001002D8A9A5B20000100010001000D000A00700070004C00
      6100620065006C003100350001004266786520000100010001000D000A007000
      70004C006100620065006C0035003300010020002000B56B2000200001000100
      01000D000A00700070004C006100620065006C0035003400010020002000B56B
      200020000100010001000D000A00700070004C006100620065006C0035003500
      010020002000B56B200020000100010001000D000A00700070004C0061006200
      65006C0035003600010020002000B56B200020000100010001000D000A007000
      70004C006100620065006C0035003700010020002000B56B2000200001000100
      01000D000A00700070004C006100620065006C0035003800010020002000B56B
      200020000100010001000D000A00700070004C006100620065006C0035003900
      010020002000B56B200020000100010001000D000A00700070004C0061006200
      65006C0036003000010020002000B56B200020000100010001000D000A007000
      70004C006100620065006C0036003100010020002000B56B2000200001000100
      01000D000A00700070004C006100620065006C0036003200010020002000B56B
      200020000100010001000D000A00700070004C006100620065006C0036003300
      010020002000B56B200020000100010001000D000A00700070004C0061006200
      65006C0036003400010020002000B56B200020000100010001000D000A007000
      70004C006100620065006C0036003500010020002000B56B2000200001000100
      01000D000A00700070004C006100620065006C0036003600010020002000B56B
      200020000100010001000D000A00700070004C006100620065006C0036003700
      010020002000B56B200020000100010001000D000A00700070004C0061006200
      65006C0036003800010020002000B56B200020000100010001000D000A007000
      70004C006100620065006C0036003900010020002000B56B2000200001000100
      01000D000A00700070004C006100620065006C0037003000010020002000B56B
      200020000100010001000D000A00700070004C006100620065006C0037003100
      010020002000B56B200020000100010001000D000A00700070004C0061006200
      65006C0037003200010020002000B56B200020000100010001000D000A007000
      70004C006100620065006C003700330001007962386820002800EA532875BC65
      B0653E6B290020000100010001000D000A00700070004C006100620065006C00
      370034000100BA789A5BBA4E20000100010001000D000A00700070004C006100
      620065006C0037003500010009674865E5651F6720000100010001000D000A00
      700070004C006100620065006C00330031000100558A1A7D2000010001000100
      0D000A006C00650030003000310001003100300035002E003000300001000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00510075006500
      720079003100540050004C0041004E0054000100540050004C0041004E005400
      0100010001000D000A0051007500650072007900310053004500510001005300
      450051000100010001000D000A00510075006500720079003100430055005300
      5400010043005500530054000100010001000D000A0051007500650072007900
      31005000540059005000010050005400590050000100010001000D000A005100
      750065007200790031004C005200310001004C00520031000100010001000D00
      0A005100750065007200790031004C005200320001004C005200320001000100
      01000D000A005100750065007200790031004C005200330001004C0052003300
      0100010001000D000A005100750065007200790031004C005200340001004C00
      520034000100010001000D000A005100750065007200790031004C0052003500
      01004C00520035000100010001000D000A005100750065007200790031004C00
      5200360001004C00520036000100010001000D000A0051007500650072007900
      31004C004500310001004C00450031000100010001000D000A00510075006500
      7200790031004C004500320001004C00450032000100010001000D000A005100
      750065007200790031004C004500330001004C00450033000100010001000D00
      0A005100750065007200790031004C004500340001004C004500340001000100
      01000D000A005100750065007200790031004C004500350001004C0045003500
      0100010001000D000A005100750065007200790031004C004500360001004C00
      450036000100010001000D000A005100750065007200790031004C0045000100
      4C0045000100010001000D000A005100750065007200790031004C0045003700
      01004C00450037000100010001000D000A005100750065007200790031004C00
      4500380001004C00450038000100010001000D000A0051007500650072007900
      31004C005200370001004C00520037000100010001000D000A00510075006500
      7200790031004C005200380001004C00520038000100010001000D000A005100
      7500650072007900310052004700520050000100520047005200500001000100
      01000D000A005100750065007200790031004500470052005000010045004700
      520050000100010001000D000A0051007500650072007900310046004C005200
      010046004C0052000100010001000D000A005100750065007200790031005400
      4C005200010054004C0052000100010001000D000A0051007500650072007900
      3100540052000100540052000100010001000D000A0051007500650072007900
      31004C004500390001004C00450039000100010001000D000A00510075006500
      7200790031004C0045003100300001004C004500310030000100010001000D00
      0A005100750065007200790031004C005200390001004C005200390001000100
      01000D000A005100750065007200790031004C0052003100300001004C005200
      310030000100010001000D000A00510075006500720079003100450044005400
      01004500440054000100010001000D000A005100750065007200790031005300
      52000100530052000100010001000D000A005100750065007200790031005200
      41004E004B000100520041004E004B000100010001000D000A00510075006500
      7200790031004700520041004400450001004700520041004400450001000100
      01000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A005400660072006D006600740079006C006500610072006E00
      01004D0053002000530061006E00730020005300650072006900660001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C003400010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0036000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003700010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00380001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0031003800010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700053007900730074006500
      6D005600610072006900610062006C0065003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003900010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000530079007300740065006D00560061007200
      6900610062006C0065003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003200
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0032003400010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003200350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0032003600010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      32003700010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310030000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0031003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0039000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0031003200010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0031003300010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003400010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C0031003600010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      3700010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003200300001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0032003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00320038000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      33003000010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330036000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0033003700010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0033003800
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0033003900010041007200690061006C00
      01005400610068006F006D006100010001000D000A007400690074006C006500
      300030003200010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0034003300010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C0034003400010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003300
      3300010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003300340001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0034003500010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00340036000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0034003700010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0034003800010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0035000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0032003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003500
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0035003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0035003400010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003500350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0035003600010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      35003700010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00350038000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0035003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0036003000
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0036003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0036003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003600330001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0036003400010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      36003500010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00360036000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0036003700010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0036003800
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0036003900010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0037003000010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003700310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0037003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      37003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00370034000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0037003500010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0033003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      6500780074003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400310035000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004400420054006500780074003500010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      7800740032003300010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400320034000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200540065007800740033003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A006C007200300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A006C007200300030003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A006C0072003000300033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A006C0072003000
      30003400010041007200690061006C0001005400610068006F006D0061000100
      01000D000A006C007200300030003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A006C00720030003000360001004100
      7200690061006C0001005400610068006F006D006100010001000D000A006C00
      7200300030003700010041007200690061006C0001005400610068006F006D00
      6100010001000D000A006C007200300030003800010041007200690061006C00
      01005400610068006F006D006100010001000D000A006C007200300030003900
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A006C007200300031003000010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003300
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A006C006500300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A006C0065003000300032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A006C0065003000
      30003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A006C006500300030003400010041007200690061006C0001005400
      610068006F006D006100010001000D000A006C00650030003000350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A006C00
      6500300030003600010041007200690061006C0001005400610068006F006D00
      6100010001000D000A006C006500300030003700010041007200690061006C00
      01005400610068006F006D006100010001000D000A006C006500300030003800
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A006C006500300030003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A006C0065003000310030000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      420054006500780074003400010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003600
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003700010041007200690061006C00
      01005400610068006F006D006100010001000D000A0073007200300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A0043006F006D0062006F0042006F0078003100
      2E004900740065006D007300010053004C002C00470047002C00520058002C00
      43004C000100010001000D000A007300740044006C0067007300430061007000
      740069006F006E0073005F0055006E00690063006F00640065000D000A005700
      610072006E0069006E00670001005700610072006E0069006E00670001000100
      01000D000A004500720072006F00720001004500720072006F00720001000100
      01000D000A0049006E0066006F0072006D006100740069006F006E0001004900
      6E0066006F0072006D006100740069006F006E000100010001000D000A004300
      6F006E006600690072006D00010043006F006E006600690072006D0001000100
      01000D000A00590065007300010026005900650073000100010001000D000A00
      4E006F00010026004E006F000100010001000D000A004F004B0001004F004B00
      0100010001000D000A00430061006E00630065006C000100430061006E006300
      65006C000100010001000D000A00410062006F00720074000100260041006200
      6F00720074000100010001000D000A0052006500740072007900010026005200
      65007400720079000100010001000D000A00490067006E006F00720065000100
      2600490067006E006F00720065000100010001000D000A0041006C006C000100
      260041006C006C000100010001000D000A004E006F00200054006F0020004100
      6C006C0001004E0026006F00200074006F00200041006C006C00010001000100
      0D000A00590065007300200054006F00200041006C006C000100590065007300
      200074006F002000260041006C006C000100010001000D000A00480065006C00
      700001002600480065006C0070000100010001000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A005100750065007200790031002E0043006F00
      6D006D0061006E00640054006500780074000100730065006C00650063007400
      20002A002000660072006F006D002000740062006C0070006C0061006E007400
      5F006C006500610072006E000100010001000D000A0051007500650072007900
      31002E00500072006F00760069006400650072004E0061006D00650001006400
      730070007300630068006500640075006C0065000100010001000D000A005100
      75006500720079003100540050004C0041004E0054002E004F00720069006700
      69006E0001002200540042004C0050004C0041004E0054005F004C0045004100
      52004E0022002E002200540050004C0041004E00540022000100010001000D00
      0A005100750065007200790031005300450051002E004F007200690067006900
      6E0001002200540042004C0050004C0041004E0054005F004C00450041005200
      4E0022002E00220053004500510022000100010001000D000A00510075006500
      72007900310043005500530054002E004F0072006900670069006E0001002200
      540042004C0050004C0041004E0054005F004C004500410052004E0022002E00
      2200430055005300540022000100010001000D000A0051007500650072007900
      310050005400590050002E004F0072006900670069006E000100220054004200
      4C0050004C0041004E0054005F004C004500410052004E0022002E0022005000
      54005900500022000100010001000D000A005100750065007200790031004C00
      520031002E004F0072006900670069006E0001002200540042004C0050004C00
      41004E0054005F004C004500410052004E0022002E0022004C00520031002200
      0100010001000D000A005100750065007200790031004C00520032002E004F00
      72006900670069006E0001002200540042004C0050004C0041004E0054005F00
      4C004500410052004E0022002E0022004C005200320022000100010001000D00
      0A005100750065007200790031004C00520033002E004F007200690067006900
      6E0001002200540042004C0050004C0041004E0054005F004C00450041005200
      4E0022002E0022004C005200330022000100010001000D000A00510075006500
      7200790031004C00520034002E004F0072006900670069006E00010022005400
      42004C0050004C0041004E0054005F004C004500410052004E0022002E002200
      4C005200340022000100010001000D000A005100750065007200790031004C00
      520035002E004F0072006900670069006E0001002200540042004C0050004C00
      41004E0054005F004C004500410052004E0022002E0022004C00520035002200
      0100010001000D000A005100750065007200790031004C00520036002E004F00
      72006900670069006E0001002200540042004C0050004C0041004E0054005F00
      4C004500410052004E0022002E0022004C005200360022000100010001000D00
      0A005100750065007200790031004C00450031002E004F007200690067006900
      6E0001002200540042004C0050004C0041004E0054005F004C00450041005200
      4E0022002E0022004C004500310022000100010001000D000A00510075006500
      7200790031004C00450032002E004F0072006900670069006E00010022005400
      42004C0050004C0041004E0054005F004C004500410052004E0022002E002200
      4C004500320022000100010001000D000A005100750065007200790031004C00
      450033002E004F0072006900670069006E0001002200540042004C0050004C00
      41004E0054005F004C004500410052004E0022002E0022004C00450033002200
      0100010001000D000A005100750065007200790031004C00450034002E004F00
      72006900670069006E0001002200540042004C0050004C0041004E0054005F00
      4C004500410052004E0022002E0022004C004500340022000100010001000D00
      0A005100750065007200790031004C00450035002E004F007200690067006900
      6E0001002200540042004C0050004C0041004E0054005F004C00450041005200
      4E0022002E0022004C004500350022000100010001000D000A00510075006500
      7200790031004C00450036002E004F0072006900670069006E00010022005400
      42004C0050004C0041004E0054005F004C004500410052004E0022002E002200
      4C004500360022000100010001000D000A005100750065007200790031004C00
      45002E004F0072006900670069006E0001002200540042004C0050004C004100
      4E0054005F004C004500410052004E0022002E0022004C004500220001000100
      01000D000A005100750065007200790031004C00450037002E004F0072006900
      670069006E0001002200540042004C0050004C0041004E0054005F004C004500
      410052004E0022002E0022004C004500370022000100010001000D000A005100
      750065007200790031004C00450038002E004F0072006900670069006E000100
      2200540042004C0050004C0041004E0054005F004C004500410052004E002200
      2E0022004C004500380022000100010001000D000A0051007500650072007900
      31004C00520037002E004F0072006900670069006E0001002200540042004C00
      50004C0041004E0054005F004C004500410052004E0022002E0022004C005200
      370022000100010001000D000A005100750065007200790031004C0052003800
      2E004F0072006900670069006E0001002200540042004C0050004C0041004E00
      54005F004C004500410052004E0022002E0022004C0052003800220001000100
      01000D000A0051007500650072007900310052004700520050002E004F007200
      6900670069006E0001002200540042004C0050004C0041004E0054005F004C00
      4500410052004E0022002E002200520047005200500022000100010001000D00
      0A0051007500650072007900310045004700520050002E004F00720069006700
      69006E0001002200540042004C0050004C0041004E0054005F004C0045004100
      52004E0022002E002200450047005200500022000100010001000D000A005100
      7500650072007900310046004C0052002E004F0072006900670069006E000100
      2200540042004C0050004C0041004E0054005F004C004500410052004E002200
      2E00220046004C00520022000100010001000D000A0051007500650072007900
      310054004C0052002E004F0072006900670069006E0001002200540042004C00
      50004C0041004E0054005F004C004500410052004E0022002E00220054004C00
      520022000100010001000D000A00510075006500720079003100540052002E00
      4F0072006900670069006E0001002200540042004C0050004C0041004E005400
      5F004C004500410052004E0022002E0022005400520022000100010001000D00
      0A005100750065007200790031004C00450039002E004F007200690067006900
      6E0001002200540042004C0050004C0041004E0054005F004C00450041005200
      4E0022002E0022004C004500390022000100010001000D000A00510075006500
      7200790031004C004500310030002E004F0072006900670069006E0001002200
      540042004C0050004C0041004E0054005F004C004500410052004E0022002E00
      22004C0045003100300022000100010001000D000A0051007500650072007900
      31004C00520039002E004F0072006900670069006E0001002200540042004C00
      50004C0041004E0054005F004C004500410052004E0022002E0022004C005200
      390022000100010001000D000A005100750065007200790031004C0052003100
      30002E004F0072006900670069006E0001002200540042004C0050004C004100
      4E0054005F004C004500410052004E0022002E0022004C005200310030002200
      0100010001000D000A005100750065007200790031004500440054002E004F00
      72006900670069006E0001002200540042004C0050004C0041004E0054005F00
      4C004500410052004E0022002E00220045004400540022000100010001000D00
      0A00510075006500720079003100530052002E004F0072006900670069006E00
      01002200540042004C0050004C0041004E0054005F004C004500410052004E00
      22002E0022005300520022000100010001000D000A0051007500650072007900
      3100520041004E004B002E004F0072006900670069006E000100220054004200
      4C0050004C0041004E0054005F004C004500410052004E0022002E0022005200
      41004E004B0022000100010001000D000A005100750065007200790031004700
      52004100440045002E004F0072006900670069006E0001002200540042004C00
      50004C0041004E0054005F004C004500410052004E0022002E00220047005200
      41004400450022000100010001000D000A005100750065007200790032002E00
      500072006F00760069006400650072004E0061006D0065000100640073007000
      7300630068006500640075006C0065000100010001000D000A00510075006500
      7200790033002E00500072006F00760069006400650072004E0061006D006500
      01006400730070007300630068006500640075006C0065000100010001000D00
      0A005100750065007200790034002E00500072006F0076006900640065007200
      4E0061006D00650001006400730070007300630068006500640075006C006500
      0100010001000D000A00700070004400420050006900700065006C0069006E00
      650031002E0055007300650072004E0061006D00650001004400420050006900
      700065006C0069006E00650031000100010001000D000A007000700052006500
      70006F007200740031002E004400650076006900630065005400790070006500
      0100530063007200650065006E000100010001000D000A007000700053006800
      61007000650031002E0055007300650072004E0061006D006500010053006800
      61007000650031000100010001000D000A00700070004C006100620065006C00
      32002E0055007300650072004E0061006D00650001004C006100620065006C00
      32000100010001000D000A00700070004C0069006E00650031002E0055007300
      650072004E0061006D00650001004C0069006E00650031000100010001000D00
      0A00700070004C0069006E00650033002E0055007300650072004E0061006D00
      650001004C0069006E00650033000100010001000D000A00700070004C006100
      620065006C0033002E0055007300650072004E0061006D00650001004C006100
      620065006C0033000100010001000D000A00700070004C006100620065006C00
      34002E0055007300650072004E0061006D00650001004C006100620065006C00
      34000100010001000D000A00700070004C0069006E00650035002E0055007300
      650072004E0061006D00650001004C0069006E00650035000100010001000D00
      0A00700070004C006100620065006C0036002E0055007300650072004E006100
      6D00650001004C006100620065006C0036000100010001000D000A0070007000
      4C0069006E00650037002E0055007300650072004E0061006D00650001004C00
      69006E00650037000100010001000D000A00700070004C006100620065006C00
      37002E0055007300650072004E0061006D00650001004C006100620065006C00
      37000100010001000D000A00700070004C006100620065006C0038002E005500
      7300650072004E0061006D00650001004C006100620065006C00380001000100
      01000D000A00700070004C006100620065006C00310038002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003800010001000100
      0D000A0070007000530079007300740065006D00560061007200690061006200
      6C00650031002E0055007300650072004E0061006D0065000100530079007300
      740065006D005600610072006900610062006C00650031000100010001000D00
      0A00700070004C006100620065006C00310039002E0055007300650072004E00
      61006D00650001004C006100620065006C00310039000100010001000D000A00
      70007000530079007300740065006D005600610072006900610062006C006500
      32002E0055007300650072004E0061006D006500010053007900730074006500
      6D005600610072006900610062006C00650032000100010001000D000A007000
      70004C006100620065006C00320032002E0055007300650072004E0061006D00
      650001004C006100620065006C00320032000100010001000D000A0070007000
      4C006100620065006C00320033002E0055007300650072004E0061006D006500
      01004C006100620065006C003100300031000100010001000D000A0070007000
      4C006100620065006C00320034002E0055007300650072004E0061006D006500
      01004C006100620065006C00320034000100010001000D000A00700070004C00
      6100620065006C00320035002E0055007300650072004E0061006D0065000100
      4C006100620065006C00320035000100010001000D000A00700070004C006100
      620065006C00320036002E0055007300650072004E0061006D00650001004C00
      6100620065006C00320036000100010001000D000A00700070004C0061006200
      65006C00320037002E0055007300650072004E0061006D00650001004C006100
      620065006C00320037000100010001000D000A00700070004C00610062006500
      6C00310030002E0055007300650072004E0061006D00650001004C0061006200
      65006C00310030000100010001000D000A00700070004C006100620065006C00
      310031002E0055007300650072004E0061006D00650001004C00610062006500
      6C00310031000100010001000D000A00700070004C006100620065006C003900
      2E0055007300650072004E0061006D00650001004C006100620065006C003900
      0100010001000D000A00700070004C006100620065006C00310032002E005500
      7300650072004E0061006D00650001004C006100620065006C00310032000100
      010001000D000A00700070004C006100620065006C00310033002E0055007300
      650072004E0061006D00650001004C006100620065006C003100330001000100
      01000D000A00700070004C006100620065006C00310034002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003400010001000100
      0D000A00700070004C006100620065006C00310036002E005500730065007200
      4E0061006D00650001004C006100620065006C00310036000100010001000D00
      0A00700070004C006100620065006C00310037002E0055007300650072004E00
      61006D00650001004C006100620065006C00310037000100010001000D000A00
      700070004C006100620065006C00320030002E0055007300650072004E006100
      6D00650001004C006100620065006C00320030000100010001000D000A007000
      70004C006100620065006C00320031002E0055007300650072004E0061006D00
      650001004C006100620065006C003100300032000100010001000D000A007000
      70004C006100620065006C00320038002E0055007300650072004E0061006D00
      650001004C006100620065006C00320038000100010001000D000A0070007000
      4C0069006E00650039002E0055007300650072004E0061006D00650001004C00
      69006E00650039000100010001000D000A00700070004C006100620065006C00
      31002E0055007300650072004E0061006D00650001004C006100620065006C00
      31000100010001000D000A00700070004C0069006E006500310031002E005500
      7300650072004E0061006D00650001004C0069006E0065003100310001000100
      01000D000A00700070004C006100620065006C00330030002E00550073006500
      72004E0061006D00650001004C006100620065006C0033003000010001000100
      0D000A00700070004C0069006E006500310033002E0055007300650072004E00
      61006D00650001004C0069006E006500310033000100010001000D000A007000
      70004C006100620065006C00330036002E0055007300650072004E0061006D00
      650001004C006100620065006C00330036000100010001000D000A0070007000
      4C006100620065006C00330037002E0055007300650072004E0061006D006500
      01004C006100620065006C00330037000100010001000D000A00700070004C00
      6100620065006C00330038002E0055007300650072004E0061006D0065000100
      4C006100620065006C003100300033000100010001000D000A00700070004C00
      6100620065006C00330039002E0055007300650072004E0061006D0065000100
      4C006100620065006C00330039000100010001000D000A007400690074006C00
      65003000300032002E0055007300650072004E0061006D006500010074006900
      74006C0065003000300032000100010001000D000A00700070004C0069006E00
      6500310038002E0055007300650072004E0061006D00650001004C0069006E00
      6500310038000100010001000D000A00700070004C006100620065006C003400
      33002E0055007300650072004E0061006D00650001004C006100620065006C00
      3400300032000100010001000D000A00700070004C006100620065006C003400
      34002E0055007300650072004E0061006D00650001004C006100620065006C00
      340034000100010001000D000A00700070004C006100620065006C0033003300
      2E0055007300650072004E0061006D00650001004C006100620065006C003400
      300033000100010001000D000A00700070004C006100620065006C0033003400
      2E0055007300650072004E0061006D00650001004C006100620065006C003400
      300034000100010001000D000A00700070004C006100620065006C0034003500
      2E0055007300650072004E0061006D00650001004C006100620065006C003400
      35000100010001000D000A00700070004C006100620065006C00340036002E00
      55007300650072004E0061006D00650001004C006100620065006C0034003600
      0100010001000D000A00700070004C006100620065006C00340037002E005500
      7300650072004E0061006D00650001004C006100620065006C00340037000100
      010001000D000A00700070004C006100620065006C00340038002E0055007300
      650072004E0061006D00650001004C006100620065006C003400380001000100
      01000D000A00700070004C0069006E006500310039002E005500730065007200
      4E0061006D00650001004C0069006E006500310035000100010001000D000A00
      700070004C006100620065006C0035002E0055007300650072004E0061006D00
      650001004C006100620065006C0035000100010001000D000A00700070004C00
      6100620065006C00320039002E0055007300650072004E0061006D0065000100
      4C006100620065006C00320039000100010001000D000A00700070004C006100
      620065006C00310035002E0055007300650072004E0061006D00650001004C00
      6100620065006C00310035000100010001000D000A00700070004C0069006E00
      6500310035002E0055007300650072004E0061006D00650001004C0069006E00
      6500310036000100010001000D000A00700070004C006100620065006C003500
      33002E0055007300650072004E0061006D00650001004C006100620065006C00
      3100300034000100010001000D000A00700070004C006100620065006C003500
      34002E0055007300650072004E0061006D00650001004C006100620065006C00
      350034000100010001000D000A00700070004C006100620065006C0035003500
      2E0055007300650072004E0061006D00650001004C006100620065006C003500
      35000100010001000D000A00700070004C006100620065006C00350036002E00
      55007300650072004E0061006D00650001004C006100620065006C0035003600
      0100010001000D000A00700070004C006100620065006C00350037002E005500
      7300650072004E0061006D00650001004C006100620065006C00350037000100
      010001000D000A00700070004C006100620065006C00350038002E0055007300
      650072004E0061006D00650001004C006100620065006C003500380001000100
      01000D000A00700070004C006100620065006C00350039002E00550073006500
      72004E0061006D00650001004C006100620065006C0035003900010001000100
      0D000A00700070004C006100620065006C00360030002E005500730065007200
      4E0061006D00650001004C006100620065006C00320030003100010001000100
      0D000A00700070004C006100620065006C00360031002E005500730065007200
      4E0061006D00650001004C006100620065006C00360031000100010001000D00
      0A00700070004C006100620065006C00360032002E0055007300650072004E00
      61006D00650001004C006100620065006C00360032000100010001000D000A00
      700070004C006100620065006C00360033002E0055007300650072004E006100
      6D00650001004C006100620065006C00360033000100010001000D000A007000
      70004C006100620065006C00360034002E0055007300650072004E0061006D00
      650001004C006100620065006C00360034000100010001000D000A0070007000
      4C006100620065006C00360035002E0055007300650072004E0061006D006500
      01004C006100620065006C00360035000100010001000D000A00700070004C00
      6100620065006C00360036002E0055007300650072004E0061006D0065000100
      4C006100620065006C00360036000100010001000D000A00700070004C006100
      620065006C00360037002E0055007300650072004E0061006D00650001004C00
      6100620065006C00360037000100010001000D000A00700070004C0061006200
      65006C00360038002E0055007300650072004E0061006D00650001004C006100
      620065006C00360038000100010001000D000A00700070004C00610062006500
      6C00360039002E0055007300650072004E0061006D00650001004C0061006200
      65006C00360039000100010001000D000A00700070004C006100620065006C00
      370030002E0055007300650072004E0061006D00650001004C00610062006500
      6C00370030000100010001000D000A00700070004C006100620065006C003700
      31002E0055007300650072004E0061006D00650001004C006100620065006C00
      370031000100010001000D000A00700070004C006100620065006C0037003200
      2E0055007300650072004E0061006D00650001004C006100620065006C003700
      32000100010001000D000A00700070004C0069006E006500320030002E005500
      7300650072004E0061006D00650001004C0069006E0065003200300001000100
      01000D000A00700070004C006100620065006C00370033002E00550073006500
      72004E0061006D00650001004C006100620065006C0037003300010001000100
      0D000A00700070004C006100620065006C00370034002E005500730065007200
      4E0061006D00650001004C006100620065006C00370034000100010001000D00
      0A00700070004C006100620065006C00370035002E0055007300650072004E00
      61006D00650001004C006100620065006C00370035000100010001000D000A00
      700070004C0069006E006500320031002E0055007300650072004E0061006D00
      650001004C0069006E006500320031000100010001000D000A00700070004C00
      69006E006500320033002E0055007300650072004E0061006D00650001004C00
      69006E0065003200300031000100010001000D000A00700070004C0061006200
      65006C00330031002E0055007300650072004E0061006D00650001004C006100
      620065006C00330031000100010001000D000A00700070005300680061007000
      650032002E0055007300650072004E0061006D00650001005300680061007000
      650032000100010001000D000A00700070004C0069006E006500310030002E00
      55007300650072004E0061006D00650001004C0069006E006500310030000100
      010001000D000A00700070004C0069006E00650032002E005500730065007200
      4E0061006D00650001004C0069006E00650032000100010001000D000A007000
      70004C0069006E00650034002E0055007300650072004E0061006D0065000100
      4C0069006E00650034000100010001000D000A00700070004C0069006E006500
      36002E0055007300650072004E0061006D00650001004C0069006E0065003600
      0100010001000D000A00700070004C0069006E00650038002E00550073006500
      72004E0061006D00650001004C0069006E00650038000100010001000D000A00
      7000700044004200540065007800740031002E00440061007400610046006900
      65006C006400010043005500530054000100010001000D000A00700070004400
      4200540065007800740031002E0055007300650072004E0061006D0065000100
      44004200540065007800740031000100010001000D000A007000700044004200
      540065007800740032002E0044006100740061004600690065006C0064000100
      50005400590050000100010001000D000A007000700044004200540065007800
      740032002E0055007300650072004E0061006D00650001004400420054006500
      7800740032000100010001000D000A0070007000440042005400650078007400
      310035002E0044006100740061004600690065006C00640001004C0045000100
      010001000D000A0070007000440042005400650078007400310035002E005500
      7300650072004E0061006D006500010044004200540065007800740031003500
      0100010001000D000A007000700044004200540065007800740035002E004400
      6100740061004600690065006C0064000100540050004C0041004E0054000100
      010001000D000A007000700044004200540065007800740035002E0055007300
      650072004E0061006D0065000100440042005400650078007400350001000100
      01000D000A00700070004C0069006E006500310032002E005500730065007200
      4E0061006D00650001004C0069006E006500310032000100010001000D000A00
      700070004C0069006E006500310034002E0055007300650072004E0061006D00
      650001004C0069006E006500310034000100010001000D000A00700070004400
      42005400650078007400320033002E0044006100740061004600690065006C00
      6400010046004C0052000100010001000D000A00700070004400420054006500
      78007400320033002E0055007300650072004E0061006D006500010044004200
      5400650078007400320033000100010001000D000A0070007000440042005400
      650078007400320034002E0044006100740061004600690065006C0064000100
      54004C0052000100010001000D000A0070007000440042005400650078007400
      320034002E0055007300650072004E0061006D00650001004400420054006500
      78007400320034000100010001000D000A00700070004C0069006E0065003100
      37002E0055007300650072004E0061006D00650001004C0069006E0065003100
      37000100010001000D000A007000700044004200540065007800740033003100
      2E0044006100740061004600690065006C006400010046004C00520001000100
      01000D000A0070007000440042005400650078007400330031002E0055007300
      650072004E0061006D0065000100440042005400650078007400330031000100
      010001000D000A006C0072003000300031002E0055007300650072004E006100
      6D00650001006C0072003000300031000100010001000D000A006C0072003000
      300032002E0055007300650072004E0061006D00650001006C00720030003000
      32000100010001000D000A006C0072003000300033002E005500730065007200
      4E0061006D00650001006C0072003000300033000100010001000D000A006C00
      72003000300034002E0055007300650072004E0061006D00650001006C007200
      3000300034000100010001000D000A006C0072003000300035002E0055007300
      650072004E0061006D00650001006C0072003000300035000100010001000D00
      0A006C0072003000300036002E0055007300650072004E0061006D0065000100
      6C0072003000300036000100010001000D000A006C0072003000300037002E00
      55007300650072004E0061006D00650001006C00720030003000370001000100
      01000D000A006C0072003000300038002E0055007300650072004E0061006D00
      650001006C0072003000300038000100010001000D000A006C00720030003000
      39002E0055007300650072004E0061006D00650001006C007200300030003900
      0100010001000D000A006C0072003000310030002E0055007300650072004E00
      61006D00650001006C0072003000310030000100010001000D000A0070007000
      44004200540065007800740033002E0044006100740061004600690065006C00
      64000100540052000100010001000D000A007000700044004200540065007800
      740033002E0055007300650072004E0061006D00650001004400420054006500
      7800740033000100010001000D000A006C0065003000300031002E0055007300
      650072004E0061006D00650001006C0065003000300031000100010001000D00
      0A006C0065003000300032002E0055007300650072004E0061006D0065000100
      6C0065003000300032000100010001000D000A006C0065003000300033002E00
      55007300650072004E0061006D00650001006C00650030003000330001000100
      01000D000A006C0065003000300034002E0055007300650072004E0061006D00
      650001006C0065003000300034000100010001000D000A006C00650030003000
      35002E0055007300650072004E0061006D00650001006C006500300030003500
      0100010001000D000A006C0065003000300036002E0055007300650072004E00
      61006D00650001006C0065003000300036000100010001000D000A006C006500
      3000300037002E0055007300650072004E0061006D00650001006C0065003000
      300037000100010001000D000A006C0065003000300038002E00550073006500
      72004E0061006D00650001006C0065003000300038000100010001000D000A00
      6C0065003000300039002E0055007300650072004E0061006D00650001006C00
      65003000300039000100010001000D000A006C0065003000310030002E005500
      7300650072004E0061006D00650001006C006500300031003000010001000100
      0D000A00700070004C0069006E006500310036002E0055007300650072004E00
      61006D00650001004C0069006E006500310039000100010001000D000A007000
      70004C0069006E006500320032002E0055007300650072004E0061006D006500
      01004C0069006E006500320032000100010001000D000A007000700044004200
      540065007800740034002E0044006100740061004600690065006C0064000100
      4500440054000100010001000D000A0070007000440042005400650078007400
      34002E0055007300650072004E0061006D006500010044004200540065007800
      740034000100010001000D000A00700070004C0069006E006500320034002E00
      55007300650072004E0061006D00650001004C0069006E006500320034000100
      010001000D000A007000700044004200540065007800740036002E0044006100
      740061004600690065006C006400010047005200410044004500010001000100
      0D000A007000700044004200540065007800740036002E005500730065007200
      4E0061006D006500010044004200540065007800740036000100010001000D00
      0A007000700044004200540065007800740037002E0044006100740061004600
      690065006C0064000100520041004E004B000100010001000D000A0070007000
      44004200540065007800740037002E0055007300650072004E0061006D006500
      010044004200540065007800740037000100010001000D000A00700070004700
      72006F007500700031002E0042007200650061006B004E0061006D0065000100
      530052000100010001000D000A0070007000470072006F007500700031002E00
      55007300650072004E0061006D0065000100470072006F007500700031000100
      010001000D000A00730072003000300031002E0055007300650072004E006100
      6D0065000100730072003000300031000100010001000D000A00730074004C00
      6F00630061006C00650073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0030005D002E005400690074006C00
      65002E00430061007000740069006F006E000100E05E01004600740079000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0031005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100E55D0B7A5F86200028007890C764A25B36622875
      29000100500072006F006A00650063007400200043006F006400650020002800
      66006F007200200063007500730074006F006D00650072002000630068006F00
      730065006E002900010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B0032005D002E00540069007400
      6C0065002E00430061007000740069006F006E0001002275C1545E9801005000
      72006F0064002000430061007400650067006F0072007900010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B0033005D002E005400690074006C0065002E0043006100700074006900
      6F006E000100B56B785BCB59B56B2D8A9A5B2800B0653E6B2900010053007400
      61007200740020007000680061007300650020006F006600200050004C004300
      200028006E006500770020005300740079006C0065002900010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B0034005D002E005400690074006C0065002E0043006100700074006900
      6F006E00010010982D8A4266509620002800440065006600610075006C007400
      20004300540029007C00CB59DE9E0100440065006600610075006C0074002000
      430054007C0053007400610072007400010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0035005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001001098
      2D8A4266509620002800440065006600610075006C0074002000430054002900
      7C00427DDE9E0100440065006600610075006C0074002000430054007C004500
      6E006400010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0036005D002E005400690074006C006500
      2E00430061007000740069006F006E00010010982D8A42665096200028004400
      65006600610075006C00740020004300540029007C003D7EC07B426678650100
      440065006600610075006C0074002000430054007C00540074006C0020005300
      6500630074007300010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B0037005D002E00540069007400
      6C0065002E00430061007000740069006F006E000100088A83522760895B9263
      C9624865877320002800C696D49A276029002000A0520A6B735E475701005000
      6C0061006E006E0069006E00670020004C0069006E0065002000450066006600
      20002800470072006F007500700029007C00410076006500010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B0038005D002E005400690074006C0065002E0043006100700074006900
      6F006E000100558A1A7D0100520061006E006B0069006E006700010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0039005D002E005400690074006C0065002E004300610070007400
      69006F006E000100796238682800EA532875BC65B0653E6B29007C00BA789A5B
      BA4E010041007000700072006F00760061006C0028006E006500770020007300
      740079006C00650020006F006E006C00790029007C0043006F006E0066006900
      72006D0065006400200062007900010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B00310030005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001007962
      38682800EA532875BC65B0653E6B29007C0009674865E5651F67010041007000
      700072006F00760061006C0028006E006500770020007300740079006C006500
      20006F006E006C00790029007C00450066006600650063007400690076006500
      20006400610074006500010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B00310031005D002E005400
      690074006C0065002E00430061007000740069006F006E000100530065006300
      740069006F006E00200048007200200062007900200050006800610073006500
      7C00447D08540100530065006300740069006F006E0020004800720020006200
      79002000500068006100730065007C0043006F006D00620069006E0061007400
      69006F006E00010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B00310032005D002E00540069007400
      6C0065002E00430061007000740069006F006E000100CF6BB56BC07B42667C00
      2C7B004EB56B01004E006F002E0020006F006600200073006500630074006900
      6F006E0020007000650072002000700068006100730065007C00310073007400
      010001000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B00310033005D002E005400690074006C0065002E00
      430061007000740069006F006E000100CF6BB56BC07B42667C002C7B8C4EB56B
      01004E006F002E0020006F0066002000730065006300740069006F006E002000
      7000650072002000700068006100730065007C0032006E006400010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B00310034005D002E005400690074006C0065002E00430061007000
      740069006F006E000100CF6BB56BC07B42667C002C7B094EB56B01004E006F00
      2E0020006F0066002000730065006300740069006F006E002000700065007200
      2000700068006100730065007C00330072006400010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      310035005D002E005400690074006C0065002E00430061007000740069006F00
      6E000100CF6BB56BC07B42667C002C7BDB56B56B01004E006F002E0020006F00
      66002000730065006300740069006F006E002000700065007200200070006800
      6100730065007C00340074006800010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B00310036005D00
      2E005400690074006C0065002E00430061007000740069006F006E000100CF6B
      B56BC07B42667C002C7B944EB56B01004E006F002E0020006F00660020007300
      65006300740069006F006E002000700065007200200070006800610073006500
      7C00350074006800010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B00310037005D002E0054006900
      74006C0065002E00430061007000740069006F006E000100CF6BB56BC07B4266
      7C002C7B6D51B56B01004E006F002E0020006F00660020007300650063007400
      69006F006E0020007000650072002000700068006100730065007C0036007400
      6800010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B00310038005D002E005400690074006C006500
      2E00430061007000740069006F006E000100CF6BB56BC07B42667C002C7B034E
      B56B01004E006F002E0020006F0066002000730065006300740069006F006E00
      20007000650072002000700068006100730065007C0037007400680001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B00310039005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100CF6BB56BC07B42667C002C7B6B51B56B01004E00
      6F002E0020006F0066002000730065006300740069006F006E00200070006500
      72002000700068006100730065007C00380074006800010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B00320030005D002E005400690074006C0065002E0043006100700074006900
      6F006E000100CF6BB56BC07B42667C002C7B5D4EB56B01004E006F002E002000
      6F0066002000730065006300740069006F006E00200070006500720020007000
      68006100730065007C00390074006800010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0032003100
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      CF6BB56BC07B42667C002C7B4153B56B01004E006F002E0020006F0066002000
      730065006300740069006F006E00200070006500720020007000680061007300
      65007C003100300074006800010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B00320032005D002E00
      5400690074006C0065002E00430061007000740069006F006E0001004F007000
      7400200050006500720066002000250020006200790020005000680061007300
      65007C00447D085401004F007000740020005000650072006600200025002000
      620079002000500068006100730065007C0043006F006D00620069006E006100
      740069006F006E00010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B00320033005D002E0054006900
      74006C0065002E00430061007000740069006F006E000100CF6BB56BC9624865
      87732800250029007C002C7B004EB56B01004500660066002500200070006500
      72002000700068006100730065007C00310073007400010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B00320034005D002E005400690074006C0065002E0043006100700074006900
      6F006E000100CF6BB56BC962486587732800250029007C002C7B8C4EB56B0100
      450066006600250020007000650072002000700068006100730065007C003200
      6E006400010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B00320035005D002E005400690074006C00
      65002E00430061007000740069006F006E000100CF6BB56BC962486587732800
      250029007C002C7B094EB56B0100450066006600250020007000650072002000
      700068006100730065007C00330072006400010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003200
      36005D002E005400690074006C0065002E00430061007000740069006F006E00
      0100CF6BB56BC962486587732800250029007C002C7BDB56B56B010045006600
      6600250020007000650072002000700068006100730065007C00340074006800
      010001000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B00320037005D002E005400690074006C0065002E00
      430061007000740069006F006E000100CF6BB56BC96248658773280025002900
      7C002C7B944EB56B010045006600660025002000700065007200200070006800
      6100730065007C00350074006800010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B00320038005D00
      2E005400690074006C0065002E00430061007000740069006F006E000100CF6B
      B56BC962486587732800250029007C002C7B6D51B56B01004500660066002500
      20007000650072002000700068006100730065007C0036007400680001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B00320039005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100CF6BB56BC962486587732800250029007C002C7B
      034EB56B01004500660066002500200070006500720020007000680061007300
      65007C00370074006800010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B00330030005D002E005400
      690074006C0065002E00430061007000740069006F006E000100CF6BB56BC962
      486587732800250029007C002C7B6B51B56B0100450066006600250020007000
      650072002000700068006100730065007C00380074006800010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B00330031005D002E005400690074006C0065002E004300610070007400
      69006F006E000100CF6BB56BC962486587732800250029007C002C7B5D4EB56B
      0100450066006600250020007000650072002000700068006100730065007C00
      390074006800010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B00330032005D002E00540069007400
      6C0065002E00430061007000740069006F006E000100CF6BB56BC96248658773
      2800250029007C002C7B4153B56B010045006600660025002000700065007200
      2000700068006100730065007C003100300074006800010001000D000A005100
      750065007200790031002E0049006E0064006500780044006500660073005B00
      30005D002E004600690065006C00640073000100740070006C0061006E007400
      3B00730072003B00720061006E006B003B0063007500730074003B0070007400
      790070000100010001000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A005400660072006D006600
      740079006C006500610072006E000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C0032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C0034000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C0036000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0038000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00310038000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000530079007300740065006D00
      5600610072006900610062006C00650031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00310039000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000530079007300740065006D00
      5600610072006900610062006C00650032000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00320032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003200
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0032003400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00320035000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00320036000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003200
      37000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031003000010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00310031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C0039000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310033000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00310034000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00310036000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00320030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00320031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00320038000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003300300001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00330036000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00330037000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00330038000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003300390001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0074006900
      74006C0065003000300032000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      340033000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003400340001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0033003300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C00330034000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      340035000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003400360001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0034003700010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C00340038000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      35000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0032003900010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00310035000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00350033000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003500
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0035003500010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00350036000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00350037000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003500
      38000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0035003900010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00360030000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00360031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003600
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0036003300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00360034000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00360035000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003600
      36000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0036003700010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00360038000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00360039000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003700
      30000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0037003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00370032000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00370033000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003700
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0037003500010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00330031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      540065007800740031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004400420054006500780074003100350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004400420054006500780074003500010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      42005400650078007400320033000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420054006500
      78007400320034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003300
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A006C0072003000300031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006C00720030003000
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A006C0072003000300033000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006C00720030003000
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A006C0072003000300035000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006C00720030003000
      36000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A006C0072003000300037000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006C00720030003000
      38000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A006C0072003000300039000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006C00720030003100
      30000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004400420054006500780074003300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6C0065003000300031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006C006500300030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6C0065003000300033000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006C006500300030003400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6C0065003000300035000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006C006500300030003600010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6C0065003000300037000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006C006500300030003800010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6C0065003000300039000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006C006500300031003000010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7000700044004200540065007800740034000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      540065007800740036000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      37000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00730072003000300031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00}
  end
end
