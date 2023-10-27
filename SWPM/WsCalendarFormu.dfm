object frmwscalendar: Tfrmwscalendar
  Left = 0
  Top = 0
  Caption = #24037#22580#26085#26310
  ClientHeight = 409
  ClientWidth = 788
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 788
    Height = 261
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    FooterRowCount = 2
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'DATE1'
        Footers = <
          item
            Value = 'Ttl:'
            ValueType = fvtStaticText
          end
          item
            Value = 'W/Ave:'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = #26085#26399
        Width = 68
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'WKNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36913#26399
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'WDAY'
        Footers = <>
        PickList.Strings = (
          'H'
          'RDF'
          'RDS'
          'WD')
        Title.Caption = #20241#20551'|'#38928#35373
        Width = 42
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = #29983#29986#22320#40670'|'#24288
        Width = 33
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'ws'
        Footers = <>
        ReadOnly = True
        Title.Caption = #29983#29986#22320#40670'|'#24037#22580
        Width = 34
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'DEF_TG'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = #38928#35373#31680#25976
        Width = 45
      end
      item
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'DEF_TG'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = #29983#29986#31680#25976'|'#38928#35373'|'#25552#20379' ('#27611')'
        Visible = False
        Width = 45
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'DEF_KH'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = #29983#29986#31680#25976'|'#38928#35373'|'#38750#29983#29986#24615'|'#38283#26371
        Visible = False
        Width = 45
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'DEF_LK'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = #29983#29986#31680#25976'|'#38928#35373'|'#38750#29983#29986#24615'|'#25509#36899
        Visible = False
        Width = 45
      end
      item
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'DEF_KY'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = #20462#35330#31680#25976'|'#32317#35336
        Width = 45
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SECTT'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = #20462#35330#31680#25976'|N1'
        Width = 45
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SECTT1'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = #20462#35330#31680#25976'|N2'
        Width = 45
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SECTC'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = #20462#35330#31680#25976'|OT'
        Width = 45
      end
      item
        Color = 11795962
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'DCU'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = #29986#37327'(CU)'#25613#32791#29575'%|'#38928#35373
        Visible = False
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DWF'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WF Deployment %|Def. WF'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'AWF'
        Footers = <>
        Title.Caption = 'WF Deployment %|Deploy WF|N1 + N2'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'AWF_O'
        Footers = <>
        Title.Caption = 'WF Deployment %|Deploy WF|OT'
        Width = 52
      end
      item
        DisplayFormat = '#0%'
        EditButtons = <>
        FieldName = 'DWF_P'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WF Deployment %|%'
        Width = 50
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 97
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 24
      Top = 24
      Width = 12
      Height = 13
      Caption = #24288
    end
    object SpeedButton1: TSpeedButton
      Left = 440
      Top = 56
      Width = 65
      Height = 22
      Caption = #30906#23450
      Glyph.Data = {
        52050000424D5205000000000000420000002800000024000000120000000100
        1000030000001005000000000000000000000000000000000000007C0000E003
        00001F000000E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DFF7F
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        0F000F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DEF3DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03D0F00E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DEF3DE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03D0F00E001E001E001E0010F00E03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03DEF3DFF7FE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03D0F00E001E001E001E001E001E001
        0F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03D
        E03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03D0F00E001E001E001
        E003E001E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7F
        E03DE03DEF3DFF7FE03DE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03D
        E001E001E001E003E03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03D
        E03DE03DEF3DFF7FE03DEF3DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03D
        E03DE03DE03DE03DE003E001E003E03DE03DE03DE003E001E001E0010F00E03D
        E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DE03DE03DE03DEF3DFF7FE03DE03D
        EF3DFF7FE03DE03DE03DE03DE03DE03DE03DE003E03DE03DE03DE03DE03DE003
        E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03D
        E03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001E001E0010F00E03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3D
        FF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001
        E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        EF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE003E001E0010F00E03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FE03DEF3DFF7FE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001E001
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3D
        FF7FEF3DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE003E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DEF3DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 168
      Top = 24
      Width = 24
      Height = 13
      Caption = #24037#22580
    end
    object SpeedButton2: TSpeedButton
      Left = 520
      Top = 56
      Width = 65
      Height = 22
      Caption = 'OK'
      Glyph.Data = {
        52050000424D5205000000000000420000002800000024000000120000000100
        1000030000001005000000000000000000000000000000000000007C0000E003
        00001F000000E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DFF7F
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        0F000F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DEF3DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03D0F00E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DEF3DE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03D0F00E001E001E001E0010F00E03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03DEF3DFF7FE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03D0F00E001E001E001E001E001E001
        0F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03D
        E03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03D0F00E001E001E001
        E003E001E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7F
        E03DE03DEF3DFF7FE03DE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03D
        E001E001E001E003E03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03D
        E03DE03DEF3DFF7FE03DEF3DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03D
        E03DE03DE03DE03DE003E001E003E03DE03DE03DE003E001E001E0010F00E03D
        E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DE03DE03DE03DEF3DFF7FE03DE03D
        EF3DFF7FE03DE03DE03DE03DE03DE03DE03DE003E03DE03DE03DE03DE03DE003
        E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03D
        E03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001E001E0010F00E03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3D
        FF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001
        E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        EF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE003E001E0010F00E03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FE03DEF3DFF7FE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001E001
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3D
        FF7FEF3DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE003E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DEF3DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D}
      NumGlyphs = 2
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 24
      Top = 48
      Width = 337
      Height = 41
      Caption = #26178#26399
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 17
        Width = 15
        Height = 13
        Caption = #24478' '
      end
      object Label2: TLabel
        Left = 184
        Top = 17
        Width = 15
        Height = 13
        Caption = #21040' '
      end
      object DateEdit1: TDateEdit
        Left = 40
        Top = 13
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
      end
      object DateEdit2: TDateEdit
        Left = 200
        Top = 13
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
      end
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 24
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      Items.Strings = (
        'SL'
        'RX'
        'CL')
    end
    object ComboBox2: TComboBox
      Left = 224
      Top = 24
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnEnter = ComboBox2Enter
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 358
    Width = 788
    Height = 51
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 16
      Top = 9
      Width = 73
      Height = 33
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
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 238
      Top = 6
      Width = 81
      Height = 33
      Caption = #38928#35261
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
      Visible = False
    end
    object BitBtn7: TBitBtn
      Left = 88
      Top = 9
      Width = 64
      Height = 33
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object week52: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from wk52_ws where ws='#39'3A'#39
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'WS'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DATE1'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'WKNO'
        DataType = ftInteger
      end
      item
        Name = 'WDAY'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DEF_SB'
        DataType = ftFloat
      end
      item
        Name = 'DEF_TG'
        DataType = ftFloat
      end
      item
        Name = 'DEF_KH'
        DataType = ftFloat
      end
      item
        Name = 'DEF_LK'
        DataType = ftFloat
      end
      item
        Name = 'DEF_KY'
        DataType = ftFloat
      end
      item
        Name = 'SECTT'
        DataType = ftFloat
      end
      item
        Name = 'SECTT1'
        DataType = ftFloat
      end
      item
        Name = 'SECTC'
        DataType = ftFloat
      end
      item
        Name = 'DCU'
        DataType = ftFloat
      end
      item
        Name = 'CSECT'
        DataType = ftFloat
      end
      item
        Name = 'DWF'
        DataType = ftInteger
      end
      item
        Name = 'AWF'
        DataType = ftInteger
      end
      item
        Name = 'DWF_P'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'date1;ws'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = week52AfterOpen
    AfterPost = week52AfterPost
    Left = 608
    Top = 1
  end
  object DataSource1: TDataSource
    DataSet = week52
    Left = 640
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 480
    Top = 33
  end
  object PopupMenu1: TPopupMenu
    Left = 576
    Top = 1
    object SetStandardCalendar1: TMenuItem
      Caption = 'Set Standard Calendar'
      ShortCut = 121
      Visible = False
    end
    object SetStandarCalendar1: TMenuItem
      Caption = 'Set Standard Calendar'
      Visible = False
    end
    object ModifyCalendar1: TMenuItem
      Caption = 'Modify Calendar'
      ShortCut = 123
      Visible = False
    end
    object Export1: TMenuItem
      Caption = 'Export'
      ShortCut = 49273
      Visible = False
    end
    object Copyfromotherline1: TMenuItem
      Caption = 'Copy from other line'
      ShortCut = 122
      Visible = False
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 512
    Top = 33
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from week52 where line='#39'T001'#39' and date1='#39'2006-12-29'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 544
    Top = 33
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DataSource2
    UserName = 'BDEPipeline1'
    Left = 512
    Top = 1
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet3
    Left = 480
    Top = 1
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 576
    Top = 33
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6250
    PrinterSetup.mmMarginRight = 6250
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 608
    Top = 32
    Version = '11.07'
    mmColumnWidth = 197379
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 42863
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Current Workshop'#39's Line work Calendar & CU % by line (QN depende' +
          'nt)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 2646
        mmTop = 5292
        mmWidth = 179123
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 60325
        mmTop = 14552
        mmWidth = 5292
        BandType = 0
      end
      object line01: TppLabel
        UserName = 'line01'
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
        mmLeft = 67733
        mmTop = 14552
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date       From '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 97367
        mmTop = 14552
        mmWidth = 18521
        BandType = 0
      end
      object date01: TppLabel
        UserName = 'date01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '    /  /  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 116417
        mmTop = 14552
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135467
        mmTop = 14552
        mmWidth = 3175
        BandType = 0
      end
      object date02: TppLabel
        UserName = 'date02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '    /  /  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 140229
        mmTop = 14552
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165629
        mmTop = 12171
        mmWidth = 12965
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
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 12171
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165629
        mmTop = 16140
        mmWidth = 6615
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
        mmLeft = 180182
        mmTop = 16140
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Version: 2.6.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165629
        mmTop = 20108
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 28310
        mmTop = 14552
        mmWidth = 12965
        BandType = 0
      end
      object tshop01: TppLabel
        UserName = 'tshop01'
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
        mmLeft = 42598
        mmTop = 14552
        mmWidth = 10054
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 15610
        mmLeft = 529
        mmTop = 27252
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 1852
        mmTop = 32015
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 14552
        mmTop = 32015
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Wk'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 36248
        mmTop = 32015
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current Work Section Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 83079
        mmTop = 28046
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 57415
        mmTop = 32015
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Normal1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 76729
        mmTop = 32015
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 96838
        mmTop = 32015
        mmWidth = 3969
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
        mmHeight = 15610
        mmLeft = 8467
        mmTop = 27252
        mmWidth = 1852
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
        mmHeight = 15610
        mmLeft = 35454
        mmTop = 27252
        mmWidth = 1852
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
        mmHeight = 15610
        mmLeft = 40217
        mmTop = 27252
        mmWidth = 1852
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
        mmHeight = 15610
        mmLeft = 27252
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Status '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 28310
        mmTop = 32015
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Normal2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 85725
        mmTop = 32015
        mmWidth = 7938
        BandType = 0
      end
      object x001: TppLabel
        UserName = 'x001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 103981
        mmTop = 32015
        mmWidth = 3969
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
        mmHeight = 11642
        mmLeft = 108744
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 110861
        mmTop = 35983
        mmWidth = 3704
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 40481
        mmTop = 31221
        mmWidth = 81492
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Net'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 110861
        mmTop = 32015
        mmWidth = 3175
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
        mmHeight = 11642
        mmLeft = 115359
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gross'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 115888
        mmTop = 32015
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 116152
        mmTop = 35983
        mmWidth = 3704
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
        mmHeight = 15610
        mmLeft = 128588
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 152929
        mmTop = 27252
        mmWidth = 1852
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
        mmHeight = 11642
        mmLeft = 181240
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 169334
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 161132
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 153723
        mmTop = 32015
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'on-hold'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 153459
        mmTop = 35190
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 153459
        mmTop = 38629
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Consolidated 5 lost '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 129911
        mmTop = 32015
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rest'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 176213
        mmTop = 35190
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 176213
        mmTop = 38629
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 170127
        mmTop = 32015
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 170127
        mmTop = 35190
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Special'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 181769
        mmTop = 32015
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lost '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 181769
        mmTop = 35190
        mmWidth = 3969
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 175419
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Loss (Sect Hr)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 160602
        mmTop = 28046
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Time '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 161661
        mmTop = 35190
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Linkage '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 161661
        mmTop = 32015
        mmWidth = 7408
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 152929
        mmTop = 31221
        mmWidth = 36248
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 76200
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object tst01: TppLabel
        UserName = 'tst01'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 182827
        mmTop = 5556
        mmWidth = 12171
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
        mmHeight = 15610
        mmLeft = 188913
        mmTop = 27252
        mmWidth = 1852
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
        mmHeight = 11642
        mmLeft = 64558
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CU%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 189707
        mmTop = 32015
        mmWidth = 5027
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 48948
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Optimum'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 40746
        mmTop = 32015
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Sect Hr   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 51858
        mmTop = 28046
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'elements of Line '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 129911
        mmTop = 35190
        mmWidth = 21696
        BandType = 0
      end
      object ppLine72: TppLine
        UserName = 'Line72'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 121973
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Chase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 122502
        mmTop = 28046
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 122502
        mmTop = 30956
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 122502
        mmTop = 33867
        mmWidth = 4763
        BandType = 0
      end
      object ppLine73: TppLine
        UserName = 'Line73'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 56886
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bottom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 49742
        mmTop = 32015
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 50800
        mmTop = 35454
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Used'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 122502
        mmTop = 39688
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 122502
        mmTop = 36777
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GAP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 170127
        mmTop = 38629
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 181769
        mmTop = 38629
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' on-hold time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 129911
        mmTop = 38365
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 14552
        mmWidth = 10583
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
        mmHeight = 3704
        mmLeft = 14288
        mmTop = 14552
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label703'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Diff '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 68527
        mmTop = 32015
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
        Caption = 'as '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 189707
        mmTop = 35190
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 189707
        mmTop = 38629
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label304'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Day Shift   1  From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 19050
        mmWidth = 25400
        BandType = 0
      end
      object sj01: TppLabel
        UserName = 'sj01'
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
        mmLeft = 29898
        mmTop = 19050
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label135'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 62706
        mmTop = 19050
        mmWidth = 11906
        BandType = 0
      end
      object sj03: TppLabel
        UserName = 'sj03'
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
        mmLeft = 75406
        mmTop = 19050
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel145: TppLabel
        UserName = 'Label145'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lunch Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 110331
        mmTop = 19050
        mmWidth = 16404
        BandType = 0
      end
      object sj05: TppLabel
        UserName = 'sj05'
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
        mmLeft = 127794
        mmTop = 19050
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  2  From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 23019
        mmWidth = 12965
        BandType = 0
      end
      object sj001: TppLabel
        UserName = 'sj001'
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
        mmLeft = 29898
        mmTop = 23019
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel149: TppLabel
        UserName = 'Label149'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 62706
        mmTop = 23019
        mmWidth = 11906
        BandType = 0
      end
      object sj003: TppLabel
        UserName = 'sj003'
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
        mmLeft = 75406
        mmTop = 23019
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel150: TppLabel
        UserName = 'Label150'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lunch Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 110331
        mmTop = 23019
        mmWidth = 16404
        BandType = 0
      end
      object sj005: TppLabel
        UserName = 'sj005'
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
        mmLeft = 127794
        mmTop = 23019
        mmWidth = 6879
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 13494
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shift'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 8996
        mmTop = 32015
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GA '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 176213
        mmTop = 32015
        mmWidth = 3704
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LINE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 1852
        mmTop = 1588
        mmWidth = 4784
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
        DataField = 'DATE1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 14552
        mmTop = 1588
        mmWidth = 6943
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
        DataField = 'WKNO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 32999
        mmTop = 1588
        mmWidth = 6689
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
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 56303
        mmTop = 1588
        mmWidth = 7197
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
        DataField = 'SECTT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 77640
        mmTop = 1588
        mmWidth = 7027
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
        DataField = 'SECTC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 93610
        mmTop = 1588
        mmWidth = 7197
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
        DataField = 'SECTT1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 85450
        mmTop = 1588
        mmWidth = 8213
        BandType = 4
      end
      object x002: TppDBText
        UserName = 'x002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 100626
        mmTop = 1588
        mmWidth = 7324
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
        DataField = 'TTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 111072
        mmTop = 1588
        mmWidth = 4022
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
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 114776
        mmTop = 1588
        mmWidth = 7197
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 154147
        mmTop = 1588
        mmWidth = 6985
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 173779
        mmTop = 1588
        mmWidth = 7197
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
        DataField = 'ASECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 168265
        mmTop = 1588
        mmWidth = 7154
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
        DataField = 'ESECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 181843
        mmTop = 1588
        mmWidth = 7070
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
        DataField = 'FLAG'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 129117
        mmTop = 1588
        mmWidth = 5757
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
        DataField = 'ZSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 161820
        mmTop = 1588
        mmWidth = 6985
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OTTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 42746
        mmTop = 1588
        mmWidth = 5673
        BandType = 4
      end
      object ddcu001: TppLabel
        UserName = 'ddcu001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '      '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 193146
        mmTop = 1588
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText202'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 117189
        mmTop = 1588
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
        DataField = 'WORKERO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 44831
        mmTop = 1588
        mmWidth = 11261
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WDAY'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 29104
        mmTop = 1588
        mmWidth = 6392
        BandType = 4
      end
      object ddf01: TppLabel
        UserName = 'ddf01'
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
        mmLeft = 65352
        mmTop = 1588
        mmWidth = 4763
        BandType = 4
      end
      object ddf02: TppLabel
        UserName = 'ddf02'
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
        mmLeft = 71702
        mmTop = 1588
        mmWidth = 4763
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
        DataField = 'SHFT'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2582
        mmLeft = 10319
        mmTop = 1588
        mmWidth = 5588
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 73290
      mmPrintPosition = 0
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 794
        mmWidth = 196850
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 6350
        mmWidth = 196850
        BandType = 7
      end
      object ottl002: TppDBCalc
        UserName = 'ottl002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OTTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 37243
        mmTop = 2381
        mmWidth = 11176
        BandType = 7
      end
      object gross002: TppDBCalc
        UserName = 'gross002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 50631
        mmTop = 2381
        mmWidth = 12869
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
        DataField = 'SECTT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 72008
        mmTop = 2381
        mmWidth = 12658
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
        DataField = 'SECTT1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 79820
        mmTop = 2381
        mmWidth = 13843
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
        DataField = 'SECTC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 87937
        mmTop = 2381
        mmWidth = 12869
        BandType = 7
      end
      object x004: TppDBCalc
        UserName = 'x004'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 94954
        mmTop = 2381
        mmWidth = 12996
        BandType = 7
      end
      object ttl002: TppDBCalc
        UserName = 'ttl002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 105569
        mmTop = 2381
        mmWidth = 9525
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
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 109104
        mmTop = 2381
        mmWidth = 12869
        BandType = 7
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc104'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 148601
        mmTop = 2381
        mmWidth = 12531
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
        DataField = 'ZSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 156146
        mmTop = 2381
        mmWidth = 12658
        BandType = 7
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ASECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 162677
        mmTop = 2381
        mmWidth = 12742
        BandType = 7
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 168106
        mmTop = 2381
        mmWidth = 12869
        BandType = 7
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ESECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 176170
        mmTop = 2381
        mmWidth = 12742
        BandType = 7
      end
      object DCU002: TppLabel
        UserName = 'DCU002'
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
        mmLeft = 188384
        mmTop = 7673
        mmWidth = 7938
        BandType = 7
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 8467
        mmTop = 2381
        mmWidth = 5556
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 11377
        mmWidth = 196850
        BandType = 7
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 8467
        mmTop = 7673
        mmWidth = 6615
        BandType = 7
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 24342
        mmLeft = 529
        mmTop = 16140
        mmWidth = 196586
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad of special lost time:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 529
        mmTop = 13229
        mmWidth = 24871
        BandType = 7
      end
      object ppDBCalc62: TppDBCalc
        UserName = 'DBCalc62'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 39116
        mmTop = 2381
        mmWidth = 16976
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 111474
        mmTop = 2381
        mmWidth = 16849
        BandType = 7
      end
      object fdf01: TppLabel
        UserName = 'fdf01'
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
        mmLeft = 65881
        mmTop = 2381
        mmWidth = 4233
        BandType = 7
      end
      object fdf02: TppLabel
        UserName = 'fdf02'
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
        mmLeft = 72231
        mmTop = 2381
        mmWidth = 4233
        BandType = 7
      end
      object tmarks01: TppLabel
        UserName = 'tmarks01'
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
        mmLeft = 129117
        mmTop = 2381
        mmWidth = 8731
        BandType = 7
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Notepad of default ttl sect hr is lower than bottom line or high' +
          'er than optimum:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 529
        mmTop = 41275
        mmWidth = 68792
        BandType = 7
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 28046
        mmLeft = 529
        mmTop = 44450
        mmWidth = 196586
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'LINE'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentColumn = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 15875
          mmLeft = 8467
          mmTop = 0
          mmWidth = 188913
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
          DataField = 'SECTT1'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 79481
          mmTop = 11642
          mmWidth = 14182
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
          DataField = 'SECTC'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 87640
          mmTop = 11642
          mmWidth = 13166
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
          DataField = 'SECTT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 71671
          mmTop = 11642
          mmWidth = 12996
          BandType = 5
          GroupNo = 0
        end
        object gross001: TppDBCalc
          UserName = 'gross001'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 50334
          mmTop = 11642
          mmWidth = 13166
          BandType = 5
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Working Day(W) : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 11113
          mmTop = 1323
          mmWidth = 16404
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
          Caption = 'Sunday(S): '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 11113
          mmTop = 4763
          mmWidth = 10319
          BandType = 5
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Public Holiday(H):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 11113
          mmTop = 8202
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
        end
        object S01: TppLabel
          UserName = 'S01'
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
          mmHeight = 2910
          mmLeft = 35454
          mmTop = 4763
          mmWidth = 1588
          BandType = 5
          GroupNo = 0
        end
        object S02: TppLabel
          UserName = 'S02'
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
          mmHeight = 2910
          mmLeft = 31221
          mmTop = 8202
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
        end
        object s03: TppLabel
          UserName = 's03'
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
          mmHeight = 2910
          mmLeft = 33073
          mmTop = 1323
          mmWidth = 3969
          BandType = 5
          GroupNo = 0
        end
        object x003: TppDBCalc
          UserName = 'x003'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'OSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 94657
          mmTop = 11642
          mmWidth = 13293
          BandType = 5
          GroupNo = 0
        end
        object ttl001: TppDBCalc
          UserName = 'ttl001'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TTL'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 105103
          mmTop = 11642
          mmWidth = 9991
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
          DataField = 'CSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 108807
          mmTop = 11642
          mmWidth = 13166
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'LSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 148178
          mmTop = 11642
          mmWidth = 12954
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ZSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 155850
          mmTop = 11642
          mmWidth = 12954
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'RSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 167809
          mmTop = 11642
          mmWidth = 13166
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc103'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ASECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 162296
          mmTop = 11642
          mmWidth = 13123
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
          DataField = 'ESECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 175873
          mmTop = 11642
          mmWidth = 13039
          BandType = 5
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15610
          mmLeft = 128588
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15610
          mmLeft = 152929
          mmTop = 265
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
        object ottl001: TppDBCalc
          UserName = 'ottl001'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'OTTL'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 36777
          mmTop = 11642
          mmWidth = 11642
          BandType = 5
          GroupNo = 0
        end
        object dcu001: TppLabel
          UserName = 'dcu001'
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
          mmLeft = 189971
          mmTop = 11642
          mmWidth = 6350
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
          DataField = 'WORKERC'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 111220
          mmTop = 11642
          mmWidth = 17103
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
          DataField = 'WORKERO'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2582
          mmLeft = 38862
          mmTop = 11642
          mmWidth = 17230
          BandType = 5
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Operating (day): '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 11113
          mmTop = 11642
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
        end
        object s04: TppLabel
          UserName = 's04'
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
          mmLeft = 33867
          mmTop = 11642
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object o001: TppLabel
          UserName = 'o001'
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
          mmLeft = 44186
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object b001: TppLabel
          UserName = 'b001'
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
          mmLeft = 51858
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object d001: TppLabel
          UserName = 'd001'
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
          mmLeft = 59267
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object n1001: TppLabel
          UserName = 'n1001'
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
          mmLeft = 80433
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object n2001: TppLabel
          UserName = 'n2001'
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
          mmLeft = 89429
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object o1001: TppLabel
          UserName = 'o1001'
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
          mmLeft = 96573
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object o2001: TppLabel
          UserName = 'o2001'
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
          mmLeft = 103717
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object n001: TppLabel
          UserName = 'n001'
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
          mmLeft = 110861
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object d00101: TppLabel
          UserName = 'd00101'
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
          mmLeft = 117740
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object wc001: TppLabel
          UserName = 'wc001'
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
          mmLeft = 124090
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object a001: TppLabel
          UserName = 'a001'
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
          mmLeft = 171186
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
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
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 176742
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object e001: TppLabel
          UserName = 'e001'
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
          mmLeft = 184680
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object dc001: TppLabel
          UserName = 'dc001'
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
          mmLeft = 192088
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object l001: TppLabel
          UserName = 'l001'
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
          mmLeft = 156898
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object z001: TppLabel
          UserName = 'z001'
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
          mmLeft = 164571
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object o002: TppLabel
          UserName = 'o002'
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
          mmLeft = 44186
          mmTop = 4763
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object b002: TppLabel
          UserName = 'b002'
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
          mmLeft = 51858
          mmTop = 4763
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object d002: TppLabel
          UserName = 'd002'
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
          mmLeft = 59267
          mmTop = 4763
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object n1002: TppLabel
          UserName = 'n1002'
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
          mmLeft = 79375
          mmTop = 4763
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object n2002: TppLabel
          UserName = 'n2002'
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
          mmLeft = 88371
          mmTop = 4763
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object o1002: TppLabel
          UserName = 'o1002'
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
          mmLeft = 95515
          mmTop = 4763
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object o2002: TppLabel
          UserName = 'o2002'
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
          mmLeft = 102659
          mmTop = 4763
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object n002: TppLabel
          UserName = 'n002'
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
          mmLeft = 110861
          mmTop = 4763
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object d00102: TppLabel
          UserName = 'd00102'
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
          mmLeft = 115623
          mmTop = 4763
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object wc002: TppLabel
          UserName = 'wc002'
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
          mmLeft = 122767
          mmTop = 4763
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object l002: TppLabel
          UserName = 'l002'
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
          mmLeft = 157427
          mmTop = 4763
          mmWidth = 3704
          BandType = 5
          GroupNo = 0
        end
        object z002: TppLabel
          UserName = 'z002'
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
          mmLeft = 164571
          mmTop = 4763
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object a002: TppLabel
          UserName = 'a002'
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
          mmLeft = 171186
          mmTop = 4763
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
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
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 177007
          mmTop = 4763
          mmWidth = 3969
          BandType = 5
          GroupNo = 0
        end
        object e002: TppLabel
          UserName = 'e002'
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
          mmLeft = 184680
          mmTop = 4763
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object dc002: TppLabel
          UserName = 'dc002'
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
          mmLeft = 191029
          mmTop = 4763
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object o003: TppLabel
          UserName = 'o003'
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
          mmLeft = 44186
          mmTop = 8202
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object b003: TppLabel
          UserName = 'b003'
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
          mmLeft = 51858
          mmTop = 8202
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object d003: TppLabel
          UserName = 'd003'
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
          mmLeft = 59267
          mmTop = 8202
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object n1003: TppLabel
          UserName = 'n1003'
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
          mmLeft = 79375
          mmTop = 8202
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object n2003: TppLabel
          UserName = 'n2003'
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
          mmLeft = 88371
          mmTop = 8202
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object o1003: TppLabel
          UserName = 'o1003'
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
          mmLeft = 95515
          mmTop = 8202
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object o2003: TppLabel
          UserName = 'o2003'
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
          mmLeft = 102659
          mmTop = 8202
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object n003: TppLabel
          UserName = 'n003'
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
          mmLeft = 110861
          mmTop = 8202
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object d00103: TppLabel
          UserName = 'd00103'
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
          mmLeft = 116681
          mmTop = 8202
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object wc003: TppLabel
          UserName = 'wc003'
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
          mmLeft = 122767
          mmTop = 8202
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object l003: TppLabel
          UserName = 'l003'
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
          mmLeft = 157427
          mmTop = 8202
          mmWidth = 3704
          BandType = 5
          GroupNo = 0
        end
        object z003: TppLabel
          UserName = 'z003'
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
          mmLeft = 164571
          mmTop = 8202
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object a003: TppLabel
          UserName = 'a003'
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
          mmLeft = 171186
          mmTop = 8202
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
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
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 177007
          mmTop = 8202
          mmWidth = 3969
          BandType = 5
          GroupNo = 0
        end
        object e003: TppLabel
          UserName = 'e003'
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
          mmLeft = 184680
          mmTop = 8202
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object dc003: TppLabel
          UserName = 'dc003'
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
          mmLeft = 191030
          mmTop = 8202
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object sdf01: TppLabel
          UserName = 'sdf01'
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
          mmLeft = 65352
          mmTop = 1323
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object sdf02: TppLabel
          UserName = 'sdf02'
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
          mmLeft = 71702
          mmTop = 1323
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object sdf11: TppLabel
          UserName = 'sdf11'
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
          mmLeft = 65352
          mmTop = 4763
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object sdf12: TppLabel
          UserName = 'sdf12'
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
          mmLeft = 71702
          mmTop = 4763
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object sdf21: TppLabel
          UserName = 'sdf21'
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
          mmLeft = 65352
          mmTop = 8202
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object sdf31: TppLabel
          UserName = 'sdf31'
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
          mmLeft = 65352
          mmTop = 11642
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object sdf32: TppLabel
          UserName = 'sdf32'
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
          mmLeft = 71702
          mmTop = 11642
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object sdf22: TppLabel
          UserName = 'sdf22'
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
          mmLeft = 71702
          mmTop = 8202
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object marsk001: TppLabel
          UserName = 'marsk001'
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
          mmLeft = 129117
          mmTop = 11642
          mmWidth = 8996
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'DATE1'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        PrintHeight = phDynamic
        HideWhenOneDetail = False
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
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 265
          mmWidth = 197579
          BandType = 5
          GroupNo = 1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppBDEPipeline2
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.PaperName = 'A4'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.SaveDeviceSettings = False
            PrinterSetup.mmMarginBottom = 6350
            PrinterSetup.mmMarginLeft = 6250
            PrinterSetup.mmMarginRight = 6250
            PrinterSetup.mmMarginTop = 6350
            PrinterSetup.mmPaperHeight = 297127
            PrinterSetup.mmPaperWidth = 210079
            PrinterSetup.PaperSize = 9
            Units = utMillimeters
            Version = '11.07'
            mmColumnWidth = 0
            DataPipelineName = 'ppBDEPipeline2'
            object ppTitleBand1: TppTitleBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppDetailBand4: TppDetailBand
              mmBottomOffset = 0
              mmHeight = 3969
              mmPrintPosition = 0
              object ppDBText64: TppDBText
                UserName = 'DBText29'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'DCU'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 189802
                mmTop = 529
                mmWidth = 6519
                BandType = 4
              end
              object ppDBText17: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'CSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 59351
                mmTop = 529
                mmWidth = 4149
                BandType = 4
              end
              object ppDBText29: TppDBText
                UserName = 'DBText2'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'SECTT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 81704
                mmTop = 529
                mmWidth = 2963
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
                DataField = 'SECTC'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 97844
                mmTop = 529
                mmWidth = 2963
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
                DataField = 'SECTT1'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 89514
                mmTop = 529
                mmWidth = 4149
                BandType = 4
              end
              object x005: TppDBText
                UserName = 'x005'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'OSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 104987
                mmTop = 529
                mmWidth = 2963
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
                DataField = 'TTL'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 110945
                mmTop = 529
                mmWidth = 4149
                BandType = 4
              end
              object ppDBText46: TppDBText
                UserName = 'DBText204'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'CSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 117824
                mmTop = 529
                mmWidth = 4149
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
                DataField = 'LSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 158169
                mmTop = 529
                mmWidth = 2963
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
                DataField = 'RSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 178013
                mmTop = 529
                mmWidth = 2963
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
                DataField = 'ASECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 172456
                mmTop = 529
                mmWidth = 2963
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
                DataField = 'ESECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 185950
                mmTop = 529
                mmWidth = 2963
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
                DataField = 'ZSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 165842
                mmTop = 529
                mmWidth = 2963
                BandType = 4
              end
              object ppDBText57: TppDBText
                UserName = 'DBText57'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'OTTL'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 44270
                mmTop = 529
                mmWidth = 4149
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
                DataField = 'WORKERC'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 125360
                mmTop = 529
                mmWidth = 2963
                BandType = 4
              end
              object ppDBText59: TppDBText
                UserName = 'DBText59'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'WORKERO'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 51943
                mmTop = 529
                mmWidth = 4149
                BandType = 4
              end
              object ppDBText60: TppDBText
                UserName = 'DBText60'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'SECTO'
                DataPipeline = ppBDEPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2498
                mmLeft = 14817
                mmTop = 529
                mmWidth = 1185
                BandType = 4
              end
              object ppLabel36: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 10319
                mmTop = 529
                mmWidth = 3704
                BandType = 4
              end
              object srdif01: TppLabel
                UserName = 'srdif01'
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
                mmLeft = 65352
                mmTop = 529
                mmWidth = 4763
                BandType = 4
              end
              object srdif02: TppLabel
                UserName = 'srdif02'
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
                mmLeft = 71702
                mmTop = 529
                mmWidth = 4763
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
                DataField = 'FLAG'
                DataPipeline = ppBDEPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2667
                mmLeft = 129117
                mmTop = 529
                mmWidth = 6604
                BandType = 4
              end
            end
            object ppSummaryBand4: TppSummaryBand
              AlignToBottom = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6250
    PrinterSetup.mmMarginRight = 6250
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 640
    Top = 32
    Version = '11.07'
    mmColumnWidth = 197379
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppLabel72: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current Workshop'#39's Line work Calendar & CU % by line - summary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 2117
        mmTop = 5292
        mmWidth = 184150
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162454
        mmTop = 12435
        mmWidth = 12965
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
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
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 177007
        mmTop = 12435
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162454
        mmTop = 16404
        mmWidth = 6615
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
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
        mmLeft = 177007
        mmTop = 16404
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Version: 2.6.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162454
        mmTop = 20373
        mmWidth = 17463
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape2'
        mmHeight = 15610
        mmLeft = 4233
        mmTop = 25135
        mmWidth = 186796
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 12435
        mmTop = 29898
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current Work Section Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 93927
        mmTop = 25929
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 51594
        mmTop = 29898
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Normal1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 76200
        mmTop = 29898
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 99484
        mmTop = 29898
        mmWidth = 3969
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 31485
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Normal2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 87048
        mmTop = 29898
        mmWidth = 7938
        BandType = 0
      end
      object y001: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 107950
        mmTop = 29898
        mmWidth = 3969
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 113506
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 115888
        mmTop = 33867
        mmWidth = 3704
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 31750
        mmTop = 29104
        mmWidth = 99219
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Net'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 115888
        mmTop = 29898
        mmWidth = 3175
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 122502
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gross'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 124354
        mmTop = 29898
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 124354
        mmTop = 33867
        mmWidth = 3704
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 139171
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 174096
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 157427
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 148432
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 140759
        mmTop = 29898
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'on-hold'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 140494
        mmTop = 33073
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 140494
        mmTop = 36248
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rest'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 168275
        mmTop = 33073
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 168275
        mmTop = 36248
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 160073
        mmTop = 29898
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 160073
        mmTop = 33073
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Special'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 174890
        mmTop = 29898
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lost time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 174890
        mmTop = 33073
        mmWidth = 7408
        BandType = 0
      end
      object ppLine40: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 165894
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Loss (Sect Hr)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 146050
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Time '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 149490
        mmTop = 33073
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Linkage '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 149490
        mmTop = 29898
        mmWidth = 7408
        BandType = 0
      end
      object ppLine42: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 75406
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'tst01'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 185473
        mmTop = 6350
        mmWidth = 9260
        BandType = 0
      end
      object ppLine44: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 182827
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CU%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 183621
        mmTop = 29898
        mmWidth = 5027
        BandType = 0
      end
      object ppLine45: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 41010
        mmTop = 29104
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Optimum'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 32279
        mmTop = 29898
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Sect Hr  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 47361
        mmTop = 25929
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date       From  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 73025
        mmTop = 19579
        mmWidth = 19315
        BandType = 0
      end
      object dt001: TppLabel
        UserName = 'dt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2006/12/29'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 93134
        mmTop = 19579
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 113506
        mmTop = 19579
        mmWidth = 4763
        BandType = 0
      end
      object dt002: TppLabel
        UserName = 'dt002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2006/12/29'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 119856
        mmTop = 19579
        mmWidth = 14288
        BandType = 0
      end
      object ppLine74: TppLine
        UserName = 'Line74'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 139436
        mmTop = 29104
        mmWidth = 43656
        BandType = 0
      end
      object ppLine75: TppLine
        UserName = 'Line75'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 130969
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Chase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 132292
        mmTop = 25929
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label502'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 132292
        mmTop = 29898
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Used'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 132292
        mmTop = 36248
        mmWidth = 5027
        BandType = 0
      end
      object ppLine76: TppLine
        UserName = 'Line76'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 50536
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bottom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 42863
        mmTop = 29898
        mmWidth = 6646
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label602'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 43656
        mmTop = 33338
        mmWidth = 4064
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 131498
        mmTop = 33073
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GAP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 160073
        mmTop = 36248
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 19579
        mmWidth = 11377
        BandType = 0
      end
      object fty002: TppLabel
        UserName = 'fty002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SL  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 16933
        mmTop = 19579
        mmWidth = 11642
        BandType = 0
      end
      object Workshop: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 34396
        mmTop = 19579
        mmWidth = 15081
        BandType = 0
      end
      object wks001: TppLabel
        UserName = 'wks001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KB1A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 50800
        mmTop = 19579
        mmWidth = 11642
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 20638
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Operating '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 21431
        mmTop = 29898
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label603'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(day) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 24077
        mmTop = 33338
        mmWidth = 5027
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 59531
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Diff  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 64823
        mmTop = 29898
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'as '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 183621
        mmTop = 33073
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 183621
        mmTop = 36248
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GA '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 168275
        mmTop = 29898
        mmWidth = 3641
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText30: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LINE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 12435
        mmTop = 529
        mmWidth = 4699
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 51319
        mmTop = 529
        mmWidth = 7154
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 77724
        mmTop = 529
        mmWidth = 6943
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 96828
        mmTop = 529
        mmWidth = 7154
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 87387
        mmTop = 529
        mmWidth = 8128
        BandType = 4
      end
      object y002: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 105167
        mmTop = 529
        mmWidth = 7281
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 118163
        mmTop = 529
        mmWidth = 3810
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 123550
        mmTop = 529
        mmWidth = 7154
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 141351
        mmTop = 529
        mmWidth = 6816
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 166942
        mmTop = 529
        mmWidth = 7154
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ASECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 158338
        mmTop = 529
        mmWidth = 7027
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ESECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 175271
        mmTop = 529
        mmWidth = 7027
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ZSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 150220
        mmTop = 529
        mmWidth = 6943
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OTTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 35020
        mmTop = 529
        mmWidth = 5461
        BandType = 4
      end
      object ddcu01: TppLabel
        UserName = 'ddcu01'
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
        mmLeft = 184415
        mmTop = 529
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText203'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 126979
        mmTop = 529
        mmWidth = 11134
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
        DataField = 'WORKERO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 37951
        mmTop = 529
        mmWidth = 11261
        BandType = 4
      end
      object pday01: TppLabel
        UserName = 'pday01'
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
        mmLeft = 24077
        mmTop = 529
        mmWidth = 5292
        BandType = 4
      end
      object diff01: TppLabel
        UserName = 'diff01'
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
        mmLeft = 61913
        mmTop = 529
        mmWidth = 4763
        BandType = 4
      end
      object diff02: TppLabel
        UserName = 'diff02'
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
        mmLeft = 70115
        mmTop = 529
        mmWidth = 4763
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel76: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Average by line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 4763
        mmTop = 1588
        mmWidth = 14817
        BandType = 7
      end
      object ppDBCalc49: TppDBCalc
        UserName = 'DBCalc49'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OTTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 25665
        mmTop = 1588
        mmWidth = 14817
        BandType = 7
      end
      object ppDBCalc50: TppDBCalc
        UserName = 'DBCalc50'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 41963
        mmTop = 1588
        mmWidth = 16510
        BandType = 7
      end
      object ppDBCalc51: TppDBCalc
        UserName = 'DBCalc51'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 68368
        mmTop = 1588
        mmWidth = 16298
        BandType = 7
      end
      object ppDBCalc52: TppDBCalc
        UserName = 'DBCalc52'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 78030
        mmTop = 1588
        mmWidth = 17484
        BandType = 7
      end
      object ppDBCalc53: TppDBCalc
        UserName = 'DBCalc202'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 87472
        mmTop = 1588
        mmWidth = 16510
        BandType = 7
      end
      object y004: TppDBCalc
        UserName = 'y004'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 95812
        mmTop = 1588
        mmWidth = 16637
        BandType = 7
      end
      object ppDBCalc55: TppDBCalc
        UserName = 'DBCalc55'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 108807
        mmTop = 1588
        mmWidth = 13166
        BandType = 7
      end
      object ppDBCalc56: TppDBCalc
        UserName = 'DBCalc56'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 114195
        mmTop = 1588
        mmWidth = 16510
        BandType = 7
      end
      object ppDBCalc57: TppDBCalc
        UserName = 'DBCalc57'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 131996
        mmTop = 1588
        mmWidth = 16171
        BandType = 7
      end
      object ppDBCalc58: TppDBCalc
        UserName = 'DBCalc58'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ZSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 140865
        mmTop = 1588
        mmWidth = 16298
        BandType = 7
      end
      object ppDBCalc59: TppDBCalc
        UserName = 'DBCalc59'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ASECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 148982
        mmTop = 1588
        mmWidth = 16383
        BandType = 7
      end
      object ppDBCalc60: TppDBCalc
        UserName = 'DBCalc60'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 157587
        mmTop = 1588
        mmWidth = 16510
        BandType = 7
      end
      object ppDBCalc61: TppDBCalc
        UserName = 'DBCalc61'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ESECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 165915
        mmTop = 1588
        mmWidth = 16383
        BandType = 7
      end
      object ADCU01: TppLabel
        UserName = 'ADCU01'
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
        mmLeft = 182563
        mmTop = 1588
        mmWidth = 8202
        BandType = 7
      end
      object ppDBCalc65: TppDBCalc
        UserName = 'DBCalc65'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 117624
        mmTop = 1588
        mmWidth = 20489
        BandType = 7
      end
      object ppDBCalc69: TppDBCalc
        UserName = 'DBCalc69'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 28597
        mmTop = 1588
        mmWidth = 20616
        BandType = 7
      end
      object diff21: TppLabel
        UserName = 'diff21'
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
        mmLeft = 61913
        mmTop = 1588
        mmWidth = 4763
        BandType = 7
      end
      object diff22: TppLabel
        UserName = 'diff22'
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
        mmLeft = 70115
        mmTop = 1588
        mmWidth = 4763
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'TSHOP'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentColumn = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppLine27: TppLine
          UserName = 'Line27'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4233
          mmTop = 1058
          mmWidth = 186796
          BandType = 5
          GroupNo = 0
        end
        object ppLine29: TppLine
          UserName = 'Line29'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4233
          mmTop = 6615
          mmWidth = 186796
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc36: TppDBCalc
          UserName = 'DBCalc36'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'OTTL'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 29570
          mmTop = 2646
          mmWidth = 11176
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc37: TppDBCalc
          UserName = 'DBCalc37'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 45604
          mmTop = 2646
          mmWidth = 12869
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc38: TppDBCalc
          UserName = 'DBCalc38'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 72008
          mmTop = 2646
          mmWidth = 12658
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc39'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTT1'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 81672
          mmTop = 2646
          mmWidth = 13843
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc201'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTC'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 91112
          mmTop = 2646
          mmWidth = 12869
          BandType = 5
          GroupNo = 0
        end
        object y003: TppDBCalc
          UserName = 'y003'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'OSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 99452
          mmTop = 2646
          mmWidth = 12996
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc42: TppDBCalc
          UserName = 'DBCalc42'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TTL'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 112448
          mmTop = 2646
          mmWidth = 9525
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc43: TppDBCalc
          UserName = 'DBCalc43'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 117835
          mmTop = 2646
          mmWidth = 12869
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc44: TppDBCalc
          UserName = 'DBCalc44'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'LSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 135636
          mmTop = 2646
          mmWidth = 12531
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc45: TppDBCalc
          UserName = 'DBCalc45'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ZSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 144504
          mmTop = 2646
          mmWidth = 12658
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc46: TppDBCalc
          UserName = 'DBCalc46'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ASECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 152622
          mmTop = 2646
          mmWidth = 12742
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc47: TppDBCalc
          UserName = 'DBCalc47'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'RSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 161227
          mmTop = 2646
          mmWidth = 12869
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc48: TppDBCalc
          UserName = 'DBCalc48'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ESECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 169556
          mmTop = 2646
          mmWidth = 12742
          BandType = 5
          GroupNo = 0
        end
        object sdcu01: TppLabel
          UserName = 'sdcu01'
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
          mmLeft = 184415
          mmTop = 2646
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object ppLabel78: TppLabel
          UserName = 'Label78'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'TTL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 4763
          mmTop = 2646
          mmWidth = 3704
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc63: TppDBCalc
          UserName = 'DBCalc63'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'WORKERC'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 121264
          mmTop = 2646
          mmWidth = 16849
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc66: TppDBCalc
          UserName = 'DBCalc66'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'WORKERO'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 32237
          mmTop = 2646
          mmWidth = 16976
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'LINE'
          DataPipeline = ppBDEPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2498
          mmLeft = 5122
          mmTop = 2646
          mmWidth = 11811
          BandType = 5
          GroupNo = 0
        end
        object diff11: TppLabel
          UserName = 'diff11'
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
          mmLeft = 61913
          mmTop = 2646
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object diff12: TppLabel
          UserName = 'diff12'
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
          mmLeft = 70115
          mmTop = 2646
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6250
    PrinterSetup.mmMarginRight = 6250
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 544
    Version = '11.07'
    mmColumnWidth = 197379
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current Line Work Calendar by Line/Day  -  Line on-hold time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 14552
        mmTop = 5292
        mmWidth = 124090
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 15081
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'line01'
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
        mmLeft = 9790
        mmTop = 15081
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 76200
        mmTop = 15081
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'date01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '    /  /  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 15081
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 115623
        mmTop = 15081
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'date02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '    /  /  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 15081
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165629
        mmTop = 11906
        mmWidth = 12965
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
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
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 11906
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165629
        mmTop = 15875
        mmWidth = 6615
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
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
        mmLeft = 180182
        mmTop = 15875
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Version: 2.6.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165629
        mmTop = 19844
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 15081
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'tshop01'
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
        mmLeft = 47890
        mmTop = 15081
        mmWidth = 10054
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape2'
        mmHeight = 15610
        mmLeft = 529
        mmTop = 25135
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 1852
        mmTop = 29898
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 20373
        mmTop = 29898
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 36513
        mmTop = 29898
        mmWidth = 5556
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 8467
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 35983
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine50: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 29633
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel141: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Non'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 30956
        mmTop = 25929
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel142: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 30956
        mmTop = 29898
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 30427
        mmTop = 33867
        mmWidth = 4498
        BandType = 0
      end
      object ppLine51: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 19050
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 15346
        mmTop = 29898
        mmWidth = 2910
        BandType = 0
      end
      object ppLine52: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 14552
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel148: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shift'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 9525
        mmTop = 29898
        mmWidth = 4233
        BandType = 0
      end
      object ppLine56: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 42598
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine57: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 99748
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 100542
        mmTop = 25929
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'on-hold'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 100277
        mmTop = 29633
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 100277
        mmTop = 33867
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel157: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Consolidated 5 lost elements '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 61119
        mmTop = 29898
        mmWidth = 37835
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'tst01'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 140494
        mmTop = 5292
        mmWidth = 22225
        BandType = 0
      end
      object ppLine64: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 182298
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine65: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 189707
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OCU%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 182827
        mmTop = 30692
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DCU%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 190236
        mmTop = 30692
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel173: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'of Line on-hold time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 61119
        mmTop = 33867
        mmWidth = 38100
        BandType = 0
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 108215
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2A '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 110331
        mmTop = 33867
        mmWidth = 3175
        BandType = 0
      end
      object ppLine54: TppLine
        UserName = 'Line54'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 126736
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine55: TppLine
        UserName = 'Line55'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 135996
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 145257
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 154517
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 163777
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 173038
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 117475
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 51594
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine66: TppLine
        UserName = 'Line66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 60325
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LINE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 1852
        mmTop = 529
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DATE1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2667
        mmLeft = 20638
        mmTop = 529
        mmWidth = 6604
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WKNO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2667
        mmLeft = 35983
        mmTop = 529
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel174: TppLabel
        UserName = 'wday1'
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
        mmLeft = 30692
        mmTop = 529
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tplant'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 15346
        mmTop = 529
        mmWidth = 2582
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHFT'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2667
        mmLeft = 9525
        mmTop = 529
        mmWidth = 5546
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2381
        mmLeft = 104511
        mmTop = 529
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FLAG'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2646
        mmLeft = 61119
        mmTop = 529
        mmWidth = 5292
        BandType = 4
      end
      object ppLabel175: TppLabel
        UserName = 'docu001'
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
        mmLeft = 181505
        mmTop = 529
        mmWidth = 7408
        BandType = 4
      end
      object ppLabel176: TppLabel
        UserName = 'ddcu001'
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
        mmLeft = 188913
        mmTop = 529
        mmWidth = 7408
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppLine67: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 794
        mmWidth = 196850
        BandType = 7
      end
      object ppLine68: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 6350
        mmWidth = 196850
        BandType = 7
      end
      object ppDBCalc68: TppDBCalc
        UserName = 'DBCalc104'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2381
        mmLeft = 94986
        mmTop = 2381
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel177: TppLabel
        UserName = 'OCU002'
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
        mmLeft = 180975
        mmTop = 7673
        mmWidth = 7938
        BandType = 7
      end
      object ppLabel178: TppLabel
        UserName = 'DCU002'
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
        mmLeft = 188384
        mmTop = 7673
        mmWidth = 7938
        BandType = 7
      end
      object ppLabel179: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 8467
        mmTop = 2381
        mmWidth = 5556
        BandType = 7
      end
      object ppLine69: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 11642
        mmWidth = 196850
        BandType = 7
      end
      object ppLabel180: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 8467
        mmTop = 7673
        mmWidth = 6615
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'LINE'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentColumn = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 13758
        mmPrintPosition = 0
        object ppShape5: TppShape
          UserName = 'Shape3'
          mmHeight = 13758
          mmLeft = 8467
          mmTop = 0
          mmWidth = 188913
          BandType = 5
          GroupNo = 0
        end
        object ppLabel182: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Working Day:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 9525
          mmTop = 1323
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
        end
        object ppLabel183: TppLabel
          UserName = 'Label42'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sunday:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 9525
          mmTop = 4763
          mmWidth = 7673
          BandType = 5
          GroupNo = 0
        end
        object ppLabel184: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Public Holiday:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 9525
          mmTop = 8202
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
        object ppLabel185: TppLabel
          UserName = 'S01'
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
          mmHeight = 2910
          mmLeft = 33867
          mmTop = 4763
          mmWidth = 1588
          BandType = 5
          GroupNo = 0
        end
        object ppLabel186: TppLabel
          UserName = 'S02'
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
          mmHeight = 2910
          mmLeft = 29633
          mmTop = 8202
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
        end
        object ppLabel187: TppLabel
          UserName = 's03'
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
          mmHeight = 2910
          mmLeft = 31485
          mmTop = 1323
          mmWidth = 3969
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc80: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'LSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2381
          mmLeft = 94986
          mmTop = 1323
          mmWidth = 12435
          BandType = 5
          GroupNo = 0
        end
        object ppLine70: TppLine
          UserName = 'Line17'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 42598
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
        object ppLine71: TppLine
          UserName = 'Line18'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 99748
          mmTop = 265
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
        object ppLabel188: TppLabel
          UserName = 'ocu001'
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
          mmLeft = 182563
          mmTop = 1323
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object ppLabel189: TppLabel
          UserName = 'dcu001'
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
          mmLeft = 189971
          mmTop = 1323
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object ppLine53: TppLine
          UserName = 'Line53'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 108215
          mmTop = 265
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet4
    Left = 672
    Top = 1
  end
  object ppBDEPipeline2: TppBDEPipeline
    DataSource = DataSource3
    UserName = 'BDEPipeline2'
    Left = 704
    Top = 1
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from week52_tmp_1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 672
    Top = 33
  end
  object DataSet2: TADOQuery
    Connection = frmmain.ADOConnection1
    Parameters = <>
    Left = 96
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
    Left = 384
    Top = 16
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0077007300630061006C0065006E006400
      610072000100E55D3458E565C6660100570073002000430061006C0065006E00
      640061007200010001000D000A004C006100620065006C0033000100E05E0100
      460074007900010001000D000A00530070006500650064004200750074007400
      6F006E0031000100BA789A5B01004F004B00010001000D000A004C0061006200
      65006C0034000100E55D3458010057007300010001000D000A00530070006500
      6500640042007500740074006F006E00320001004F004B000100010001000D00
      0A00470072006F007500700042006F0078003100010042661F67010050006500
      720069006F006400010001000D000A004C006100620065006C00310001009E5F
      20000100460072006F006D00010001000D000A004C006100620065006C003200
      010030522000010054006F00010001000D000A00420069007400420074006E00
      32000100DD4F585B01005300610076006500010001000D000A00420069007400
      420074006E00340001001098BD89010050007200650076006900650077000100
      01000D000A00420069007400420074006E00370001000090FA51010045007800
      69007400010001000D000A005300650074005300740061006E00640061007200
      6400430061006C0065006E006400610072003100010053006500740020005300
      740061006E0064006100720064002000430061006C0065006E00640061007200
      0100010001000D000A005300650074005300740061006E006400610072004300
      61006C0065006E00640061007200310001005300650074002000530074006100
      6E0064006100720064002000430061006C0065006E0064006100720001000100
      01000D000A004D006F006400690066007900430061006C0065006E0064006100
      7200310001004D006F0064006900660079002000430061006C0065006E006400
      610072000100010001000D000A004500780070006F0072007400310001004500
      780070006F00720074000100010001000D000A0043006F007000790066007200
      6F006D006F0074006800650072006C0069006E0065003100010043006F007000
      79002000660072006F006D0020006F00740068006500720020006C0069006E00
      65000100010001000D000A00700070004C006100620065006C00310031000100
      430075007200720065006E007400200057006F0072006B00730068006F007000
      2700730020004C0069006E006500200077006F0072006B002000430061006C00
      65006E0064006100720020002600200043005500200025002000620079002000
      6C0069006E0065002000280051004E00200064006500700065006E0064006500
      6E00740029000100010001000D000A00700070004C006100620065006C003100
      320001004C0069006E0065000100010001000D000A00700070004C0061006200
      65006C0031003400010044006100740065002000200020002000200020002000
      460072006F006D0020000100010001000D000A00640061007400650030003100
      010020002000200020002F00200020002F00200020000100010001000D000A00
      700070004C006100620065006C0031003600010054006F000100010001000D00
      0A00640061007400650030003200010020002000200020002F00200020002F00
      200020000100010001000D000A00700070004C006100620065006C0031003800
      01005000720069006E0074006500640020006F006E000100010001000D000A00
      700070004C006100620065006C00310039000100500061006700650001000100
      01000D000A00700070004C006100620065006C00320030000100560065007200
      730069006F006E003A00200032002E0036002E0030000100010001000D000A00
      700070004C006100620065006C0033003800010057006F0072006B0073006800
      6F0070000100010001000D000A00700070004C006100620065006C0031003300
      01004C0069006E0065000100010001000D000A00700070004C00610062006500
      6C0031003500010044006100740065000100010001000D000A00700070004C00
      6100620065006C0031003700010057006B000100010001000D000A0070007000
      4C006100620065006C00320031000100430075007200720065006E0074002000
      57006F0072006B002000530065006300740069006F006E002000480072000100
      010001000D000A00700070004C006100620065006C0032003300010044006500
      6600610075006C0074000100010001000D000A00700070004C00610062006500
      6C003200370001004E006F0072006D0061006C0031000100010001000D000A00
      700070004C006100620065006C003200380001004F0054003100010001000100
      0D000A00700070004C006100620065006C003200350001005300740061007400
      7500730020000100010001000D000A00700070004C006100620065006C003300
      330001004E006F0072006D0061006C0032000100010001000D000A0078003000
      3000310001004F00540032000100010001000D000A00700070004C0061006200
      65006C00340037000100540054004C000100010001000D000A00700070004C00
      6100620065006C003400380001004E00650074000100010001000D000A007000
      70004C006100620065006C00340039000100470072006F007300730001000100
      01000D000A00700070004C006100620065006C00350030000100540054004C00
      0100010001000D000A00700070004C006100620065006C003500310001004C00
      69006E0065000100010001000D000A00700070004C006100620065006C003500
      320001006F006E002D0068006F006C0064000100010001000D000A0070007000
      4C006100620065006C00350033000100740069006D0065000100010001000D00
      0A00700070004C006100620065006C0035003400010043006F006E0073006F00
      6C006900640061007400650064002000350020006C006F007300740020000100
      010001000D000A00700070004C006100620065006C0035003500010052006500
      730074000100010001000D000A00700070004C006100620065006C0035003600
      0100740069006D0065000100010001000D000A00700070004C00610062006500
      6C0035003800010051004E000100010001000D000A00700070004C0061006200
      65006C00350039000100740069006D0065000100010001000D000A0070007000
      4C006100620065006C003600310001005300700065006300690061006C000100
      010001000D000A00700070004C006100620065006C003600320001006C006F00
      7300740020000100010001000D000A00700070004C006100620065006C003600
      340001004300610070006100630069007400790020004C006F00730073002000
      2800530065006300740020004800720029000100010001000D000A0070007000
      4C006100620065006C00360036000100540069006D0065002000010001000100
      0D000A00700070004C006100620065006C003600370001004C0069006E006B00
      61006700650020000100010001000D000A00700070004C006100620065006C00
      3700310001004300550025000100010001000D000A00700070004C0061006200
      65006C003500370001004F007000740069006D0075006D000100010001000D00
      0A00700070004C006100620065006C0036003000010054006F00740061006C00
      200053006500630074002000480072002000200020000100010001000D000A00
      700070004C006100620065006C0036003900010065006C0065006D0065006E00
      7400730020006F00660020004C0069006E00650020000100010001000D000A00
      700070004C006100620065006C00380033000100430068006100730065000100
      010001000D000A00700070004C006100620065006C0038003400010054006900
      6D0065000100010001000D000A00700070004C006100620065006C0038003500
      0100530065006300740020000100010001000D000A00700070004C0061006200
      65006C0038003600010042006F00740074006F006D000100010001000D000A00
      700070004C006100620065006C003800370001004C0069006E00650001000100
      01000D000A00700070004C006100620065006C00390033000100550073006500
      64000100010001000D000A00700070004C006100620065006C00390034000100
      480072000100010001000D000A00700070004C006100620065006C0039003600
      01004700410050000100010001000D000A00700070004C006100620065006C00
      390037000100740069006D00650020000100010001000D000A00700070004C00
      6100620065006C0039003800010020006F006E002D0068006F006C0064002000
      740069006D0065000100010001000D000A00700070004C006100620065006C00
      310031003200010046006100630074006F007200790020000100010001000D00
      0A00700070004C006100620065006C0037003000010044006900660066002000
      0100010001000D000A00700070004C006100620065006C003200340001006100
      730020000100010001000D000A00700070004C006100620065006C0039003900
      0100640065006600610075006C00740020000100010001000D000A0070007000
      4C006100620065006C0031003100360001004400610079002000530068006900
      66007400200020002000310020002000460072006F006D000100010001000D00
      0A00700070004C006100620065006C0031003300350001004F00540020004600
      72006F006D000100010001000D000A00700070004C006100620065006C003100
      3400350001004C0075006E00630068002000540069006D006500010001000100
      0D000A00700070004C006100620065006C003100340037000100200020003200
      20002000460072006F006D000100010001000D000A00700070004C0061006200
      65006C0031003400390001004F0054002000460072006F006D00010001000100
      0D000A00700070004C006100620065006C0031003500300001004C0075006E00
      630068002000540069006D0065000100010001000D000A00700070004C006100
      620065006C00330030000100530068006900660074000100010001000D000A00
      700070004C006100620065006C00330031000100470041002000010001000100
      0D000A0064006400630075003000300031000100200020002000200020002000
      0100010001000D000A00700070004C006100620065006C003600330001005400
      6F00740061006C003A0020000100010001000D000A00700070004C0061006200
      65006C0036003500010057002F004100760065003A0020000100010001000D00
      0A00700070004C006100620065006C003600380001004E006F00740065007000
      6100640020006F00660020007300700065006300690061006C0020006C006F00
      730074002000740069006D0065003A000100010001000D000A00700070004C00
      6100620065006C0031003100340001004E006F00740065007000610064002000
      6F0066002000640065006600610075006C0074002000740074006C0020007300
      65006300740020006800720020006900730020006C006F007700650072002000
      7400680061006E00200062006F00740074006F006D0020006C0069006E006500
      20006F007200200068006900670068006500720020007400680061006E002000
      6F007000740069006D0075006D003A00200020000100010001000D000A007000
      70004C006100620065006C0034003000010057006F0072006B0069006E006700
      200044006100790028005700290020003A0020000100010001000D000A007000
      70004C006100620065006C00340032000100530075006E006400610079002800
      530029003A0020000100010001000D000A00700070004C006100620065006C00
      3400340001005000750062006C0069006300200048006F006C00690064006100
      79002800480029003A000100010001000D000A00700070004C00610062006500
      6C003200320001004F007000650072006100740069006E006700200028006400
      6100790029003A0020000100010001000D000A00700070004C00610062006500
      6C0033003600010051004E0020000100010001000D000A00700070004C006100
      620065006C00370032000100430075007200720065006E007400200057006F00
      72006B00730068006F0070002700730020004C0069006E006500200077006F00
      72006B002000430061006C0065006E0064006100720020002600200043005500
      2000250020006200790020006C0069006E00650020002D002000730075006D00
      6D006100720079000100010001000D000A00700070004C006100620065006C00
      3700390001005000720069006E0074006500640020006F006E00010001000100
      0D000A00700070004C006100620065006C003800300001005000610067006500
      0100010001000D000A00700070004C006100620065006C003800310001005600
      65007200730069006F006E003A00200032002E0036002E003000010001000100
      0D000A00700070004C006100620065006C0031003000340001004C0069006E00
      65000100010001000D000A00700070004C006100620065006C00310030003700
      0100430075007200720065006E007400200057006F0072006B00200053006500
      6300740069006F006E002000480072000100010001000D000A00700070004C00
      6100620065006C003100300038000100440065006600610075006C0074000100
      010001000D000A00700070004C006100620065006C0031003000390001004E00
      6F0072006D0061006C0031000100010001000D000A00700070004C0061006200
      65006C0031003100300001004F00540031000100010001000D000A0070007000
      4C006100620065006C0031003100350001004E006F0072006D0061006C003200
      0100010001000D000A00790030003000310001004F0054003200010001000100
      0D000A00700070004C006100620065006C003100310038000100540054004C00
      0100010001000D000A00700070004C006100620065006C003100310039000100
      4E00650074000100010001000D000A00700070004C006100620065006C003100
      320030000100470072006F00730073000100010001000D000A00700070004C00
      6100620065006C003100320031000100540054004C000100010001000D000A00
      700070004C006100620065006C0031003200320001004C0069006E0065000100
      010001000D000A00700070004C006100620065006C0031003200330001006F00
      6E002D0068006F006C0064000100010001000D000A00700070004C0061006200
      65006C003100320034000100740069006D0065000100010001000D000A007000
      70004C006100620065006C003100320036000100520065007300740001000100
      01000D000A00700070004C006100620065006C00310032003700010074006900
      6D0065000100010001000D000A00700070004C006100620065006C0031003200
      3800010051004E000100010001000D000A00700070004C006100620065006C00
      3100320039000100740069006D0065000100010001000D000A00700070004C00
      6100620065006C0031003300300001005300700065006300690061006C000100
      010001000D000A00700070004C006100620065006C0031003300310001006C00
      6F00730074002000740069006D0065000100010001000D000A00700070004C00
      6100620065006C00310033003200010043006100700061006300690074007900
      20004C006F007300730020002800530065006300740020004800720029000100
      010001000D000A00700070004C006100620065006C0031003300330001005400
      69006D00650020000100010001000D000A00700070004C006100620065006C00
      31003300340001004C0069006E006B0061006700650020000100010001000D00
      0A00700070004C006100620065006C0031003300380001004300550025000100
      010001000D000A00700070004C006100620065006C0031003300390001004F00
      7000740069006D0075006D000100010001000D000A00700070004C0061006200
      65006C00310034003000010054006F00740061006C0020005300650063007400
      200048007200200020000100010001000D000A00700070004C00610062006500
      6C00370033000100440061007400650020002000200020002000200020004600
      72006F006D00200020000100010001000D000A00640074003000300031000100
      32003000300036002F00310032002F00320039000100010001000D000A007000
      70004C006100620065006C0037003500010054006F0020002000010001000100
      0D000A0064007400300030003200010032003000300036002F00310032002F00
      320039000100010001000D000A00700070004C006100620065006C0038003800
      0100430068006100730065000100010001000D000A00700070004C0061006200
      65006C00380039000100540069006D0065000100010001000D000A0070007000
      4C006100620065006C0039003000010055007300650064000100010001000D00
      0A00700070004C006100620065006C0039003100010042006F00740074006F00
      6D000100010001000D000A00700070004C006100620065006C00390032000100
      4C0069006E0065000100010001000D000A00700070004C006100620065006C00
      39003500010053006500630074002000480072000100010001000D000A007000
      70004C006100620065006C003100300031000100470041005000010001000100
      0D000A00700070004C006100620065006C003200360001004600610063007400
      6F0072007900200020000100010001000D000A00660074007900300030003200
      010053004C00200020000100010001000D000A0057006F0072006B0073006800
      6F007000010057006F0072006B00730068006F0070000100010001000D000A00
      77006B00730030003000310001004B004200310041000100010001000D000A00
      700070004C006100620065006C003200390001004F0070006500720061007400
      69006E00670020000100010001000D000A00700070004C006100620065006C00
      3700340001002800640061007900290020000100010001000D000A0070007000
      4C006100620065006C0038003200010044006900660066002000200001000100
      01000D000A00700070004C006100620065006C00310030003000010061007300
      20000100010001000D000A00700070004C006100620065006C00310031003300
      0100640065006600610075006C00740020000100010001000D000A0070007000
      4C006100620065006C003300320001004700410020000100010001000D000A00
      700070004C006100620065006C00370036000100410076006500720061006700
      650020006200790020006C0069006E0065000100010001000D000A0070007000
      4C006100620065006C00370038000100540054004C000100010001000D000A00
      700070004C006100620065006C0031000100430075007200720065006E007400
      20004C0069006E006500200057006F0072006B002000430061006C0065006E00
      64006100720020006200790020004C0069006E0065002F004400610079002000
      20002D00200020004C0069006E00650020006F006E002D0068006F006C006400
      2000740069006D0065000100010001000D000A00700070004C00610062006500
      6C00320001004C0069006E0065000100010001000D000A00700070004C006100
      620065006C003400010044006100740065002000460072006F006D0001000100
      01000D000A00700070004C006100620065006C00350001002000200020002000
      2F00200020002F00200020000100010001000D000A00700070004C0061006200
      65006C003600010054006F000100010001000D000A00700070004C0061006200
      65006C003700010020002000200020002F00200020002F002000200001000100
      01000D000A00700070004C006100620065006C00380001005000720069006E00
      74006500640020006F006E000100010001000D000A00700070004C0061006200
      65006C003900010050006100670065000100010001000D000A00700070004C00
      6100620065006C00310030000100560065007200730069006F006E003A002000
      32002E0036002E0030000100010001000D000A00700070004C00610062006500
      6C00310030003200010057006F0072006B00730068006F007000010001000100
      0D000A00700070004C006100620065006C0031003000350001004C0069006E00
      65000100010001000D000A00700070004C006100620065006C00310030003600
      010044006100740065000100010001000D000A00700070004C00610062006500
      6C0031003100310001005700650065006B000100010001000D000A0070007000
      4C006100620065006C0031003400310001004E006F006E000100010001000D00
      0A00700070004C006100620065006C0031003400320001005000720064000100
      010001000D000A00700070004C006100620065006C0031003400330001004400
      6100740065000100010001000D000A00700070004C006100620065006C003100
      3400340001004600740079000100010001000D000A00700070004C0061006200
      65006C003100340038000100530068006900660074000100010001000D000A00
      700070004C006100620065006C0031003500340001004C0069006E0065000100
      010001000D000A00700070004C006100620065006C0031003500350001006F00
      6E002D0068006F006C0064000100010001000D000A00700070004C0061006200
      65006C003100350036000100740069006D0065000100010001000D000A007000
      70004C006100620065006C00310035003700010043006F006E0073006F006C00
      6900640061007400650064002000350020006C006F0073007400200065006C00
      65006D0065006E007400730020000100010001000D000A00700070004C006100
      620065006C0031003600390001004F004300550025000100010001000D000A00
      700070004C006100620065006C00310037003000010044004300550025000100
      010001000D000A00700070004C006100620065006C0031003700330001006F00
      660020004C0069006E00650020006F006E002D0068006F006C00640020007400
      69006D0065000100010001000D000A00700070004C006100620065006C003700
      370001003200410020000100010001000D000A00700070004C00610062006500
      6C00310037003900010054006F00740061006C003A0020000100010001000D00
      0A00700070004C006100620065006C00310038003000010057002F0041007600
      65003A0020000100010001000D000A00700070004C006100620065006C003100
      38003200010057006F0072006B0069006E00670020004400610079003A000100
      010001000D000A00700070004C006100620065006C0031003800330001005300
      75006E006400610079003A000100010001000D000A00700070004C0061006200
      65006C0031003800340001005000750062006C0069006300200048006F006C00
      69006400610079003A000100010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A005400660072006D0077007300630061006C0065006E00
      64006100720001005400610068006F006D00610001005400610068006F006D00
      6100010001000D000A004400610074006500450064006900740031000100B065
      307D0E66D49A01005400610068006F006D006100010001000D000A0044006100
      74006500450064006900740032000100B065307D0E66D49A0100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003200010041007200690061006C00
      01005400610068006F006D006100010001000D000A006C0069006E0065003000
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100340001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006400610074006500
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310036000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00640061007400
      650030003200010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003800010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      530079007300740065006D005600610072006900610062006C00650031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0031003900010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070005300790073007400
      65006D005600610072006900610062006C006500320001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0032003000010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00330038000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7400730068006F00700030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      3300010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100350001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0031003700010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00320031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0032003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0032003700010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0032003800010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C0032003500010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003300
      3300010041007200690061006C0001005400610068006F006D00610001000100
      0D000A007800300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0034003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0034003800010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0034003900010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003500300001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0035003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      35003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00350033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0035003400010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0035003500
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0035003600010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0035003800010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003500390001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0036003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      36003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00360034000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0036003600010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0036003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A0074007300740030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0037003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0035003700010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0036003000010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003600390001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0038003300010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      38003400010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00380035000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0038003600010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0038003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0039003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0039003400010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003900360001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0039003700010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      39003800010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310031003200010041007200
      690061006C0001005400610068006F006D006100010001000D000A0066007400
      7900300030003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003700300001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0032003400010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      39003900010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310031003600010041007200
      690061006C0001005400610068006F006D006100010001000D000A0073006A00
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310033003500010041007200
      690061006C0001005400610068006F006D006100010001000D000A0073006A00
      30003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310034003500010041007200
      690061006C0001005400610068006F006D006100010001000D000A0073006A00
      30003500010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310034003700010041007200
      690061006C0001005400610068006F006D006100010001000D000A0073006A00
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003400390001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007300
      6A00300030003300010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100350030000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      73006A00300030003500010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00330030000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0033003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003900010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003100300001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200540065007800740031003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      7800740031003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400310033000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200540065007800740031003600010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      65007800740031003500010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007800300030003200010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      65007800740031003900010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740032003000
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003200310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      540065007800740032003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003200
      3300010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400320034000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200540065007800740032003500010041007200690061006C00010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      32003600010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740032003700010041007200
      690061006C0001005400610068006F006D006100010001000D000A0064006400
      63007500300030003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740034000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004400420054006500780074003500010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      7800740031003400010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0064006400660030003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A0064006400660030003200
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003600310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006F00740074006C00
      300030003200010041007200690061006C0001005400610068006F006D006100
      010001000D000A00670072006F00730073003000300032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C00630031003800010041007200690061006C00010054006100
      68006F006D006100010001000D000A007000700044004200430061006C006300
      31003900010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200430061006C00630032003000010041007200
      690061006C0001005400610068006F006D006100010001000D000A0078003000
      30003400010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00740074006C00300030003200010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420043006100
      6C00630032003300010041007200690061006C0001005400610068006F006D00
      6100010001000D000A007000700044004200430061006C006300320034000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200430061006C00630032003500010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042004300
      61006C00630032003600010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200430061006C00630032003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007000700044004200430061006C0063003200380001004100720069006100
      6C0001005400610068006F006D006100010001000D000A004400430055003000
      30003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00360033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0036003500010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004D0065006D006F00310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0036003800010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200430061006C00
      630036003200010041007200690061006C0001005400610068006F006D006100
      010001000D000A007000700044004200430061006C0063003800010041007200
      690061006C0001005400610068006F006D006100010001000D000A0066006400
      660030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A0066006400660030003200010041007200690061006C000100
      5400610068006F006D006100010001000D000A0074006D00610072006B007300
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310031003400010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4D0065006D006F003200010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200430061006C00630033000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200430061006C0063003400010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420043006100
      6C0063003500010041007200690061006C0001005400610068006F006D006100
      010001000D000A00670072006F00730073003000300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0034003000010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0034003200
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0034003400010041007200690061006C00
      01005400610068006F006D006100010001000D000A0053003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A005300
      30003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00730030003300010041007200690061006C000100540061006800
      6F006D006100010001000D000A00780030003000330001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00740074006C003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200430061006C00630039000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C00630031003000010041007200690061006C00010054006100
      68006F006D006100010001000D000A007000700044004200430061006C006300
      31003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200430061006C00630031003200010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200430061006C00630031003300010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200430061006C00
      630031003400010041007200690061006C0001005400610068006F006D006100
      010001000D000A006F00740074006C0030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006400630075003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200430061006C00630031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C0063003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003200
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00730030003400010041007200690061006C0001005400610068006F006D00
      6100010001000D000A006F00300030003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A00620030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A006400
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A006E003100300030003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A006E0032003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      6F003100300030003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A006F00320030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006E00300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00640030003000310030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A0077006300300030003100010041007200
      690061006C0001005400610068006F006D006100010001000D000A0061003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007200300030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A0065003000300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00640063003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A006C00300030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A007A003000300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A006F0030003000
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A006200300030003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A00640030003000320001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006E00310030003000
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A006E003200300030003200010041007200690061006C00010054006100
      68006F006D006100010001000D000A006F003100300030003200010041007200
      690061006C0001005400610068006F006D006100010001000D000A006F003200
      300030003200010041007200690061006C0001005400610068006F006D006100
      010001000D000A006E00300030003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A006400300030003100300032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      77006300300030003200010041007200690061006C0001005400610068006F00
      6D006100010001000D000A006C00300030003200010041007200690061006C00
      01005400610068006F006D006100010001000D000A007A003000300032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      6100300030003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A007200300030003200010041007200690061006C000100
      5400610068006F006D006100010001000D000A00650030003000320001004100
      7200690061006C0001005400610068006F006D006100010001000D000A006400
      6300300030003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A006F00300030003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A00620030003000330001004100
      7200690061006C0001005400610068006F006D006100010001000D000A006400
      300030003300010041007200690061006C0001005400610068006F006D006100
      010001000D000A006E003100300030003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A006E0032003000300033000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      6F003100300030003300010041007200690061006C0001005400610068006F00
      6D006100010001000D000A006F00320030003000330001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006E00300030003300
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00640030003000310030003300010041007200690061006C00010054006100
      68006F006D006100010001000D000A0077006300300030003300010041007200
      690061006C0001005400610068006F006D006100010001000D000A006C003000
      30003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007A00300030003300010041007200690061006C00010054006100
      68006F006D006100010001000D000A0061003000300033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00720030003000
      3300010041007200690061006C0001005400610068006F006D00610001000100
      0D000A006500300030003300010041007200690061006C000100540061006800
      6F006D006100010001000D000A00640063003000300033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00730064006600
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A0073006400660030003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A007300640066003100310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007300
      6400660031003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0073006400660032003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A0073006400660033003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A0073006400660033003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A00730064006600320032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A006D0061007200
      73006B00300030003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740036003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003100370001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      540065007800740032003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003300
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400330032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00780030003000
      3500010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400330038000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200540065007800740034003600010041007200690061006C00010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      34003900010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740035003100010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200540065007800740035003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200540065007800
      740035003300010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003500360001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200540065007800740035003700010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      7800740035003800010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400350039000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200540065007800740036003000010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0033003600010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0073007200640069006600300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00730072006400
      6900660030003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400350035000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0037003200010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0037003900010041007200690061006C0001005400610068006F006D006100
      010001000D000A0070007000530079007300740065006D005600610072006900
      610062006C0065003300010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00380030000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      70007000530079007300740065006D005600610072006900610062006C006500
      3400010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003800310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00310030003400010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003000
      3700010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100300038000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310030003900010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      31003000010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310031003500010041007200
      690061006C0001005400610068006F006D006100010001000D000A0079003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310031003800010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310031003900010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      310032003000010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003200310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310032003200010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00310032003300010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100320034000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00310032003600010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310032003700010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310032003800
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003200390001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00310033003000010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003300
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100330032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310033003300010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      33003400010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310033003600010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310033003800010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      310033003900010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003400300001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0037003300010041007200690061006C0001005400
      610068006F006D006100010001000D000A006400740030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0037003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A006400740030003000320001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0038003800010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      38003900010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00390030000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0039003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0039003200
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0039003500010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310030003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00320036000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      660074007900300030003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A0057006F0072006B00730068006F0070000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      77006B007300300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003900
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0037003400010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0038003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100300030000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00310031003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0033003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400330030000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200540065007800740033003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      65007800740033003400010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740033003500
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003300370001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007900300030003200
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003400300001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      540065007800740034003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003400
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400340033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200540065007800740034003400010041007200690061006C00010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      34003500010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740034003700010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200540065007800740034003800010041007200690061006C0001005400
      610068006F006D006100010001000D000A006400640063007500300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004400420054006500780074003600010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003800010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700064006100790030003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A0064006900660066003000
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00640069006600660030003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      37003600010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200430061006C00630034003900010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200430061006C00630035003000010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200430061006C00
      630035003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A007000700044004200430061006C0063003500320001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200430061006C00630035003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A00790030003000340001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200430061006C00630035003500010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420043006100
      6C00630035003600010041007200690061006C0001005400610068006F006D00
      6100010001000D000A007000700044004200430061006C006300350037000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200430061006C00630035003800010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042004300
      61006C00630035003900010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200430061006C00630036003000
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007000700044004200430061006C0063003600310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A004100440043005500
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200430061006C00630036003500010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200430061006C00630036003900010041007200690061006C0001005400
      610068006F006D006100010001000D000A006400690066006600320031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      640069006600660032003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A007000700044004200430061006C0063003300
      3600010041007200690061006C0001005400610068006F006D00610001000100
      0D000A007000700044004200430061006C006300330037000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C00630033003800010041007200690061006C00010054006100
      68006F006D006100010001000D000A007000700044004200430061006C006300
      33003900010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200430061006C00630034003000010041007200
      690061006C0001005400610068006F006D006100010001000D000A0079003000
      30003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200430061006C00630034003200010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200430061006C00630034003300010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200430061006C00
      630034003400010041007200690061006C0001005400610068006F006D006100
      010001000D000A007000700044004200430061006C0063003400350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200430061006C00630034003600010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420043006100
      6C00630034003700010041007200690061006C0001005400610068006F006D00
      6100010001000D000A007000700044004200430061006C006300340038000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      730064006300750030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0037003800
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007000700044004200430061006C0063003600330001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      430061006C00630036003600010041007200690061006C000100540061006800
      6F006D006100010001000D000A007000700044004200430061006C0063003600
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00640069006600660031003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A0064006900660066003100320001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003200
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C003400010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00350001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C003600010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003700010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C003800010041007200690061006C000100540061006800
      6F006D006100010001000D000A0070007000530079007300740065006D005600
      610072006900610062006C0065003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3900010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000530079007300740065006D00560061007200690061006200
      6C0065003600010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003000010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310030003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      310030003300010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003000350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310030003600010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00310031003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100340031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00310034003200010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310034003300010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310034003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003400380001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00310035003400010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003500
      3500010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100350036000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310035003700010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      36003800010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310036003900010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310037003000010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      310037003300010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0037003700010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4400420054006500780074003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400330001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00310037003400010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003200380001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      540065007800740035003000010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003500
      3400010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100370035000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310037003600010041007200690061006C00010054006100
      68006F006D006100010001000D000A007000700044004200430061006C006300
      36003800010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310037003700010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310037003800010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      310037003900010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003800300001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310038003200010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00310038003300010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100380034000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00310038003500010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310038003600010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310038003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007000700044004200430061006C0063003800300001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00310038003800010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003800
      3900010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A0043006F006D0062006F0042006F007800
      31002E004900740065006D007300010053004C002C00470047002C0052005800
      2C0043004C000100010001000D000A007300740044006C006700730043006100
      7000740069006F006E0073005F0055006E00690063006F00640065000D000A00
      5700610072006E0069006E00670001005700610072006E0069006E0067000100
      010001000D000A004500720072006F00720001004500720072006F0072000100
      010001000D000A0049006E0066006F0072006D006100740069006F006E000100
      49006E0066006F0072006D006100740069006F006E000100010001000D000A00
      43006F006E006600690072006D00010043006F006E006600690072006D000100
      010001000D000A00590065007300010026005900650073000100010001000D00
      0A004E006F00010026004E006F000100010001000D000A004F004B0001004F00
      4B000100010001000D000A00430061006E00630065006C000100430061006E00
      630065006C000100010001000D000A00410062006F0072007400010026004100
      62006F00720074000100010001000D000A005200650074007200790001002600
      520065007400720079000100010001000D000A00490067006E006F0072006500
      01002600490067006E006F00720065000100010001000D000A0041006C006C00
      0100260041006C006C000100010001000D000A004E006F00200054006F002000
      41006C006C0001004E0026006F00200074006F00200041006C006C0001000100
      01000D000A00590065007300200054006F00200041006C006C00010059006500
      7300200074006F002000260041006C006C000100010001000D000A0048006500
      6C00700001002600480065006C0070000100010001000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A0044006100740065004500640069007400
      31002E004400690061006C006F0067005400690074006C006500010053006500
      6C0065006300740020006100200044006100740065000100010001000D000A00
      4400610074006500450064006900740031002E00540065007800740001002000
      2000200020002F00200020002F00200020000100010001000D000A0044006100
      74006500450064006900740032002E004400690061006C006F00670054006900
      74006C0065000100530065006C00650063007400200061002000440061007400
      65000100010001000D000A004400610074006500450064006900740032002E00
      5400650078007400010020002000200020002F00200020002F00200020000100
      010001000D000A007700650065006B00350032002E0043006F006D006D006100
      6E00640054006500780074000100730065006C0065006300740020002A002000
      660072006F006D00200077006B00350032005F00770073002000770068006500
      720065002000770073003D0027003300410027000100010001000D000A007700
      650065006B00350032002E00500072006F00760069006400650072004E006100
      6D00650001006400730070007300630068006500640075006C00650001000100
      01000D000A0043006C00690065006E0074004400610074006100530065007400
      31002E00500072006F00760069006400650072004E0061006D00650001006400
      730070007300630068006500640075006C0065000100010001000D000A004300
      6C00690065006E007400440061007400610053006500740032002E0050007200
      6F00760069006400650072004E0061006D006500010064007300700073006300
      68006500640075006C0065000100010001000D000A0043006C00690065006E00
      7400440061007400610053006500740033002E0043006F006D006D0061006E00
      640054006500780074000100730065006C0065006300740020002A0020006600
      72006F006D0020007700650065006B0035003200200077006800650072006500
      20006C0069006E0065003D00270054003000300031002700200061006E006400
      2000640061007400650031003D00270032003000300036002D00310032002D00
      3200390027000100010001000D000A0043006C00690065006E00740044006100
      7400610053006500740033002E00500072006F00760069006400650072004E00
      61006D00650001006400730070007300630068006500640075006C0065000100
      010001000D000A007000700042004400450050006900700065006C0069006E00
      650031002E0055007300650072004E0061006D00650001004200440045005000
      6900700065006C0069006E00650031000100010001000D000A00700070004400
      420050006900700065006C0069006E00650031002E0055007300650072004E00
      61006D00650001004400420050006900700065006C0069006E00650031000100
      010001000D000A00700070005200650070006F007200740032002E0044006500
      760069006300650054007900700065000100530063007200650065006E000100
      010001000D000A00700070004C006100620065006C00310031002E0055007300
      650072004E0061006D00650001004C006100620065006C003100310001000100
      01000D000A00700070004C006100620065006C00310032002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003200010001000100
      0D000A006C0069006E006500300031002E0055007300650072004E0061006D00
      650001006C0069006E006500300031000100010001000D000A00700070004C00
      6100620065006C00310034002E0055007300650072004E0061006D0065000100
      4C006100620065006C00310034000100010001000D000A006400610074006500
      300031002E0055007300650072004E0061006D00650001006400610074006500
      300031000100010001000D000A00700070004C006100620065006C0031003600
      2E0055007300650072004E0061006D00650001004C006100620065006C003100
      36000100010001000D000A006400610074006500300032002E00550073006500
      72004E0061006D00650001006400610074006500300032000100010001000D00
      0A00700070004C006100620065006C00310038002E0055007300650072004E00
      61006D00650001004C006100620065006C00310038000100010001000D000A00
      70007000530079007300740065006D005600610072006900610062006C006500
      31002E0055007300650072004E0061006D006500010053007900730074006500
      6D005600610072006900610062006C00650031000100010001000D000A007000
      70004C006100620065006C00310039002E0055007300650072004E0061006D00
      650001004C006100620065006C00310039000100010001000D000A0070007000
      530079007300740065006D005600610072006900610062006C00650032002E00
      55007300650072004E0061006D0065000100530079007300740065006D005600
      610072006900610062006C00650032000100010001000D000A00700070004C00
      6100620065006C00320030002E0055007300650072004E0061006D0065000100
      4C006100620065006C00320030000100010001000D000A00700070004C006100
      620065006C00330038002E0055007300650072004E0061006D00650001004C00
      6100620065006C00330038000100010001000D000A007400730068006F007000
      300031002E0055007300650072004E0061006D00650001007400730068006F00
      7000300031000100010001000D000A0070007000530068006100700065003200
      2E0055007300650072004E0061006D0065000100530068006100700065003200
      0100010001000D000A00700070004C006100620065006C00310033002E005500
      7300650072004E0061006D00650001004C006100620065006C00310033000100
      010001000D000A00700070004C006100620065006C00310035002E0055007300
      650072004E0061006D00650001004C006100620065006C003100350001000100
      01000D000A00700070004C006100620065006C00310037002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003700010001000100
      0D000A00700070004C006100620065006C00320031002E005500730065007200
      4E0061006D00650001004C006100620065006C00320031000100010001000D00
      0A00700070004C006100620065006C00320033002E0055007300650072004E00
      61006D00650001004C006100620065006C00320033000100010001000D000A00
      700070004C006100620065006C00320037002E0055007300650072004E006100
      6D00650001004C006100620065006C00320037000100010001000D000A007000
      70004C006100620065006C00320038002E0055007300650072004E0061006D00
      650001004C006100620065006C00320038000100010001000D000A0070007000
      4C0069006E00650031002E0055007300650072004E0061006D00650001004C00
      69006E00650031000100010001000D000A00700070004C0069006E0065003200
      2E0055007300650072004E0061006D00650001004C0069006E00650032000100
      010001000D000A00700070004C0069006E00650033002E005500730065007200
      4E0061006D00650001004C0069006E00650033000100010001000D000A007000
      70004C0069006E00650034002E0055007300650072004E0061006D0065000100
      4C0069006E00650034000100010001000D000A00700070004C00610062006500
      6C00320035002E0055007300650072004E0061006D00650001004C0061006200
      65006C00320035000100010001000D000A00700070004C006100620065006C00
      330033002E0055007300650072004E0061006D00650001004C00610062006500
      6C00330033000100010001000D000A0078003000300031002E00550073006500
      72004E0061006D006500010078003000300031000100010001000D000A007000
      70004C0069006E00650038002E0055007300650072004E0061006D0065000100
      4C0069006E00650038000100010001000D000A00700070004C00610062006500
      6C00340037002E0055007300650072004E0061006D00650001004C0061006200
      65006C00340037000100010001000D000A00700070004C0069006E0065003900
      2E0055007300650072004E0061006D00650001004C0069006E00650039000100
      010001000D000A00700070004C006100620065006C00340038002E0055007300
      650072004E0061006D00650001004C006100620065006C003400380001000100
      01000D000A00700070004C0069006E006500310030002E005500730065007200
      4E0061006D00650001004C0069006E006500310030000100010001000D000A00
      700070004C006100620065006C00340039002E0055007300650072004E006100
      6D00650001004C006100620065006C00340039000100010001000D000A007000
      70004C006100620065006C00350030002E0055007300650072004E0061006D00
      650001004C006100620065006C00350030000100010001000D000A0070007000
      4C0069006E006500310031002E0055007300650072004E0061006D0065000100
      4C0069006E006500310031000100010001000D000A00700070004C0069006E00
      6500310032002E0055007300650072004E0061006D00650001004C0069006E00
      6500310032000100010001000D000A00700070004C0069006E00650031003300
      2E0055007300650072004E0061006D00650001004C0069006E00650031003300
      0100010001000D000A00700070004C0069006E006500310034002E0055007300
      650072004E0061006D00650001004C0069006E00650031003400010001000100
      0D000A00700070004C0069006E006500310035002E0055007300650072004E00
      61006D00650001004C0069006E006500310035000100010001000D000A007000
      70004C006100620065006C00350031002E0055007300650072004E0061006D00
      650001004C006100620065006C00350031000100010001000D000A0070007000
      4C006100620065006C00350032002E0055007300650072004E0061006D006500
      01004C006100620065006C00350032000100010001000D000A00700070004C00
      6100620065006C00350033002E0055007300650072004E0061006D0065000100
      4C006100620065006C00350033000100010001000D000A00700070004C006100
      620065006C00350034002E0055007300650072004E0061006D00650001004C00
      6100620065006C00350034000100010001000D000A00700070004C0061006200
      65006C00350035002E0055007300650072004E0061006D00650001004C006100
      620065006C00350035000100010001000D000A00700070004C00610062006500
      6C00350036002E0055007300650072004E0061006D00650001004C0061006200
      65006C00350036000100010001000D000A00700070004C006100620065006C00
      350038002E0055007300650072004E0061006D00650001004C00610062006500
      6C00350038000100010001000D000A00700070004C006100620065006C003500
      39002E0055007300650072004E0061006D00650001004C006100620065006C00
      350039000100010001000D000A00700070004C006100620065006C0036003100
      2E0055007300650072004E0061006D00650001004C006100620065006C003600
      31000100010001000D000A00700070004C006100620065006C00360032002E00
      55007300650072004E0061006D00650001004C006100620065006C0036003200
      0100010001000D000A00700070004C0069006E006500310036002E0055007300
      650072004E0061006D00650001004C0069006E00650031003600010001000100
      0D000A00700070004C006100620065006C00360034002E005500730065007200
      4E0061006D00650001004C006100620065006C00360034000100010001000D00
      0A00700070004C006100620065006C00360036002E0055007300650072004E00
      61006D00650001004C006100620065006C00360036000100010001000D000A00
      700070004C006100620065006C00360037002E0055007300650072004E006100
      6D00650001004C006100620065006C00360037000100010001000D000A007000
      70004C0069006E00650037002E0055007300650072004E0061006D0065000100
      4C0069006E00650037000100010001000D000A00700070004C0069006E006500
      310039002E0055007300650072004E0061006D00650001004C0069006E006500
      310039000100010001000D000A00740073007400300031002E00550073006500
      72004E0061006D0065000100740073007400300031000100010001000D000A00
      700070004C0069006E006500320030002E0055007300650072004E0061006D00
      650001004C0069006E006500320030000100010001000D000A00700070004C00
      69006E006500320031002E0055007300650072004E0061006D00650001004C00
      69006E006500320031000100010001000D000A00700070004C00610062006500
      6C00370031002E0055007300650072004E0061006D00650001004C0061006200
      65006C003700300031000100010001000D000A00700070004C0069006E006500
      320032002E0055007300650072004E0061006D00650001004C0069006E006500
      320032000100010001000D000A00700070004C006100620065006C0035003700
      2E0055007300650072004E0061006D00650001004C006100620065006C003500
      37000100010001000D000A00700070004C006100620065006C00360030002E00
      55007300650072004E0061006D00650001004C006100620065006C0036003000
      0100010001000D000A00700070004C006100620065006C00360039002E005500
      7300650072004E0061006D00650001004C006100620065006C00360039000100
      010001000D000A00700070004C0069006E006500370032002E00550073006500
      72004E0061006D00650001004C0069006E006500370032000100010001000D00
      0A00700070004C006100620065006C00380033002E0055007300650072004E00
      61006D00650001004C006100620065006C00380033000100010001000D000A00
      700070004C006100620065006C00380034002E0055007300650072004E006100
      6D00650001004C006100620065006C003500300031000100010001000D000A00
      700070004C006100620065006C00380035002E0055007300650072004E006100
      6D00650001004C006100620065006C00380035000100010001000D000A007000
      70004C0069006E006500370033002E0055007300650072004E0061006D006500
      01004C0069006E006500370033000100010001000D000A00700070004C006100
      620065006C00380036002E0055007300650072004E0061006D00650001004C00
      6100620065006C00380036000100010001000D000A00700070004C0061006200
      65006C00380037002E0055007300650072004E0061006D00650001004C006100
      620065006C003600300031000100010001000D000A00700070004C0061006200
      65006C00390033002E0055007300650072004E0061006D00650001004C006100
      620065006C00390033000100010001000D000A00700070004C00610062006500
      6C00390034002E0055007300650072004E0061006D00650001004C0061006200
      65006C00390034000100010001000D000A00700070004C006100620065006C00
      390036002E0055007300650072004E0061006D00650001004C00610062006500
      6C00390036000100010001000D000A00700070004C006100620065006C003900
      37002E0055007300650072004E0061006D00650001004C006100620065006C00
      390037000100010001000D000A00700070004C006100620065006C0039003800
      2E0055007300650072004E0061006D00650001004C006100620065006C003900
      38000100010001000D000A00700070004C006100620065006C00310031003200
      2E0055007300650072004E0061006D00650001004C006100620065006C003100
      310032000100010001000D000A006600740079003000300031002E0055007300
      650072004E0061006D0065000100660074007900300030003100010001000100
      0D000A00700070004C006100620065006C00370030002E005500730065007200
      4E0061006D00650001004C006100620065006C00370030003300010001000100
      0D000A00700070004C006100620065006C00320034002E005500730065007200
      4E0061006D00650001004C006100620065006C00320034000100010001000D00
      0A00700070004C006100620065006C00390039002E0055007300650072004E00
      61006D00650001004C006100620065006C00390039000100010001000D000A00
      700070004C006100620065006C003100310036002E0055007300650072004E00
      61006D00650001004C006100620065006C003300300034000100010001000D00
      0A0073006A00300031002E0055007300650072004E0061006D00650001007300
      6A00300031000100010001000D000A00700070004C006100620065006C003100
      330035002E0055007300650072004E0061006D00650001004C00610062006500
      6C003100330035000100010001000D000A0073006A00300033002E0055007300
      650072004E0061006D006500010073006A00300033000100010001000D000A00
      700070004C006100620065006C003100340035002E0055007300650072004E00
      61006D00650001004C006100620065006C003100340035000100010001000D00
      0A0073006A00300035002E0055007300650072004E0061006D00650001007300
      6A00300035000100010001000D000A00700070004C006100620065006C003100
      340037002E0055007300650072004E0061006D00650001004C00610062006500
      6C003100340037000100010001000D000A0073006A003000300031002E005500
      7300650072004E0061006D006500010073006A00300030003100010001000100
      0D000A00700070004C006100620065006C003100340039002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003400390001000100
      01000D000A0073006A003000300033002E0055007300650072004E0061006D00
      6500010073006A003000300033000100010001000D000A00700070004C006100
      620065006C003100350030002E0055007300650072004E0061006D0065000100
      4C006100620065006C003100350030000100010001000D000A0073006A003000
      300035002E0055007300650072004E0061006D006500010073006A0030003000
      35000100010001000D000A00700070004C0069006E006500320036002E005500
      7300650072004E0061006D00650001004C0069006E0065003200360001000100
      01000D000A00700070004C006100620065006C00330030002E00550073006500
      72004E0061006D00650001004C006100620065006C0033003000010001000100
      0D000A00700070004C006100620065006C00330031002E005500730065007200
      4E0061006D00650001004C006100620065006C00330031000100010001000D00
      0A007000700044004200540065007800740039002E0044006100740061004600
      690065006C00640001004C0049004E0045000100010001000D000A0070007000
      44004200540065007800740039002E0055007300650072004E0061006D006500
      010044004200540065007800740039000100010001000D000A00700070004400
      42005400650078007400310030002E0044006100740061004600690065006C00
      64000100440041005400450031000100010001000D000A007000700044004200
      5400650078007400310030002E0055007300650072004E0061006D0065000100
      440042005400650078007400310030000100010001000D000A00700070004400
      42005400650078007400310031002E0044006100740061004600690065006C00
      6400010057004B004E004F000100010001000D000A0070007000440042005400
      650078007400310031002E0055007300650072004E0061006D00650001004400
      42005400650078007400310031000100010001000D000A007000700044004200
      5400650078007400310032002E0044006100740061004600690065006C006400
      0100430053004500430054000100010001000D000A0070007000440042005400
      650078007400310032002E0055007300650072004E0061006D00650001004400
      42005400650078007400310032000100010001000D000A007000700044004200
      5400650078007400310033002E0044006100740061004600690065006C006400
      0100530045004300540054000100010001000D000A0070007000440042005400
      650078007400310033002E0055007300650072004E0061006D00650001004400
      42005400650078007400310033000100010001000D000A007000700044004200
      5400650078007400310036002E0044006100740061004600690065006C006400
      0100530045004300540043000100010001000D000A0070007000440042005400
      650078007400310036002E0055007300650072004E0061006D00650001004400
      42005400650078007400310036000100010001000D000A007000700044004200
      5400650078007400310035002E0044006100740061004600690065006C006400
      01005300450043005400540031000100010001000D000A007000700044004200
      5400650078007400310035002E0055007300650072004E0061006D0065000100
      440042005400650078007400310035000100010001000D000A00780030003000
      32002E0044006100740061004600690065006C00640001004F00530045004300
      54000100010001000D000A0078003000300032002E0055007300650072004E00
      61006D006500010078003000300032000100010001000D000A00700070004400
      42005400650078007400310039002E0044006100740061004600690065006C00
      64000100540054004C000100010001000D000A00700070004400420054006500
      78007400310039002E0055007300650072004E0061006D006500010044004200
      5400650078007400310039000100010001000D000A0070007000440042005400
      650078007400320030002E0044006100740061004600690065006C0064000100
      430053004500430054000100010001000D000A00700070004400420054006500
      78007400320030002E0055007300650072004E0061006D006500010044004200
      5400650078007400320030000100010001000D000A0070007000440042005400
      650078007400320031002E0044006100740061004600690065006C0064000100
      4C0053004500430054000100010001000D000A00700070004400420054006500
      78007400320031002E0055007300650072004E0061006D006500010044004200
      54006500780074003200300031000100010001000D000A007000700044004200
      5400650078007400320032002E0044006100740061004600690065006C006400
      0100520053004500430054000100010001000D000A0070007000440042005400
      650078007400320032002E0055007300650072004E0061006D00650001004400
      42005400650078007400320032000100010001000D000A007000700044004200
      5400650078007400320033002E0044006100740061004600690065006C006400
      0100410053004500430054000100010001000D000A0070007000440042005400
      650078007400320033002E0055007300650072004E0061006D00650001004400
      42005400650078007400320033000100010001000D000A007000700044004200
      5400650078007400320034002E0044006100740061004600690065006C006400
      0100450053004500430054000100010001000D000A0070007000440042005400
      650078007400320034002E0055007300650072004E0061006D00650001004400
      42005400650078007400320034000100010001000D000A007000700044004200
      5400650078007400320035002E0044006100740061004600690065006C006400
      010046004C00410047000100010001000D000A00700070004400420054006500
      78007400320035002E0055007300650072004E0061006D006500010044004200
      5400650078007400320035000100010001000D000A0070007000440042005400
      650078007400320036002E0044006100740061004600690065006C0064000100
      5A0053004500430054000100010001000D000A00700070004400420054006500
      78007400320036002E0055007300650072004E0061006D006500010044004200
      5400650078007400320036000100010001000D000A0070007000440042005400
      650078007400320037002E0044006100740061004600690065006C0064000100
      4F00540054004C000100010001000D000A007000700044004200540065007800
      7400320037002E0055007300650072004E0061006D0065000100440042005400
      650078007400320037000100010001000D000A00640064006300750030003000
      31002E0055007300650072004E0061006D006500010064006400630075003000
      300031000100010001000D000A00700070004400420054006500780074003400
      2E0044006100740061004600690065006C006400010057004F0052004B004500
      520043000100010001000D000A00700070004400420054006500780074003400
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      3200300032000100010001000D000A0070007000440042005400650078007400
      35002E0044006100740061004600690065006C006400010057004F0052004B00
      450052004F000100010001000D000A0070007000440042005400650078007400
      35002E0055007300650072004E0061006D006500010044004200540065007800
      740035000100010001000D000A00700070004400420054006500780074003100
      34002E0044006100740061004600690065006C00640001005700440041005900
      0100010001000D000A0070007000440042005400650078007400310034002E00
      55007300650072004E0061006D00650001004400420054006500780074003100
      0100010001000D000A00640064006600300031002E0055007300650072004E00
      61006D0065000100640064006600300031000100010001000D000A0064006400
      6600300032002E0055007300650072004E0061006D0065000100640064006600
      300032000100010001000D000A00700070004400420054006500780074003600
      31002E0044006100740061004600690065006C00640001005300480046005400
      0100010001000D000A0070007000440042005400650078007400360031002E00
      55007300650072004E0061006D00650001004400420054006500780074003600
      31000100010001000D000A00700070004C0069006E006500320033002E005500
      7300650072004E0061006D00650001004C0069006E0065003200330001000100
      01000D000A00700070004C0069006E006500320034002E005500730065007200
      4E0061006D00650001004C0069006E006500320034000100010001000D000A00
      6F00740074006C003000300032002E0044006100740061004600690065006C00
      640001004F00540054004C000100010001000D000A006F00740074006C003000
      300032002E0055007300650072004E0061006D00650001006F00740074006C00
      3000300032000100010001000D000A00670072006F0073007300300030003200
      2E0044006100740061004600690065006C006400010043005300450043005400
      0100010001000D000A00670072006F00730073003000300032002E0055007300
      650072004E0061006D0065000100670072006F00730073003000300032000100
      010001000D000A007000700044004200430061006C006300310038002E004400
      6100740061004600690065006C00640001005300450043005400540001000100
      01000D000A007000700044004200430061006C006300310038002E0055007300
      650072004E0061006D006500010044004200430061006C006300310038000100
      010001000D000A007000700044004200430061006C006300310039002E004400
      6100740061004600690065006C00640001005300450043005400540031000100
      010001000D000A007000700044004200430061006C006300310039002E005500
      7300650072004E0061006D006500010044004200430061006C00630031003900
      0100010001000D000A007000700044004200430061006C006300320030002E00
      44006100740061004600690065006C0064000100530045004300540043000100
      010001000D000A007000700044004200430061006C006300320030002E005500
      7300650072004E0061006D006500010044004200430061006C00630032003000
      0100010001000D000A0078003000300034002E00440061007400610046006900
      65006C00640001004F0053004500430054000100010001000D000A0078003000
      300034002E0055007300650072004E0061006D00650001007800300030003400
      0100010001000D000A00740074006C003000300032002E004400610074006100
      4600690065006C0064000100540054004C000100010001000D000A0074007400
      6C003000300032002E0055007300650072004E0061006D006500010074007400
      6C003000300032000100010001000D000A007000700044004200430061006C00
      6300320033002E0044006100740061004600690065006C006400010043005300
      4500430054000100010001000D000A007000700044004200430061006C006300
      320033002E0055007300650072004E0061006D00650001004400420043006100
      6C006300320033000100010001000D000A007000700044004200430061006C00
      6300320034002E0044006100740061004600690065006C00640001004C005300
      4500430054000100010001000D000A007000700044004200430061006C006300
      320034002E0055007300650072004E0061006D00650001004400420043006100
      6C0063003100300034000100010001000D000A00700070004400420043006100
      6C006300320035002E0044006100740061004600690065006C00640001005A00
      53004500430054000100010001000D000A007000700044004200430061006C00
      6300320035002E0055007300650072004E0061006D0065000100440042004300
      61006C006300320035000100010001000D000A00700070004400420043006100
      6C006300320036002E0044006100740061004600690065006C00640001004100
      53004500430054000100010001000D000A007000700044004200430061006C00
      6300320036002E0055007300650072004E0061006D0065000100440042004300
      61006C006300320036000100010001000D000A00700070004400420043006100
      6C006300320037002E0044006100740061004600690065006C00640001005200
      53004500430054000100010001000D000A007000700044004200430061006C00
      6300320037002E0055007300650072004E0061006D0065000100440042004300
      61006C006300320037000100010001000D000A00700070004400420043006100
      6C006300320038002E0044006100740061004600690065006C00640001004500
      53004500430054000100010001000D000A007000700044004200430061006C00
      6300320038002E0055007300650072004E0061006D0065000100440042004300
      61006C006300320038000100010001000D000A00440043005500300030003200
      2E0055007300650072004E0061006D0065000100440043005500300030003200
      0100010001000D000A00700070004C006100620065006C00360033002E005500
      7300650072004E0061006D00650001004C006100620065006C00360033000100
      010001000D000A00700070004C0069006E006500320035002E00550073006500
      72004E0061006D00650001004C0069006E006500320035000100010001000D00
      0A00700070004C006100620065006C00360035002E0055007300650072004E00
      61006D00650001004C006100620065006C00360035000100010001000D000A00
      700070004D0065006D006F0031002E0055007300650072004E0061006D006500
      01004D0065006D006F0031000100010001000D000A00700070004C0061006200
      65006C00360038002E0055007300650072004E0061006D00650001004C006100
      620065006C00360038000100010001000D000A00700070004400420043006100
      6C006300360032002E0044006100740061004600690065006C00640001005700
      4F0052004B00450052004F000100010001000D000A0070007000440042004300
      61006C006300360032002E0055007300650072004E0061006D00650001004400
      4200430061006C006300360032000100010001000D000A007000700044004200
      430061006C00630038002E0044006100740061004600690065006C0064000100
      57004F0052004B004500520043000100010001000D000A007000700044004200
      430061006C00630038002E0055007300650072004E0061006D00650001004400
      4200430061006C00630038000100010001000D000A0066006400660030003100
      2E0055007300650072004E0061006D0065000100660064006600300031000100
      010001000D000A00660064006600300032002E0055007300650072004E006100
      6D0065000100660064006600300032000100010001000D000A0074006D006100
      72006B007300300031002E0055007300650072004E0061006D00650001007400
      6D00610072006B007300300031000100010001000D000A00700070004C006100
      620065006C003100310034002E0055007300650072004E0061006D0065000100
      4C006100620065006C003100310034000100010001000D000A00700070004D00
      65006D006F0032002E0055007300650072004E0061006D00650001004D006500
      6D006F0032000100010001000D000A0070007000470072006F00750070003100
      2E0042007200650061006B004E0061006D00650001004C0049004E0045000100
      010001000D000A0070007000470072006F007500700031002E00550073006500
      72004E0061006D0065000100470072006F007500700031000100010001000D00
      0A00700070005300680061007000650033002E0055007300650072004E006100
      6D00650001005300680061007000650033000100010001000D000A0070007000
      44004200430061006C00630033002E0044006100740061004600690065006C00
      640001005300450043005400540031000100010001000D000A00700070004400
      4200430061006C00630033002E0055007300650072004E0061006D0065000100
      44004200430061006C00630033000100010001000D000A007000700044004200
      430061006C00630034002E0044006100740061004600690065006C0064000100
      530045004300540043000100010001000D000A00700070004400420043006100
      6C00630034002E0055007300650072004E0061006D0065000100440042004300
      61006C00630034000100010001000D000A007000700044004200430061006C00
      630035002E0044006100740061004600690065006C0064000100530045004300
      540054000100010001000D000A007000700044004200430061006C0063003500
      2E0055007300650072004E0061006D006500010044004200430061006C006300
      35000100010001000D000A00670072006F00730073003000300031002E004400
      6100740061004600690065006C00640001004300530045004300540001000100
      01000D000A00670072006F00730073003000300031002E005500730065007200
      4E0061006D0065000100670072006F0073007300300030003100010001000100
      0D000A00700070004C006100620065006C00340030002E005500730065007200
      4E0061006D00650001004C006100620065006C00340030000100010001000D00
      0A00700070004C006100620065006C00340032002E0055007300650072004E00
      61006D00650001004C006100620065006C00340032000100010001000D000A00
      700070004C006100620065006C00340034002E0055007300650072004E006100
      6D00650001004C006100620065006C00340034000100010001000D000A005300
      300031002E0055007300650072004E0061006D00650001005300300031000100
      010001000D000A005300300032002E0055007300650072004E0061006D006500
      01005300300032000100010001000D000A007300300033002E00550073006500
      72004E0061006D00650001007300300033000100010001000D000A0078003000
      300033002E0044006100740061004600690065006C00640001004F0053004500
      430054000100010001000D000A0078003000300033002E005500730065007200
      4E0061006D006500010078003000300033000100010001000D000A0074007400
      6C003000300031002E0044006100740061004600690065006C00640001005400
      54004C000100010001000D000A00740074006C003000300031002E0055007300
      650072004E0061006D0065000100740074006C00300030003100010001000100
      0D000A007000700044004200430061006C00630039002E004400610074006100
      4600690065006C0064000100430053004500430054000100010001000D000A00
      7000700044004200430061006C00630039002E0055007300650072004E006100
      6D006500010044004200430061006C00630039000100010001000D000A007000
      700044004200430061006C006300310030002E00440061007400610046006900
      65006C00640001004C0053004500430054000100010001000D000A0070007000
      44004200430061006C006300310030002E0055007300650072004E0061006D00
      6500010044004200430061006C006300310030000100010001000D000A007000
      700044004200430061006C006300310031002E00440061007400610046006900
      65006C00640001005A0053004500430054000100010001000D000A0070007000
      44004200430061006C006300310031002E0055007300650072004E0061006D00
      6500010044004200430061006C0063003100300031000100010001000D000A00
      7000700044004200430061006C006300310032002E0044006100740061004600
      690065006C0064000100520053004500430054000100010001000D000A007000
      700044004200430061006C006300310032002E0055007300650072004E006100
      6D006500010044004200430061006C0063003100300032000100010001000D00
      0A007000700044004200430061006C006300310033002E004400610074006100
      4600690065006C0064000100410053004500430054000100010001000D000A00
      7000700044004200430061006C006300310033002E0055007300650072004E00
      61006D006500010044004200430061006C006300310030003300010001000100
      0D000A007000700044004200430061006C006300310034002E00440061007400
      61004600690065006C0064000100450053004500430054000100010001000D00
      0A007000700044004200430061006C006300310034002E005500730065007200
      4E0061006D006500010044004200430061006C00630031003400010001000100
      0D000A00700070004C0069006E006500310037002E0055007300650072004E00
      61006D00650001004C0069006E006500310037000100010001000D000A007000
      70004C0069006E006500310038002E0055007300650072004E0061006D006500
      01004C0069006E006500310038000100010001000D000A006F00740074006C00
      3000300031002E0044006100740061004600690065006C00640001004F005400
      54004C000100010001000D000A006F00740074006C003000300031002E005500
      7300650072004E0061006D00650001006F00740074006C003000300031000100
      010001000D000A006400630075003000300031002E0055007300650072004E00
      61006D00650001006400630075003000300031000100010001000D000A007000
      700044004200430061006C00630031002E004400610074006100460069006500
      6C006400010057004F0052004B004500520043000100010001000D000A007000
      700044004200430061006C00630031002E0055007300650072004E0061006D00
      6500010044004200430061006C00630031000100010001000D000A0070007000
      44004200430061006C00630032002E0044006100740061004600690065006C00
      6400010057004F0052004B00450052004F000100010001000D000A0070007000
      44004200430061006C00630032002E0055007300650072004E0061006D006500
      010044004200430061006C00630032000100010001000D000A00700070004C00
      6100620065006C00320032002E0055007300650072004E0061006D0065000100
      4C006100620065006C0031000100010001000D000A007300300034002E005500
      7300650072004E0061006D00650001007300300034000100010001000D000A00
      6F003000300031002E0055007300650072004E0061006D00650001006F003000
      300031000100010001000D000A0062003000300031002E005500730065007200
      4E0061006D006500010062003000300031000100010001000D000A0064003000
      300031002E0055007300650072004E0061006D00650001006400300030003100
      0100010001000D000A006E0031003000300031002E0055007300650072004E00
      61006D00650001006E0031003000300031000100010001000D000A006E003200
      3000300031002E0055007300650072004E0061006D00650001006E0032003000
      300031000100010001000D000A006F0031003000300031002E00550073006500
      72004E0061006D00650001006F0031003000300031000100010001000D000A00
      6F0032003000300031002E0055007300650072004E0061006D00650001006F00
      32003000300031000100010001000D000A006E003000300031002E0055007300
      650072004E0061006D00650001006E003000300031000100010001000D000A00
      6400300030003100300031002E0055007300650072004E0061006D0065000100
      6400300030003100300031000100010001000D000A0077006300300030003100
      2E0055007300650072004E0061006D0065000100770063003000300031000100
      010001000D000A0061003000300031002E0055007300650072004E0061006D00
      6500010061003000300031000100010001000D000A0072003000300031002E00
      55007300650072004E0061006D00650001007200300030003100010001000100
      0D000A0065003000300031002E0055007300650072004E0061006D0065000100
      65003000300031000100010001000D000A00640063003000300031002E005500
      7300650072004E0061006D006500010064006300300030003100010001000100
      0D000A006C003000300031002E0055007300650072004E0061006D0065000100
      6C003000300031000100010001000D000A007A003000300031002E0055007300
      650072004E0061006D00650001007A003000300031000100010001000D000A00
      6F003000300032002E0055007300650072004E0061006D00650001006F003000
      300032000100010001000D000A0062003000300032002E005500730065007200
      4E0061006D006500010062003000300032000100010001000D000A0064003000
      300032002E0055007300650072004E0061006D00650001006400300030003200
      0100010001000D000A006E0031003000300032002E0055007300650072004E00
      61006D00650001006E0031003000300032000100010001000D000A006E003200
      3000300032002E0055007300650072004E0061006D00650001006E0032003000
      300032000100010001000D000A006F0031003000300032002E00550073006500
      72004E0061006D00650001006F0031003000300032000100010001000D000A00
      6F0032003000300032002E0055007300650072004E0061006D00650001006F00
      32003000300032000100010001000D000A006E003000300032002E0055007300
      650072004E0061006D00650001006E003000300032000100010001000D000A00
      6400300030003100300032002E0055007300650072004E0061006D0065000100
      6400300030003100300032000100010001000D000A0077006300300030003200
      2E0055007300650072004E0061006D0065000100770063003000300032000100
      010001000D000A006C003000300032002E0055007300650072004E0061006D00
      650001006C003000300032000100010001000D000A007A003000300032002E00
      55007300650072004E0061006D00650001007A00300030003200010001000100
      0D000A0061003000300032002E0055007300650072004E0061006D0065000100
      61003000300032000100010001000D000A0072003000300032002E0055007300
      650072004E0061006D006500010072003000300032000100010001000D000A00
      65003000300032002E0055007300650072004E0061006D006500010065003000
      300032000100010001000D000A00640063003000300032002E00550073006500
      72004E0061006D0065000100640063003000300032000100010001000D000A00
      6F003000300033002E0055007300650072004E0061006D00650001006F003000
      300033000100010001000D000A0062003000300033002E005500730065007200
      4E0061006D006500010062003000300033000100010001000D000A0064003000
      300033002E0055007300650072004E0061006D00650001006400300030003300
      0100010001000D000A006E0031003000300033002E0055007300650072004E00
      61006D00650001006E0031003000300033000100010001000D000A006E003200
      3000300033002E0055007300650072004E0061006D00650001006E0032003000
      300033000100010001000D000A006F0031003000300033002E00550073006500
      72004E0061006D00650001006F0031003000300033000100010001000D000A00
      6F0032003000300033002E0055007300650072004E0061006D00650001006F00
      32003000300033000100010001000D000A006E003000300033002E0055007300
      650072004E0061006D00650001006E003000300033000100010001000D000A00
      6400300030003100300033002E0055007300650072004E0061006D0065000100
      6400300030003100300033000100010001000D000A0077006300300030003300
      2E0055007300650072004E0061006D0065000100770063003000300033000100
      010001000D000A006C003000300033002E0055007300650072004E0061006D00
      650001006C003000300033000100010001000D000A007A003000300033002E00
      55007300650072004E0061006D00650001007A00300030003300010001000100
      0D000A0061003000300033002E0055007300650072004E0061006D0065000100
      61003000300033000100010001000D000A0072003000300033002E0055007300
      650072004E0061006D006500010072003000300033000100010001000D000A00
      65003000300033002E0055007300650072004E0061006D006500010065003000
      300033000100010001000D000A00640063003000300033002E00550073006500
      72004E0061006D0065000100640063003000300033000100010001000D000A00
      730064006600300031002E0055007300650072004E0061006D00650001007300
      64006600300031000100010001000D000A00730064006600300032002E005500
      7300650072004E0061006D006500010073006400660030003200010001000100
      0D000A00730064006600310031002E0055007300650072004E0061006D006500
      0100730064006600310031000100010001000D000A0073006400660031003200
      2E0055007300650072004E0061006D0065000100730064006600310032000100
      010001000D000A00730064006600320031002E0055007300650072004E006100
      6D0065000100730064006600320031000100010001000D000A00730064006600
      330031002E0055007300650072004E0061006D00650001007300640066003300
      31000100010001000D000A00730064006600330032002E005500730065007200
      4E0061006D0065000100730064006600330032000100010001000D000A007300
      64006600320032002E0055007300650072004E0061006D006500010073006400
      6600320032000100010001000D000A006D006100720073006B00300030003100
      2E0055007300650072004E0061006D00650001006D006100720073006B003000
      300031000100010001000D000A0070007000470072006F007500700033002E00
      42007200650061006B004E0061006D0065000100440041005400450031000100
      010001000D000A0070007000470072006F007500700033002E00550073006500
      72004E0061006D0065000100470072006F007500700033000100010001000D00
      0A00700070005300750062005200650070006F007200740031002E0055007300
      650072004E0061006D00650001005300750062005200650070006F0072007400
      31000100010001000D000A007000700044004200540065007800740036003400
      2E0044006100740061004600690065006C006400010044004300550001000100
      01000D000A0070007000440042005400650078007400360034002E0055007300
      650072004E0061006D0065000100440042005400650078007400320039000100
      010001000D000A0070007000440042005400650078007400310037002E004400
      6100740061004600690065006C00640001004300530045004300540001000100
      01000D000A0070007000440042005400650078007400310037002E0055007300
      650072004E0061006D0065000100440042005400650078007400310001000100
      01000D000A0070007000440042005400650078007400320039002E0044006100
      740061004600690065006C006400010053004500430054005400010001000100
      0D000A0070007000440042005400650078007400320039002E00550073006500
      72004E0061006D00650001004400420054006500780074003200010001000100
      0D000A0070007000440042005400650078007400330031002E00440061007400
      61004600690065006C0064000100530045004300540043000100010001000D00
      0A0070007000440042005400650078007400330031002E005500730065007200
      4E0061006D006500010044004200540065007800740033003100010001000100
      0D000A0070007000440042005400650078007400330032002E00440061007400
      61004600690065006C0064000100530045004300540054003100010001000100
      0D000A0070007000440042005400650078007400330032002E00550073006500
      72004E0061006D00650001004400420054006500780074003300320001000100
      01000D000A0078003000300035002E0044006100740061004600690065006C00
      640001004F0053004500430054000100010001000D000A007800300030003500
      2E0055007300650072004E0061006D0065000100780030003000350001000100
      01000D000A0070007000440042005400650078007400330038002E0044006100
      740061004600690065006C0064000100540054004C000100010001000D000A00
      70007000440042005400650078007400330038002E0055007300650072004E00
      61006D0065000100440042005400650078007400330038000100010001000D00
      0A0070007000440042005400650078007400340036002E004400610074006100
      4600690065006C0064000100430053004500430054000100010001000D000A00
      70007000440042005400650078007400340036002E0055007300650072004E00
      61006D0065000100440042005400650078007400320030003400010001000100
      0D000A0070007000440042005400650078007400340039002E00440061007400
      61004600690065006C00640001004C0053004500430054000100010001000D00
      0A0070007000440042005400650078007400340039002E005500730065007200
      4E0061006D006500010044004200540065007800740034003900010001000100
      0D000A0070007000440042005400650078007400350031002E00440061007400
      61004600690065006C0064000100520053004500430054000100010001000D00
      0A0070007000440042005400650078007400350031002E005500730065007200
      4E0061006D006500010044004200540065007800740035003100010001000100
      0D000A0070007000440042005400650078007400350032002E00440061007400
      61004600690065006C0064000100410053004500430054000100010001000D00
      0A0070007000440042005400650078007400350032002E005500730065007200
      4E0061006D006500010044004200540065007800740035003200010001000100
      0D000A0070007000440042005400650078007400350033002E00440061007400
      61004600690065006C0064000100450053004500430054000100010001000D00
      0A0070007000440042005400650078007400350033002E005500730065007200
      4E0061006D006500010044004200540065007800740035003300010001000100
      0D000A0070007000440042005400650078007400350036002E00440061007400
      61004600690065006C00640001005A0053004500430054000100010001000D00
      0A0070007000440042005400650078007400350036002E005500730065007200
      4E0061006D006500010044004200540065007800740035003600010001000100
      0D000A0070007000440042005400650078007400350037002E00440061007400
      61004600690065006C00640001004F00540054004C000100010001000D000A00
      70007000440042005400650078007400350037002E0055007300650072004E00
      61006D0065000100440042005400650078007400350037000100010001000D00
      0A0070007000440042005400650078007400350038002E004400610074006100
      4600690065006C006400010057004F0052004B00450052004300010001000100
      0D000A0070007000440042005400650078007400350038002E00550073006500
      72004E0061006D00650001004400420054006500780074003500380001000100
      01000D000A0070007000440042005400650078007400350039002E0044006100
      740061004600690065006C006400010057004F0052004B00450052004F000100
      010001000D000A0070007000440042005400650078007400350039002E005500
      7300650072004E0061006D006500010044004200540065007800740035003900
      0100010001000D000A0070007000440042005400650078007400360030002E00
      44006100740061004600690065006C006400010053004500430054004F000100
      010001000D000A0070007000440042005400650078007400360030002E005500
      7300650072004E0061006D006500010044004200540065007800740036003000
      0100010001000D000A00700070004C006100620065006C00330036002E005500
      7300650072004E0061006D00650001004C006100620065006C00310001000100
      01000D000A0073007200640069006600300031002E0055007300650072004E00
      61006D006500010073007200640069006600300031000100010001000D000A00
      73007200640069006600300032002E0055007300650072004E0061006D006500
      010073007200640069006600300032000100010001000D000A00700070004400
      42005400650078007400350035002E0044006100740061004600690065006C00
      6400010046004C00410047000100010001000D000A0070007000440042005400
      650078007400350035002E0055007300650072004E0061006D00650001004400
      42005400650078007400350035000100010001000D000A007000700052006500
      70006F007200740033002E004400650076006900630065005400790070006500
      0100530063007200650065006E000100010001000D000A00700070004C006100
      620065006C00370032002E0055007300650072004E0061006D00650001004C00
      6100620065006C00310031000100010001000D000A00700070004C0061006200
      65006C00370039002E0055007300650072004E0061006D00650001004C006100
      620065006C00310038000100010001000D000A00700070005300790073007400
      65006D005600610072006900610062006C00650033002E005500730065007200
      4E0061006D0065000100530079007300740065006D0056006100720069006100
      62006C00650031000100010001000D000A00700070004C006100620065006C00
      380030002E0055007300650072004E0061006D00650001004C00610062006500
      6C00310039000100010001000D000A0070007000530079007300740065006D00
      5600610072006900610062006C00650034002E0055007300650072004E006100
      6D0065000100530079007300740065006D005600610072006900610062006C00
      650032000100010001000D000A00700070004C006100620065006C0038003100
      2E0055007300650072004E0061006D00650001004C006100620065006C003200
      30000100010001000D000A00700070005300680061007000650034002E005500
      7300650072004E0061006D006500010053006800610070006500320001000100
      01000D000A00700070004C006100620065006C003100300034002E0055007300
      650072004E0061006D00650001004C006100620065006C003100330001000100
      01000D000A00700070004C006100620065006C003100300037002E0055007300
      650072004E0061006D00650001004C006100620065006C003200310001000100
      01000D000A00700070004C006100620065006C003100300038002E0055007300
      650072004E0061006D00650001004C006100620065006C003200330001000100
      01000D000A00700070004C006100620065006C003100300039002E0055007300
      650072004E0061006D00650001004C006100620065006C003200370001000100
      01000D000A00700070004C006100620065006C003100310030002E0055007300
      650072004E0061006D00650001004C006100620065006C003200380001000100
      01000D000A00700070004C0069006E006500320038002E005500730065007200
      4E0061006D00650001004C0069006E00650033000100010001000D000A007000
      70004C006100620065006C003100310035002E0055007300650072004E006100
      6D00650001004C006100620065006C00330033000100010001000D000A007900
      3000300031002E0055007300650072004E0061006D00650001004C0061006200
      65006C00340036000100010001000D000A00700070004C0069006E0065003300
      32002E0055007300650072004E0061006D00650001004C0069006E0065003800
      0100010001000D000A00700070004C006100620065006C003100310038002E00
      55007300650072004E0061006D00650001004C006100620065006C0034003700
      0100010001000D000A00700070004C0069006E006500330033002E0055007300
      650072004E0061006D00650001004C0069006E00650039000100010001000D00
      0A00700070004C006100620065006C003100310039002E005500730065007200
      4E0061006D00650001004C006100620065006C00340038000100010001000D00
      0A00700070004C0069006E006500330034002E0055007300650072004E006100
      6D00650001004C0069006E006500310030000100010001000D000A0070007000
      4C006100620065006C003100320030002E0055007300650072004E0061006D00
      650001004C006100620065006C00340039000100010001000D000A0070007000
      4C006100620065006C003100320031002E0055007300650072004E0061006D00
      650001004C006100620065006C00350030000100010001000D000A0070007000
      4C0069006E006500330036002E0055007300650072004E0061006D0065000100
      4C0069006E006500310032000100010001000D000A00700070004C0069006E00
      6500330037002E0055007300650072004E0061006D00650001004C0069006E00
      6500310033000100010001000D000A00700070004C0069006E00650033003800
      2E0055007300650072004E0061006D00650001004C0069006E00650031003400
      0100010001000D000A00700070004C0069006E006500330039002E0055007300
      650072004E0061006D00650001004C0069006E00650031003500010001000100
      0D000A00700070004C006100620065006C003100320032002E00550073006500
      72004E0061006D00650001004C006100620065006C0035003100010001000100
      0D000A00700070004C006100620065006C003100320033002E00550073006500
      72004E0061006D00650001004C006100620065006C0035003200010001000100
      0D000A00700070004C006100620065006C003100320034002E00550073006500
      72004E0061006D00650001004C006100620065006C0035003300010001000100
      0D000A00700070004C006100620065006C003100320036002E00550073006500
      72004E0061006D00650001004C006100620065006C0035003500010001000100
      0D000A00700070004C006100620065006C003100320037002E00550073006500
      72004E0061006D00650001004C006100620065006C0035003600010001000100
      0D000A00700070004C006100620065006C003100320038002E00550073006500
      72004E0061006D00650001004C006100620065006C0035003800010001000100
      0D000A00700070004C006100620065006C003100320039002E00550073006500
      72004E0061006D00650001004C006100620065006C0035003900010001000100
      0D000A00700070004C006100620065006C003100330030002E00550073006500
      72004E0061006D00650001004C006100620065006C0036003100010001000100
      0D000A00700070004C006100620065006C003100330031002E00550073006500
      72004E0061006D00650001004C006100620065006C0036003200010001000100
      0D000A00700070004C0069006E006500340030002E0055007300650072004E00
      61006D00650001004C0069006E006500310036000100010001000D000A007000
      70004C006100620065006C003100330032002E0055007300650072004E006100
      6D00650001004C006100620065006C00360034000100010001000D000A007000
      70004C006100620065006C003100330033002E0055007300650072004E006100
      6D00650001004C006100620065006C00360036000100010001000D000A007000
      70004C006100620065006C003100330034002E0055007300650072004E006100
      6D00650001004C006100620065006C00360037000100010001000D000A007000
      70004C0069006E006500340032002E0055007300650072004E0061006D006500
      01004C0069006E006500310039000100010001000D000A00700070004C006100
      620065006C003100330036002E0055007300650072004E0061006D0065000100
      740073007400300031000100010001000D000A00700070004C0069006E006500
      340034002E0055007300650072004E0061006D00650001004C0069006E006500
      320031000100010001000D000A00700070004C006100620065006C0031003300
      38002E0055007300650072004E0061006D00650001004C006100620065006C00
      3700300031000100010001000D000A00700070004C0069006E00650034003500
      2E0055007300650072004E0061006D00650001004C0069006E00650032003200
      0100010001000D000A00700070004C006100620065006C003100330039002E00
      55007300650072004E0061006D00650001004C006100620065006C0035003700
      0100010001000D000A00700070004C006100620065006C003100340030002E00
      55007300650072004E0061006D00650001004C006100620065006C0036003000
      0100010001000D000A00700070004C006100620065006C00370033002E005500
      7300650072004E0061006D00650001004C006100620065006C00370033000100
      010001000D000A00640074003000300031002E0055007300650072004E006100
      6D0065000100640074003000300031000100010001000D000A00700070004C00
      6100620065006C00370035002E0055007300650072004E0061006D0065000100
      4C006100620065006C00370035000100010001000D000A006400740030003000
      32002E0055007300650072004E0061006D006500010064007400300030003200
      0100010001000D000A00700070004C0069006E006500370034002E0055007300
      650072004E0061006D00650001004C0069006E00650037003400010001000100
      0D000A00700070004C0069006E006500370035002E0055007300650072004E00
      61006D00650001004C0069006E006500370035000100010001000D000A007000
      70004C006100620065006C00380038002E0055007300650072004E0061006D00
      650001004C006100620065006C00380038000100010001000D000A0070007000
      4C006100620065006C00380039002E0055007300650072004E0061006D006500
      01004C006100620065006C003500300032000100010001000D000A0070007000
      4C006100620065006C00390030002E0055007300650072004E0061006D006500
      01004C006100620065006C00390030000100010001000D000A00700070004C00
      69006E006500370036002E0055007300650072004E0061006D00650001004C00
      69006E006500370036000100010001000D000A00700070004C00610062006500
      6C00390031002E0055007300650072004E0061006D00650001004C0061006200
      65006C00390031000100010001000D000A00700070004C006100620065006C00
      390032002E0055007300650072004E0061006D00650001004C00610062006500
      6C003600300032000100010001000D000A00700070004C006100620065006C00
      390035002E0055007300650072004E0061006D00650001004C00610062006500
      6C00390035000100010001000D000A00700070004C006100620065006C003100
      300031002E0055007300650072004E0061006D00650001004C00610062006500
      6C003100300031000100010001000D000A00700070004C006100620065006C00
      320036002E0055007300650072004E0061006D00650001004C00610062006500
      6C0031000100010001000D000A006600740079003000300032002E0055007300
      650072004E0061006D0065000100660074007900300030003200010001000100
      0D000A0057006F0072006B00730068006F0070002E0055007300650072004E00
      61006D00650001004C006100620065006C0033000100010001000D000A007700
      6B0073003000300031002E0055007300650072004E0061006D00650001007700
      6B0073003000300031000100010001000D000A00700070004C0069006E006500
      35002E0055007300650072004E0061006D00650001004C0069006E0065003100
      0100010001000D000A00700070004C006100620065006C00320039002E005500
      7300650072004E0061006D00650001004C006100620065006C00320001000100
      01000D000A00700070004C006100620065006C00370034002E00550073006500
      72004E0061006D00650001004C006100620065006C0036003000330001000100
      01000D000A00700070004C0069006E00650036002E0055007300650072004E00
      61006D00650001004C0069006E00650032000100010001000D000A0070007000
      4C006100620065006C00380032002E0055007300650072004E0061006D006500
      01004C006100620065006C00380032000100010001000D000A00700070004C00
      6100620065006C003100300030002E0055007300650072004E0061006D006500
      01004C006100620065006C003100300030000100010001000D000A0070007000
      4C006100620065006C003100310033002E0055007300650072004E0061006D00
      650001004C006100620065006C003100310033000100010001000D000A007000
      70004C006100620065006C00330032002E0055007300650072004E0061006D00
      650001004C006100620065006C00330032000100010001000D000A0070007000
      440042005400650078007400330030002E004400610074006100460069006500
      6C00640001004C0049004E0045000100010001000D000A007000700044004200
      5400650078007400330030002E0055007300650072004E0061006D0065000100
      44004200540065007800740039000100010001000D000A007000700044004200
      5400650078007400330033002E0044006100740061004600690065006C006400
      0100430053004500430054000100010001000D000A0070007000440042005400
      650078007400330033002E0055007300650072004E0061006D00650001004400
      42005400650078007400310032000100010001000D000A007000700044004200
      5400650078007400330034002E0044006100740061004600690065006C006400
      0100530045004300540054000100010001000D000A0070007000440042005400
      650078007400330034002E0055007300650072004E0061006D00650001004400
      42005400650078007400310033000100010001000D000A007000700044004200
      5400650078007400330035002E0044006100740061004600690065006C006400
      0100530045004300540043000100010001000D000A0070007000440042005400
      650078007400330035002E0055007300650072004E0061006D00650001004400
      42005400650078007400310036000100010001000D000A007000700044004200
      5400650078007400330037002E0044006100740061004600690065006C006400
      01005300450043005400540031000100010001000D000A007000700044004200
      5400650078007400330037002E0055007300650072004E0061006D0065000100
      440042005400650078007400310035000100010001000D000A00790030003000
      32002E0044006100740061004600690065006C00640001004F00530045004300
      54000100010001000D000A0079003000300032002E0055007300650072004E00
      61006D0065000100440042005400650078007400310038000100010001000D00
      0A0070007000440042005400650078007400340030002E004400610074006100
      4600690065006C0064000100540054004C000100010001000D000A0070007000
      440042005400650078007400340030002E0055007300650072004E0061006D00
      65000100440042005400650078007400310039000100010001000D000A007000
      7000440042005400650078007400340031002E00440061007400610046006900
      65006C0064000100430053004500430054000100010001000D000A0070007000
      440042005400650078007400340031002E0055007300650072004E0061006D00
      65000100440042005400650078007400320030000100010001000D000A007000
      7000440042005400650078007400340032002E00440061007400610046006900
      65006C00640001004C0053004500430054000100010001000D000A0070007000
      440042005400650078007400340032002E0055007300650072004E0061006D00
      650001004400420054006500780074003200300031000100010001000D000A00
      70007000440042005400650078007400340033002E0044006100740061004600
      690065006C0064000100520053004500430054000100010001000D000A007000
      7000440042005400650078007400340033002E0055007300650072004E006100
      6D0065000100440042005400650078007400320032000100010001000D000A00
      70007000440042005400650078007400340034002E0044006100740061004600
      690065006C0064000100410053004500430054000100010001000D000A007000
      7000440042005400650078007400340034002E0055007300650072004E006100
      6D0065000100440042005400650078007400320033000100010001000D000A00
      70007000440042005400650078007400340035002E0044006100740061004600
      690065006C0064000100450053004500430054000100010001000D000A007000
      7000440042005400650078007400340035002E0055007300650072004E006100
      6D0065000100440042005400650078007400320034000100010001000D000A00
      70007000440042005400650078007400340037002E0044006100740061004600
      690065006C00640001005A0053004500430054000100010001000D000A007000
      7000440042005400650078007400340037002E0055007300650072004E006100
      6D0065000100440042005400650078007400320036000100010001000D000A00
      70007000440042005400650078007400340038002E0044006100740061004600
      690065006C00640001004F00540054004C000100010001000D000A0070007000
      440042005400650078007400340038002E0055007300650072004E0061006D00
      65000100440042005400650078007400320037000100010001000D000A006400
      640063007500300031002E0055007300650072004E0061006D00650001006400
      640063007500300031000100010001000D000A00700070004400420054006500
      7800740036002E0044006100740061004600690065006C006400010057004F00
      52004B004500520043000100010001000D000A00700070004400420054006500
      7800740036002E0055007300650072004E0061006D0065000100440042005400
      6500780074003200300033000100010001000D000A0070007000440042005400
      65007800740038002E0044006100740061004600690065006C00640001005700
      4F0052004B00450052004F000100010001000D000A0070007000440042005400
      65007800740038002E0055007300650072004E0061006D006500010044004200
      540065007800740038000100010001000D000A00700064006100790030003100
      2E0055007300650072004E0061006D0065000100700064006100790030003100
      0100010001000D000A006400690066006600300031002E005500730065007200
      4E0061006D00650001006400690066006600300031000100010001000D000A00
      6400690066006600300032002E0055007300650072004E0061006D0065000100
      6400690066006600300032000100010001000D000A00700070004C0061006200
      65006C00370036002E0055007300650072004E0061006D00650001004C006100
      620065006C00370036000100010001000D000A00700070004400420043006100
      6C006300340039002E0044006100740061004600690065006C00640001004F00
      540054004C000100010001000D000A007000700044004200430061006C006300
      340039002E0055007300650072004E0061006D00650001004400420043006100
      6C006300340039000100010001000D000A007000700044004200430061006C00
      6300350030002E0044006100740061004600690065006C006400010043005300
      4500430054000100010001000D000A007000700044004200430061006C006300
      350030002E0055007300650072004E0061006D00650001004400420043006100
      6C006300350030000100010001000D000A007000700044004200430061006C00
      6300350031002E0044006100740061004600690065006C006400010053004500
      4300540054000100010001000D000A007000700044004200430061006C006300
      350031002E0055007300650072004E0061006D00650001004400420043006100
      6C006300350031000100010001000D000A007000700044004200430061006C00
      6300350032002E0044006100740061004600690065006C006400010053004500
      43005400540031000100010001000D000A007000700044004200430061006C00
      6300350032002E0055007300650072004E0061006D0065000100440042004300
      61006C006300350032000100010001000D000A00700070004400420043006100
      6C006300350033002E0044006100740061004600690065006C00640001005300
      45004300540043000100010001000D000A007000700044004200430061006C00
      6300350033002E0055007300650072004E0061006D0065000100440042004300
      61006C0063003200300032000100010001000D000A0079003000300034002E00
      44006100740061004600690065006C00640001004F0053004500430054000100
      010001000D000A0079003000300034002E0055007300650072004E0061006D00
      6500010079003000300034000100010001000D000A0070007000440042004300
      61006C006300350035002E0044006100740061004600690065006C0064000100
      540054004C000100010001000D000A007000700044004200430061006C006300
      350035002E0055007300650072004E0061006D00650001004400420043006100
      6C006300350035000100010001000D000A007000700044004200430061006C00
      6300350036002E0044006100740061004600690065006C006400010043005300
      4500430054000100010001000D000A007000700044004200430061006C006300
      350036002E0055007300650072004E0061006D00650001004400420043006100
      6C006300350036000100010001000D000A007000700044004200430061006C00
      6300350037002E0044006100740061004600690065006C00640001004C005300
      4500430054000100010001000D000A007000700044004200430061006C006300
      350037002E0055007300650072004E0061006D00650001004400420043006100
      6C006300350037000100010001000D000A007000700044004200430061006C00
      6300350038002E0044006100740061004600690065006C00640001005A005300
      4500430054000100010001000D000A007000700044004200430061006C006300
      350038002E0055007300650072004E0061006D00650001004400420043006100
      6C006300350038000100010001000D000A007000700044004200430061006C00
      6300350039002E0044006100740061004600690065006C006400010041005300
      4500430054000100010001000D000A007000700044004200430061006C006300
      350039002E0055007300650072004E0061006D00650001004400420043006100
      6C006300350039000100010001000D000A007000700044004200430061006C00
      6300360030002E0044006100740061004600690065006C006400010052005300
      4500430054000100010001000D000A007000700044004200430061006C006300
      360030002E0055007300650072004E0061006D00650001004400420043006100
      6C006300360030000100010001000D000A007000700044004200430061006C00
      6300360031002E0044006100740061004600690065006C006400010045005300
      4500430054000100010001000D000A007000700044004200430061006C006300
      360031002E0055007300650072004E0061006D00650001004400420043006100
      6C006300360031000100010001000D000A004100440043005500300031002E00
      55007300650072004E0061006D00650001004100440043005500300031000100
      010001000D000A007000700044004200430061006C006300360035002E004400
      6100740061004600690065006C006400010057004F0052004B00450052004300
      0100010001000D000A007000700044004200430061006C006300360035002E00
      55007300650072004E0061006D006500010044004200430061006C0063003600
      35000100010001000D000A007000700044004200430061006C00630036003900
      2E0044006100740061004600690065006C006400010057004F0052004B004500
      52004F000100010001000D000A007000700044004200430061006C0063003600
      39002E0055007300650072004E0061006D006500010044004200430061006C00
      6300360039000100010001000D000A006400690066006600320031002E005500
      7300650072004E0061006D006500010064006900660066003200310001000100
      01000D000A006400690066006600320032002E0055007300650072004E006100
      6D00650001006400690066006600320032000100010001000D000A0070007000
      470072006F007500700032002E0042007200650061006B004E0061006D006500
      01005400530048004F0050000100010001000D000A0070007000470072006F00
      7500700032002E0055007300650072004E0061006D0065000100470072006F00
      7500700031000100010001000D000A00700070004C0069006E00650032003700
      2E0055007300650072004E0061006D00650001004C0069006E00650032003700
      0100010001000D000A00700070004C0069006E006500320039002E0055007300
      650072004E0061006D00650001004C0069006E00650032003900010001000100
      0D000A007000700044004200430061006C006300330036002E00440061007400
      61004600690065006C00640001004F00540054004C000100010001000D000A00
      7000700044004200430061006C006300330036002E0055007300650072004E00
      61006D006500010044004200430061006C006300330036000100010001000D00
      0A007000700044004200430061006C006300330037002E004400610074006100
      4600690065006C0064000100430053004500430054000100010001000D000A00
      7000700044004200430061006C006300330037002E0055007300650072004E00
      61006D006500010044004200430061006C006300330037000100010001000D00
      0A007000700044004200430061006C006300330038002E004400610074006100
      4600690065006C0064000100530045004300540054000100010001000D000A00
      7000700044004200430061006C006300330038002E0055007300650072004E00
      61006D006500010044004200430061006C006300330038000100010001000D00
      0A007000700044004200430061006C006300330039002E004400610074006100
      4600690065006C00640001005300450043005400540031000100010001000D00
      0A007000700044004200430061006C006300330039002E005500730065007200
      4E0061006D006500010044004200430061006C00630033003900010001000100
      0D000A007000700044004200430061006C006300340030002E00440061007400
      61004600690065006C0064000100530045004300540043000100010001000D00
      0A007000700044004200430061006C006300340030002E005500730065007200
      4E0061006D006500010044004200430061006C00630032003000310001000100
      01000D000A0079003000300033002E0044006100740061004600690065006C00
      640001004F0053004500430054000100010001000D000A007900300030003300
      2E0055007300650072004E0061006D0065000100790030003000330001000100
      01000D000A007000700044004200430061006C006300340032002E0044006100
      740061004600690065006C0064000100540054004C000100010001000D000A00
      7000700044004200430061006C006300340032002E0055007300650072004E00
      61006D006500010044004200430061006C006300340032000100010001000D00
      0A007000700044004200430061006C006300340033002E004400610074006100
      4600690065006C0064000100430053004500430054000100010001000D000A00
      7000700044004200430061006C006300340033002E0055007300650072004E00
      61006D006500010044004200430061006C006300340033000100010001000D00
      0A007000700044004200430061006C006300340034002E004400610074006100
      4600690065006C00640001004C0053004500430054000100010001000D000A00
      7000700044004200430061006C006300340034002E0055007300650072004E00
      61006D006500010044004200430061006C006300340034000100010001000D00
      0A007000700044004200430061006C006300340035002E004400610074006100
      4600690065006C00640001005A0053004500430054000100010001000D000A00
      7000700044004200430061006C006300340035002E0055007300650072004E00
      61006D006500010044004200430061006C006300340035000100010001000D00
      0A007000700044004200430061006C006300340036002E004400610074006100
      4600690065006C0064000100410053004500430054000100010001000D000A00
      7000700044004200430061006C006300340036002E0055007300650072004E00
      61006D006500010044004200430061006C006300340036000100010001000D00
      0A007000700044004200430061006C006300340037002E004400610074006100
      4600690065006C0064000100520053004500430054000100010001000D000A00
      7000700044004200430061006C006300340037002E0055007300650072004E00
      61006D006500010044004200430061006C006300340037000100010001000D00
      0A007000700044004200430061006C006300340038002E004400610074006100
      4600690065006C0064000100450053004500430054000100010001000D000A00
      7000700044004200430061006C006300340038002E0055007300650072004E00
      61006D006500010044004200430061006C006300340038000100010001000D00
      0A007300640063007500300031002E0055007300650072004E0061006D006500
      01007300640063007500300031000100010001000D000A00700070004C006100
      620065006C00370038002E0055007300650072004E0061006D00650001004C00
      6100620065006C00370038000100010001000D000A0070007000440042004300
      61006C006300360033002E0044006100740061004600690065006C0064000100
      57004F0052004B004500520043000100010001000D000A007000700044004200
      430061006C006300360033002E0055007300650072004E0061006D0065000100
      44004200430061006C006300360033000100010001000D000A00700070004400
      4200430061006C006300360036002E0044006100740061004600690065006C00
      6400010057004F0052004B00450052004F000100010001000D000A0070007000
      44004200430061006C006300360036002E0055007300650072004E0061006D00
      6500010044004200430061006C006300360036000100010001000D000A007000
      700044004200430061006C00630036002E004400610074006100460069006500
      6C00640001004C0049004E0045000100010001000D000A007000700044004200
      430061006C00630036002E0055007300650072004E0061006D00650001004400
      4200430061006C00630036000100010001000D000A0064006900660066003100
      31002E0055007300650072004E0061006D006500010064006900660066003100
      31000100010001000D000A006400690066006600310032002E00550073006500
      72004E0061006D00650001006400690066006600310032000100010001000D00
      0A00700070005200650070006F007200740031002E0044006500760069006300
      650054007900700065000100530063007200650065006E000100010001000D00
      0A00700070004C006100620065006C0031002E0055007300650072004E006100
      6D00650001004C006100620065006C00310031000100010001000D000A007000
      70004C006100620065006C0032002E0055007300650072004E0061006D006500
      01004C006100620065006C00310032000100010001000D000A00700070004C00
      6100620065006C0033002E0055007300650072004E0061006D00650001006C00
      69006E006500300031000100010001000D000A00700070004C00610062006500
      6C0034002E0055007300650072004E0061006D00650001004C00610062006500
      6C00310034000100010001000D000A00700070004C006100620065006C003500
      2E0055007300650072004E0061006D0065000100640061007400650030003100
      0100010001000D000A00700070004C006100620065006C0036002E0055007300
      650072004E0061006D00650001004C006100620065006C003100360001000100
      01000D000A00700070004C006100620065006C0037002E005500730065007200
      4E0061006D00650001006400610074006500300032000100010001000D000A00
      700070004C006100620065006C0038002E0055007300650072004E0061006D00
      650001004C006100620065006C00310038000100010001000D000A0070007000
      530079007300740065006D005600610072006900610062006C00650035002E00
      55007300650072004E0061006D0065000100530079007300740065006D005600
      610072006900610062006C00650031000100010001000D000A00700070004C00
      6100620065006C0039002E0055007300650072004E0061006D00650001004C00
      6100620065006C00310039000100010001000D000A0070007000530079007300
      740065006D005600610072006900610062006C00650036002E00550073006500
      72004E0061006D0065000100530079007300740065006D005600610072006900
      610062006C00650032000100010001000D000A00700070004C00610062006500
      6C00310030002E0055007300650072004E0061006D00650001004C0061006200
      65006C00320030000100010001000D000A00700070004C006100620065006C00
      3100300032002E0055007300650072004E0061006D00650001004C0061006200
      65006C00330038000100010001000D000A00700070004C006100620065006C00
      3100300033002E0055007300650072004E0061006D0065000100740073006800
      6F007000300031000100010001000D000A007000700053006800610070006500
      31002E0055007300650072004E0061006D006500010053006800610070006500
      32000100010001000D000A00700070004C006100620065006C00310030003500
      2E0055007300650072004E0061006D00650001004C006100620065006C003100
      33000100010001000D000A00700070004C006100620065006C00310030003600
      2E0055007300650072004E0061006D00650001004C006100620065006C003100
      35000100010001000D000A00700070004C006100620065006C00310031003100
      2E0055007300650072004E0061006D00650001004C006100620065006C003100
      37000100010001000D000A00700070004C0069006E006500330035002E005500
      7300650072004E0061006D00650001004C0069006E0065003100010001000100
      0D000A00700070004C0069006E006500340031002E0055007300650072004E00
      61006D00650001004C0069006E00650032000100010001000D000A0070007000
      4C0069006E006500350030002E0055007300650072004E0061006D0065000100
      4C0069006E00650034000100010001000D000A00700070004C00610062006500
      6C003100340031002E0055007300650072004E0061006D00650001004C006100
      620065006C00320032000100010001000D000A00700070004C00610062006500
      6C003100340032002E0055007300650072004E0061006D00650001004C006100
      620065006C00320035000100010001000D000A00700070004C00610062006500
      6C003100340033002E0055007300650072004E0061006D00650001004C006100
      620065006C00320036000100010001000D000A00700070004C0069006E006500
      350031002E0055007300650072004E0061006D00650001004C0069006E006500
      35000100010001000D000A00700070004C006100620065006C00310034003400
      2E0055007300650072004E0061006D00650001004C006100620065006C003200
      39000100010001000D000A00700070004C0069006E006500350032002E005500
      7300650072004E0061006D00650001004C0069006E0065003600010001000100
      0D000A00700070004C006100620065006C003100340038002E00550073006500
      72004E0061006D00650001004C006100620065006C0033003600010001000100
      0D000A00700070004C0069006E006500350036002E0055007300650072004E00
      61006D00650001004C0069006E006500310031000100010001000D000A007000
      70004C0069006E006500350037002E0055007300650072004E0061006D006500
      01004C0069006E006500310032000100010001000D000A00700070004C006100
      620065006C003100350034002E0055007300650072004E0061006D0065000100
      4C006100620065006C00350031000100010001000D000A00700070004C006100
      620065006C003100350035002E0055007300650072004E0061006D0065000100
      4C006100620065006C00350032000100010001000D000A00700070004C006100
      620065006C003100350036002E0055007300650072004E0061006D0065000100
      4C006100620065006C00350033000100010001000D000A00700070004C006100
      620065006C003100350037002E0055007300650072004E0061006D0065000100
      4C006100620065006C00350034000100010001000D000A00700070004C006100
      620065006C003100360038002E0055007300650072004E0061006D0065000100
      740073007400300031000100010001000D000A00700070004C0069006E006500
      360034002E0055007300650072004E0061006D00650001004C0069006E006500
      320030000100010001000D000A00700070004C0069006E006500360035002E00
      55007300650072004E0061006D00650001004C0069006E006500320031000100
      010001000D000A00700070004C006100620065006C003100360039002E005500
      7300650072004E0061006D00650001004C006100620065006C00370030000100
      010001000D000A00700070004C006100620065006C003100370030002E005500
      7300650072004E0061006D00650001004C006100620065006C00370030003100
      0100010001000D000A00700070004C006100620065006C003100370033002E00
      55007300650072004E0061006D00650001004C006100620065006C0036003900
      0100010001000D000A00700070004C0069006E006500340039002E0055007300
      650072004E0061006D00650001004C0069006E00650034003900010001000100
      0D000A00700070004C006100620065006C00370037002E005500730065007200
      4E0061006D00650001004C006100620065006C00370037000100010001000D00
      0A00700070004C0069006E006500350034002E0055007300650072004E006100
      6D00650001004C0069006E006500350034000100010001000D000A0070007000
      4C0069006E006500350035002E0055007300650072004E0061006D0065000100
      4C0069006E006500350035000100010001000D000A00700070004C0069006E00
      6500350038002E0055007300650072004E0061006D00650001004C0069006E00
      6500350038000100010001000D000A00700070004C0069006E00650035003900
      2E0055007300650072004E0061006D00650001004C0069006E00650035003900
      0100010001000D000A00700070004C0069006E006500360030002E0055007300
      650072004E0061006D00650001004C0069006E00650036003000010001000100
      0D000A00700070004C0069006E006500360031002E0055007300650072004E00
      61006D00650001004C0069006E006500360031000100010001000D000A007000
      70004C0069006E006500360032002E0055007300650072004E0061006D006500
      01004C0069006E006500360032000100010001000D000A00700070004C006900
      6E006500360033002E0055007300650072004E0061006D00650001004C006900
      6E006500360033000100010001000D000A00700070004C0069006E0065003600
      36002E0055007300650072004E0061006D00650001004C0069006E0065003600
      36000100010001000D000A007000700044004200540065007800740031002E00
      44006100740061004600690065006C00640001004C0049004E00450001000100
      01000D000A007000700044004200540065007800740031002E00550073006500
      72004E0061006D00650001004400420054006500780074003900010001000100
      0D000A007000700044004200540065007800740032002E004400610074006100
      4600690065006C0064000100440041005400450031000100010001000D000A00
      7000700044004200540065007800740032002E0055007300650072004E006100
      6D0065000100440042005400650078007400310030000100010001000D000A00
      7000700044004200540065007800740033002E00440061007400610046006900
      65006C006400010057004B004E004F000100010001000D000A00700070004400
      4200540065007800740033002E0055007300650072004E0061006D0065000100
      440042005400650078007400310031000100010001000D000A00700070004C00
      6100620065006C003100370034002E0055007300650072004E0061006D006500
      0100770064006100790031000100010001000D000A0070007000440042005400
      65007800740037002E0044006100740061004600690065006C00640001007400
      70006C0061006E0074000100010001000D000A00700070004400420054006500
      7800740037002E0055007300650072004E0061006D0065000100440042005400
      650078007400310034000100010001000D000A00700070004400420054006500
      78007400320038002E0044006100740061004600690065006C00640001005300
      4800460054000100010001000D000A0070007000440042005400650078007400
      320038002E0055007300650072004E0061006D00650001004400420054006500
      78007400310037000100010001000D000A007000700044004200540065007800
      7400350030002E0044006100740061004600690065006C00640001004C005300
      4500430054000100010001000D000A0070007000440042005400650078007400
      350030002E0055007300650072004E0061006D00650001004400420054006500
      780074003200300031000100010001000D000A00700070004400420054006500
      78007400350034002E0044006100740061004600690065006C00640001004600
      4C00410047000100010001000D000A0070007000440042005400650078007400
      350034002E0055007300650072004E0061006D00650001004400420054006500
      78007400320035000100010001000D000A00700070004C006100620065006C00
      3100370035002E0055007300650072004E0061006D006500010064006F006300
      75003000300031000100010001000D000A00700070004C006100620065006C00
      3100370036002E0055007300650072004E0061006D0065000100640064006300
      75003000300031000100010001000D000A00700070004C0069006E0065003600
      37002E0055007300650072004E0061006D00650001004C0069006E0065003200
      33000100010001000D000A00700070004C0069006E006500360038002E005500
      7300650072004E0061006D00650001004C0069006E0065003200340001000100
      01000D000A007000700044004200430061006C006300360038002E0044006100
      740061004600690065006C00640001004C005300450043005400010001000100
      0D000A007000700044004200430061006C006300360038002E00550073006500
      72004E0061006D006500010044004200430061006C0063003100300034000100
      010001000D000A00700070004C006100620065006C003100370037002E005500
      7300650072004E0061006D00650001004F004300550030003000320001000100
      01000D000A00700070004C006100620065006C003100370038002E0055007300
      650072004E0061006D0065000100440043005500300030003200010001000100
      0D000A00700070004C006100620065006C003100370039002E00550073006500
      72004E0061006D00650001004C006100620065006C0036003300010001000100
      0D000A00700070004C0069006E006500360039002E0055007300650072004E00
      61006D00650001004C0069006E006500320035000100010001000D000A007000
      70004C006100620065006C003100380030002E0055007300650072004E006100
      6D00650001004C006100620065006C00360035000100010001000D000A007000
      7000470072006F007500700034002E0042007200650061006B004E0061006D00
      650001004C0049004E0045000100010001000D000A0070007000470072006F00
      7500700034002E0055007300650072004E0061006D0065000100470072006F00
      7500700031000100010001000D000A0070007000530068006100700065003500
      2E0055007300650072004E0061006D0065000100530068006100700065003300
      0100010001000D000A00700070004C006100620065006C003100380032002E00
      55007300650072004E0061006D00650001004C006100620065006C0034003000
      0100010001000D000A00700070004C006100620065006C003100380033002E00
      55007300650072004E0061006D00650001004C006100620065006C0034003200
      0100010001000D000A00700070004C006100620065006C003100380034002E00
      55007300650072004E0061006D00650001004C006100620065006C0034003400
      0100010001000D000A00700070004C006100620065006C003100380035002E00
      55007300650072004E0061006D00650001005300300031000100010001000D00
      0A00700070004C006100620065006C003100380036002E005500730065007200
      4E0061006D00650001005300300032000100010001000D000A00700070004C00
      6100620065006C003100380037002E0055007300650072004E0061006D006500
      01007300300033000100010001000D000A007000700044004200430061006C00
      6300380030002E0044006100740061004600690065006C00640001004C005300
      4500430054000100010001000D000A007000700044004200430061006C006300
      380030002E0055007300650072004E0061006D00650001004400420043006100
      6C006300310030000100010001000D000A00700070004C0069006E0065003700
      30002E0055007300650072004E0061006D00650001004C0069006E0065003100
      37000100010001000D000A00700070004C0069006E006500370031002E005500
      7300650072004E0061006D00650001004C0069006E0065003100380001000100
      01000D000A00700070004C006100620065006C003100380038002E0055007300
      650072004E0061006D00650001006F0063007500300030003100010001000100
      0D000A00700070004C006100620065006C003100380039002E00550073006500
      72004E0061006D00650001006400630075003000300031000100010001000D00
      0A00700070004C0069006E006500350033002E0055007300650072004E006100
      6D00650001004C0069006E006500350033000100010001000D000A0070007000
      42004400450050006900700065006C0069006E00650032002E00550073006500
      72004E0061006D006500010042004400450050006900700065006C0069006E00
      650032000100010001000D000A0043006C00690065006E007400440061007400
      610053006500740034002E0043006F006D006D0061006E006400540065007800
      74000100730065006C0065006300740020002A002000660072006F006D002000
      7700650065006B00350032005F0074006D0070005F0031000100010001000D00
      0A0043006C00690065006E007400440061007400610053006500740034002E00
      500072006F00760069006400650072004E0061006D0065000100640073007000
      7300630068006500640075006C0065000100010001000D000A00530061007600
      65004400690061006C006F00670031002E00460069006C007400650072000100
      2A002E0078006C0073007C002A002E0078006C0073000100010001000D000A00
      730074004C006F00630061006C00650073005F0055006E00690063006F006400
      65000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0030005D002E005400
      690074006C0065002E00430061007000740069006F006E000100E5651F670100
      4400610074006500010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B0031005D002E00540069007400
      6C0065002E00430061007000740069006F006E00010031901F67010057006500
      65006B00010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0032005D002E005400690074006C006500
      2E00430061007000740069006F006E000100114F47507C0010982D8A01004800
      6F006C0069006400610079007C00440065006600010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      33005D002E005400690074006C0065002E00430061007000740069006F006E00
      01001F7522753057DE9E7C00E05E0100500072006F0064007500630074006900
      6F006E00200053006900740065007C00460074007900010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B0034005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001001F7522753057DE9E7C00E55D34580100500072006F00640075006300
      740069006F006E00200053006900740065007C0057007300010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B0035005D002E005400690074006C0065002E0043006100700074006900
      6F006E00010010982D8AC07B78650100440065006600610075006C0074002000
      530065006300740069006F006E00010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B0036005D002E00
      5400690074006C0065002E00430061007000740069006F006E0001001F752275
      C07B78657C0010982D8A7C00D0639B4F20002800DB6B2900010057006F007200
      6B002000530065006300740069006F006E007C004400650066007C0050007200
      6F007600690064006500640020002800470072006F0073007300290001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0037005D002E005400690074006C0065002E00430061007000
      740069006F006E0001001F752275C07B78657C0010982D8A7C005E971F752275
      27607C008B950367010057006F0072006B002000530065006300740069006F00
      6E007C004400650066007C004E006F006E002000500072006F00640075006300
      740069006F006E007C004D0065006500740069006E006700010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B0038005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001001F752275C07B78657C0010982D8A7C005E971F75227527607C00
      A5632390010057006F0072006B002000530065006300740069006F006E007C00
      4400650066007C004E006F006E002000500072006F0064007500630074006900
      6F006E007C004C0069006E006B00610067006500010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      39005D002E005400690074006C0065002E00430061007000740069006F006E00
      0100EE4F028AC07B78657C003D7E088A0100410064006A007500730074002000
      530065006300740069006F006E007C00540074006C00010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B00310030005D002E005400690074006C0065002E0043006100700074006900
      6F006E000100EE4F028AC07B78657C004E0031000100410064006A0075007300
      74002000530065006300740069006F006E007C004E003100010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B00310031005D002E005400690074006C0065002E004300610070007400
      69006F006E000100EE4F028AC07B78657C004E0032000100410064006A007500
      730074002000530065006300740069006F006E007C004E003200010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B00310032005D002E005400690074006C0065002E00430061007000
      740069006F006E000100EE4F028AC07B78657C004F0054000100410064006A00
      7500730074002000530065006300740069006F006E007C004F00540001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B00310033005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001002275CF9128004300550029000D64178087732500
      7C0010982D8A01004300550020004C006F007300730025007C00440065006600
      010001000D000A007700650065006B00350032002E0049006E00640065007800
      44006500660073005B0030005D002E004600690065006C006400730001006400
      61007400650031003B00770073000100010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0031003400
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      5700460020004400650070006C006F0079006D0065006E007400200026002000
      25007C004400650066002E002000570046000100010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      310035005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001005700460020004400650070006C006F0079006D0065006E0074002000
      2600200025007C00500072006F006A002E002000570046000100010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B00310036005D002E005400690074006C0065002E00430061007000
      740069006F006E0001005700460020004400650070006C006F0079006D006500
      6E00740020002600200025007C0025000100010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A005400660072006D0077007300630061006C0065006E006400610072000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0044006100740065004500640069007400310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0044006100
      74006500450064006900740032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00310031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00310032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A006C0069006E006500300031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00310034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00640061007400650030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00310036000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006400610074006500
      300032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003100380001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0070007000530079007300740065006D005600610072006900610062006C00
      650031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003100390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0070007000530079007300740065006D005600610072006900610062006C00
      650032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003200300001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0033003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00740073006800
      6F007000300031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310035000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00310037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00320031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0032003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00320037000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00320038000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00320035000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0033003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A0078003000300031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00340037000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00340038000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003400390001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00350030000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00350031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00350032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003500330001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00350034000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00350035000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00350036000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003500380001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00350039000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00360031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00360032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003600340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00360036000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00360037000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007400730074003000310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00370031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00350037000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00360030000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003600390001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00380033000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00380034000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00380035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003800360001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00380037000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00390033000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00390034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003900360001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00390037000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00390038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00310031003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A006600740079003000300031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00370030000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003200
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0039003900010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00310031003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A0073006A003000
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031003300350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0073006A00300033000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003100
      340035000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0073006A00300035000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C003100340037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A0073006A0030003000310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0031003400390001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0073006A00
      3000300033000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00310035003000
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A0073006A003000300035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00330030000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0033003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740039000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000440042005400650078007400310030000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      5400650078007400310031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007000700044004200540065007800
      7400310032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740031003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740031003600010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7000700044004200540065007800740031003500010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00780030003000
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004400420054006500780074003100390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004400420054006500780074003200300001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400320031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070007000440042005400
      650078007400320032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      320033000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0070007000440042005400650078007400320034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400320035000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000440042005400650078007400320036000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      5400650078007400320037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A006400640063007500300030003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      700044004200540065007800740035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070007000440042005400
      650078007400310034000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0064006400660030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      640064006600300032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      360031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006F00740074006C003000300032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006700
      72006F00730073003000300032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420043006100
      6C006300310038000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A007000700044004200430061006C0063003100
      39000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A007000700044004200430061006C0063003200300001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0078003000300034000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00740074006C0030003000320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A007000700044004200430061006C0063003200330001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      44004200430061006C006300320034000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070007000440042004300
      61006C006300320035000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A007000700044004200430061006C006300
      320036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A007000700044004200430061006C006300320037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A007000700044004200430061006C006300320038000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A004400
      430055003000300032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003600
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0036003500010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004D0065006D006F0031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00360038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200430061006C00630036003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200430061006C00630038000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006600
      64006600300031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00660064006600300032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007400
      6D00610072006B007300300031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C003100310034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004D0065006D006F00320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A007000700044004200430061006C0063003300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      4200430061006C00630034000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007000700044004200430061006C00
      630035000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00670072006F0073007300300030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00340030000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00340032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003400
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A005300300031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00530030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7300300033000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007800300030003300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00740074006C00
      3000300031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200430061006C00630039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A007000700044004200430061006C006300310030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      700044004200430061006C006300310031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      430061006C006300310032000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007000700044004200430061006C00
      6300310033000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200430061006C00630031003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A006F00740074006C00300030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00640063007500
      3000300031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200430061006C00630031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A007000700044004200430061006C006300320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00320032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00730030003400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6F003000300031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00620030003000310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0064003000
      300031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006E003100300030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A006E0032003000
      300031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006F003100300030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A006F0032003000
      300031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006E003000300031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006400300030003100
      300031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0077006300300030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00610030003000
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A0072003000300031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0065003000300031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00640063003000300031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A006C0030003000310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A007A003000300031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006F003000300032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006200
      3000300032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A006400300030003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A006E0031003000
      300032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006E003200300030003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A006F0031003000
      300032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006F003200300030003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A006E0030003000
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00640030003000310030003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00770063003000
      300032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006C003000300032000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007A00300030003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A0061003000300032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00720030003000320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0065003000300032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0064006300300030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6F003000300033000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00620030003000330001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0064003000
      300033000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006E003100300030003300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A006E0032003000
      300033000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006F003100300030003300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A006F0032003000
      300033000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006E003000300033000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006400300030003100
      300033000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0077006300300030003300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A006C0030003000
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A007A003000300033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0061003000300033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0072003000300033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A006500300030003300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      640063003000300033000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0073006400660030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      730064006600300032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0073006400660031003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      730064006600310032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0073006400660032003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      730064006600330031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0073006400660033003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      730064006600320032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006D006100720073006B00300030003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740036003400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7000700044004200540065007800740031003700010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      42005400650078007400320039000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420054006500
      78007400330031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003300
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A0078003000300035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070007000440042005400
      650078007400330038000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      340036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0070007000440042005400650078007400340039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400350031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000440042005400650078007400350032000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      5400650078007400350033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007000700044004200540065007800
      7400350036000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740035003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740035003800010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7000700044004200540065007800740035003900010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      42005400650078007400360030000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00330036000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007300720064006900660030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      73007200640069006600300032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420054006500
      78007400350035000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0037003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00370039000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000530079007300740065006D005600610072006900610062006C0065003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00380030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000530079007300740065006D005600610072006900610062006C0065003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00380031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C003100300034000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C003100300037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      3100300038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00310030003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310031003000010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00310031003500010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00790030003000
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031003100380001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0031003100390001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003100320030000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C003100320031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003100
      320032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003100320033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003100320034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C003100320036000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C003100320037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      3100320038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00310032003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310033003000010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00310033003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003100330032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C003100330033000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003300
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031003300360001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0031003300380001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003100330039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C003100340030000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003700
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00640074003000300031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00370035000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0064007400300030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00380038000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00380039000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003900
      30000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0039003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00390032000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00390035000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003100
      300031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003200360001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A006600740079003000300032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A0057006F0072006B0073006800
      6F0070000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0077006B00730030003000310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C00320039000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00370034000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00380032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003100300030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C003100310033000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00330032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      330030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0070007000440042005400650078007400330033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400330034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000440042005400650078007400330035000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      5400650078007400330037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007900300030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7000700044004200540065007800740034003000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      42005400650078007400340031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420054006500
      78007400340032000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003400
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004400420054006500780074003400340001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004400420054006500780074003400350001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400340037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070007000440042005400
      650078007400340038000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0064006400630075003000310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004400420054006500780074003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      4200540065007800740038000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007000640061007900300031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A006400690066006600300031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0064006900660066003000
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0037003600010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7000700044004200430061006C00630034003900010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      4200430061006C006300350030000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420043006100
      6C006300350031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A007000700044004200430061006C0063003500
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A007000700044004200430061006C0063003500330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0079003000300034000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A007000700044004200430061006C006300
      350035000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A007000700044004200430061006C006300350036000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A007000700044004200430061006C006300350037000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      700044004200430061006C006300350038000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      430061006C006300350039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007000700044004200430061006C00
      6300360030000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200430061006C00630036003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A004100440043005500300031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      430061006C006300360035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007000700044004200430061006C00
      6300360039000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A006400690066006600320031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006400
      690066006600320032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A007000700044004200430061006C006300
      330036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A007000700044004200430061006C006300330037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A007000700044004200430061006C006300330038000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      700044004200430061006C006300330039000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      430061006C006300340030000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007900300030003300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7000700044004200430061006C00630034003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      4200430061006C006300340033000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420043006100
      6C006300340034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A007000700044004200430061006C0063003400
      35000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A007000700044004200430061006C0063003400360001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A007000700044004200430061006C0063003400370001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      44004200430061006C006300340038000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0073006400630075003000
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0037003800010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7000700044004200430061006C00630036003300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      4200430061006C006300360036000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004400420043006100
      6C00630036000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A006400690066006600310031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006400
      690066006600310032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C0033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0035000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C0036000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C0037000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003800010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      70007000530079007300740065006D005600610072006900610062006C006500
      35000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0039000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000530079007300740065006D005600610072006900610062006C0065003600
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C003100300032000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C003100300033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      3100300035000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00310030003600
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310031003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00310034003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003100340032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C003100340033000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003400
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031003400380001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0031003500340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003100350035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C003100350036000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003100
      350037000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003100360038000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003100360039000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C003100370030000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C003100370033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      370037000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0070007000440042005400650078007400310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004400420054006500780074003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004400
      4200540065007800740033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      3100370034000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400320038000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      7000440042005400650078007400350030000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A007000700044004200
      5400650078007400350034000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      3100370035000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00310037003600
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200430061006C00630036003800010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C00310037003700010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003100370038000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C003100370039000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003800
      30000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031003800320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C0031003800330001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003100380034000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C003100380035000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003100
      380036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003100380037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A007000700044004200430061006C006300380030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C003100380038000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C003100380039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00}
  end
end
