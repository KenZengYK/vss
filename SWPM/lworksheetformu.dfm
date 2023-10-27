object frmlwsheet: Tfrmlwsheet
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'Line Daily Total Section Output & Consolidated Lost -- Worksheet'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Factory'
    end
    object Label2: TLabel
      Left = 184
      Top = 16
      Width = 49
      Height = 13
      Caption = 'Workshop'
    end
    object Label3: TLabel
      Left = 400
      Top = 16
      Width = 20
      Height = 13
      Caption = 'Line'
    end
    object SpeedButton1: TSpeedButton
      Left = 552
      Top = 16
      Width = 81
      Height = 22
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 16
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'SL'
        'KB')
    end
    object ComboBox2: TComboBox
      Left = 240
      Top = 16
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
    end
    object ComboBox3: TComboBox
      Left = 424
      Top = 16
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 412
    Width = 688
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 81
      Height = 25
      Caption = 'AddNew'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Delete'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
    end
    object BitBtn3: TBitBtn
      Left = 176
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Save'
      TabOrder = 2
      OnClick = BitBtn3Click
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
    object BitBtn4: TBitBtn
      Left = 256
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Print'
      TabOrder = 3
      OnClick = BitBtn4Click
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
    end
    object BitBtn5: TBitBtn
      Left = 336
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Exit'
      TabOrder = 4
      Kind = bkClose
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 688
    Height = 363
    Align = alClient
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
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
        FieldName = 'DATE1'
        Footers = <>
        Title.Caption = 'Date'
      end
      item
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        Title.Caption = 'Project'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        Title.Caption = 'Work Order'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'ARTNO'
        Footers = <>
        Title.Caption = 'PH Style'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        Title.Caption = 'Cust Style'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        Title.Caption = 'Color Code'
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'MDEF'
        Footers = <>
        Title.Caption = 'Machine Qty|Default'
      end
      item
        EditButtons = <>
        FieldName = 'MPRE'
        Footers = <>
        Title.Caption = 'Machine Qty|Present'
      end
      item
        EditButtons = <>
        FieldName = 'WDEF'
        Footers = <>
        Title.Caption = 'Worker Qty|Default'
      end
      item
        EditButtons = <>
        FieldName = 'WPRE'
        Footers = <>
        Title.Caption = 'Worker Qty|Present'
      end
      item
        EditButtons = <>
        FieldName = 'SECTT'
        Footers = <>
        Title.Caption = 'Work Section Unit|Normal'
      end
      item
        EditButtons = <>
        FieldName = 'SECTT1'
        Footers = <>
        Title.Caption = 'Work Section Unit|OT'
      end
      item
        EditButtons = <>
        FieldName = 'SECTC'
        Footers = <>
        Title.Caption = 'Work Section Unit|E-OT'
      end
      item
        EditButtons = <>
        FieldName = 'QTYT'
        Footers = <>
        Title.Caption = ' Daily Total Section Output|Normal+OT'
      end
      item
        EditButtons = <>
        FieldName = 'QTYC'
        Footers = <>
        Title.Caption = ' Daily Total Section Output|E-OT'
      end
      item
        EditButtons = <>
        FieldName = 'QTYTT'
        Footers = <>
        Title.Caption = ' Daily Total Section Output|Total'
      end
      item
        EditButtons = <>
        FieldName = 'TMU'
        Footers = <>
        Title.Caption = 'GSD TMU (WAve)'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'JXJS'
        Footers = <>
        Title.Caption = 'Each Section O/P'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'JPRE'
        Footers = <>
        Title.Caption = 'Present Section O/P'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'LHJS'
        Footers = <>
        Title.Caption = 'Behind Section O/P'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'QYJS'
        Footers = <>
        Title.Caption = 'Advanced Section O/P'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'EOTJS'
        Footers = <>
        Title.Caption = 'Chase  Back E-OT Section O/P'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'A01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1A'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'B01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1B'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'C01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1C'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'D01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1D'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'E01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1E'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'F01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1F'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'G01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1G'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'H01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1H'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'I01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1I'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'J01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1J'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'K01'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|1|1K'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'A02'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|2|2A'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'B02'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|2|2B'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'C02'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|2|2C'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'D02'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|2|2D'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'E02'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|2|2E'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'F02'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|2|2F'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'A03'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|3|3A'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'A04'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|4|4A'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'B04'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|4|4B'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'C04'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|4|4C'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'D04'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|4|4D'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'E04'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|4|4E'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'F04'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|4|4F'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'G04'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|4|4G'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'H04'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|4|4H'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'A05'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|5|5A'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'B05'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|5|5B'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'TX'
        Footers = <>
        Title.Caption = 'Consolidated Lost Elements'#65288'working hrs)|Total Lost|Total Hour'
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'TY'
        Footers = <>
        Title.Caption = 
          'Consolidated Lost Elements'#65288'working hrs)|Total Lost|Total Section' +
          ' O/P'
        Width = 41
      end>
  end
  object Query1: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select * from tbllinewk'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 8
    Top = 216
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 40
    Top = 216
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 72
    Top = 216
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 104
    Top = 216
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 216
  end
end
