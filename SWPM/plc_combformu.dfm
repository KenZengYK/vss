object frmplc_comb: Tfrmplc_comb
  Left = 192
  Top = 114
  Caption = #27161#28310
  ClientHeight = 517
  ClientWidth = 782
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 782
    Height = 476
    ActivePage = TabSheet2
    Align = alClient
    Style = tsButtons
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #27599#27573#31680#26178
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 774
        Height = 445
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
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
            FieldName = 'GRP'
            Footers = <>
            Title.Caption = 'Factory'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'LR1'
            Footers = <>
            Title.Caption = '1st'
          end
          item
            EditButtons = <>
            FieldName = 'LR2'
            Footers = <>
            Title.Caption = '2nd'
          end
          item
            EditButtons = <>
            FieldName = 'LR3'
            Footers = <>
            Title.Caption = '3rd'
          end
          item
            EditButtons = <>
            FieldName = 'LR4'
            Footers = <>
            Title.Caption = '4th'
          end
          item
            EditButtons = <>
            FieldName = 'LR5'
            Footers = <>
            Title.Caption = '5th'
          end
          item
            EditButtons = <>
            FieldName = 'LR6'
            Footers = <>
            Title.Caption = '6th'
          end
          item
            EditButtons = <>
            FieldName = 'LR7'
            Footers = <>
            Title.Caption = '7th'
          end
          item
            EditButtons = <>
            FieldName = 'LR8'
            Footers = <>
            Title.Caption = '8th'
          end
          item
            EditButtons = <>
            FieldName = 'LR9'
            Footers = <>
            Title.Caption = '9th'
          end
          item
            EditButtons = <>
            FieldName = 'LR10'
            Footers = <>
            Title.Caption = '10th'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #27599#27573#25289#25928#29575'%'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 774
        Height = 445
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
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
            FieldName = 'GRP'
            Footers = <>
            Title.Caption = 'Prdt Code'
            Width = 61
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LE1'
            Footers = <>
            Title.Caption = '1st'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LE2'
            Footers = <>
            Title.Caption = '2nd'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LE3'
            Footers = <>
            Title.Caption = '3rd'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LE4'
            Footers = <>
            Title.Caption = '4th'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LE5'
            Footers = <>
            Title.Caption = '5th'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LE6'
            Footers = <>
            Title.Caption = '6th'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LE7'
            Footers = <>
            Title.Caption = '7th'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LE8'
            Footers = <>
            Title.Caption = '8th'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LE9'
            Footers = <>
            Title.Caption = '9th'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LE10'
            Footers = <>
            Title.Caption = '10th'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 476
    Width = 782
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
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
      Top = 8
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
    object BitBtn3: TBitBtn
      Left = 160
      Top = 8
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
      Top = 8
      Width = 73
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 3
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_plc_01'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'GRP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LR1'
        DataType = ftInteger
      end
      item
        Name = 'LR2'
        DataType = ftInteger
      end
      item
        Name = 'LR3'
        DataType = ftInteger
      end
      item
        Name = 'LR4'
        DataType = ftInteger
      end
      item
        Name = 'LR5'
        DataType = ftInteger
      end
      item
        Name = 'LR6'
        DataType = ftInteger
      end
      item
        Name = 'LR7'
        DataType = ftInteger
      end
      item
        Name = 'LR8'
        DataType = ftInteger
      end
      item
        Name = 'STD'
        DataType = ftBoolean
      end
      item
        Name = 'LR9'
        DataType = ftInteger
      end
      item
        Name = 'LR10'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 224
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_plc_02'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query2AfterPost
    OnNewRecord = Query2NewRecord
    Left = 256
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 288
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 320
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 352
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 384
  end
end
