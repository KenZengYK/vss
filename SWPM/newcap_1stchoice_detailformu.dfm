object frmnewcap_1stchoice_dtl: Tfrmnewcap_1stchoice_dtl
  Left = 0
  Top = 0
  Caption = 'Capacity Planning - Balancing Option - Detail Worksheet'
  ClientHeight = 524
  ClientWidth = 907
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 907
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 44
      Height = 13
      Caption = 'Factory: '
    end
    object Label2: TLabel
      Left = 64
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 141
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Year: '
    end
    object Label4: TLabel
      Left = 176
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 253
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Month: '
    end
    object Label6: TLabel
      Left = 296
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 357
      Top = 8
      Width = 34
      Height = 13
      Caption = 'Week: '
    end
    object Label8: TLabel
      Left = 397
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 605
      Top = 6
      Width = 42
      Height = 16
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 792
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 483
    Width = 907
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 79
      Height = 25
      Caption = 'AddNew'
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
      Left = 94
      Top = 8
      Width = 79
      Height = 25
      Caption = 'Delete'
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
      Left = 172
      Top = 8
      Width = 79
      Height = 25
      Caption = 'Save'
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
      Left = 250
      Top = 8
      Width = 199
      Height = 25
      Caption = 'Past performance (for reference)'
      DoubleBuffered = True
      Glyph.Data = {
        EE000000424DEE0000000000000076000000280000000F0000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8880888000000008888080003B0333008880803333B03333788080333B033333
        7880803333B03333788080333B0333337880803333B03333788080333B033333
        7880803333B033337880803000000003788080033B3BBBB07880803333333BBB
        0880880033333B0088808880000000088880}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 448
      Top = 8
      Width = 79
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 4
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 35
    Width = 907
    Height = 448
    ActivePage = TabSheet2
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Line dependent (Labors / Line eff% / SAH)'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 899
        Height = 417
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
        FooterRowCount = 1
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
            EditButtons = <>
            FieldName = 'TSHOP'
            Footers = <>
            Title.Caption = 'Ws'
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'PLINE'
            Footer.FieldName = 'PLINE'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Assembly Line'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'FLAG6'
            Footers = <>
            PickList.Strings = (
              'B'
              'K'
              'U')
            Title.Caption = 'Prod Code'
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'MCUST'
            Footers = <>
            Title.Caption = 'Customer(s)'
            Width = 106
          end
          item
            EditButtons = <>
            FieldName = 'F_WF'
            Footers = <>
            Title.Caption = 'Labors|F'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'A_WF'
            Footers = <>
            Title.Caption = 'Labors|A'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'E_WF'
            Footers = <>
            Title.Caption = 'Labors|E'
            Width = 45
          end
          item
            Color = 15856062
            EditButtons = <>
            FieldName = 'TTL_WF'
            Footer.FieldName = 'TTL_WF'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Labors|Ttl'
            Width = 45
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'EFF'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Line Eff%'
            Width = 54
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'SAH'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'REMARKS'
            Footers = <>
            Title.Caption = 'Remarks'
            Width = 433
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Factory dependent (Working time / CU%)'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 40
        Top = 16
        Width = 513
        Height = 97
        Caption = 'Working time (Hrs)'
        TabOrder = 0
        object Label11: TLabel
          Left = 24
          Top = 32
          Width = 40
          Height = 13
          Caption = 'Normal: '
        end
        object Label12: TLabel
          Left = 171
          Top = 32
          Width = 21
          Height = 13
          Caption = 'OT: '
        end
        object Label13: TLabel
          Left = 366
          Top = 32
          Width = 31
          Height = 13
          Caption = 'Total: '
        end
        object Label14: TLabel
          Left = 24
          Top = 66
          Width = 80
          Height = 13
          Caption = 'Working day(s): '
        end
        object cEdit1: TcxDBCurrencyEdit
          Left = 72
          Top = 32
          DataBinding.DataField = 'NHR'
          DataBinding.DataSource = DataSource2
          Properties.DisplayFormat = '0.00'
          TabOrder = 0
          Width = 81
        end
        object cEdit2: TcxDBCurrencyEdit
          Left = 192
          Top = 32
          DataBinding.DataField = 'OHR'
          DataBinding.DataSource = DataSource2
          Properties.DisplayFormat = '0.00'
          TabOrder = 1
          Width = 81
        end
        object cEdit3: TcxDBCurrencyEdit
          Left = 404
          Top = 32
          DataBinding.DataField = 'TTL'
          DataBinding.DataSource = DataSource2
          Properties.DisplayFormat = '0.00'
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 81
        end
        object cEdit4: TcxDBCurrencyEdit
          Left = 105
          Top = 65
          DataBinding.DataField = 'WDAY'
          DataBinding.DataSource = DataSource2
          Properties.DisplayFormat = '#0'
          TabOrder = 3
          Width = 81
        end
      end
      object GroupBox2: TGroupBox
        Left = 40
        Top = 136
        Width = 153
        Height = 57
        Caption = 'CU%'
        TabOrder = 1
        object cEdit5: TcxDBCurrencyEdit
          Left = 32
          Top = 24
          DataBinding.DataField = 'CU'
          DataBinding.DataSource = DataSource2
          Properties.DisplayFormat = '0.00'
          TabOrder = 0
          Width = 81
        end
      end
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_ftyelements_wk_dtl'
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'YR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'M1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'WK'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LINES'
        DataType = ftInteger
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'F_WF'
        DataType = ftInteger
      end
      item
        Name = 'A_WF'
        DataType = ftInteger
      end
      item
        Name = 'E_WF'
        DataType = ftInteger
      end
      item
        Name = 'TTL_WF'
        DataType = ftInteger
      end
      item
        Name = 'EFF'
        DataType = ftFloat
      end
      item
        Name = 'SAH'
        DataType = ftFloat
      end
      item
        Name = 'TSHOP'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PLINE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'MCUST'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'REMARKS'
        DataType = ftWideString
        Size = 250
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;tshop;pline;dseq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 456
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 488
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 520
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 552
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_ftyelements_wk_dtl1'
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'YR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'M1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'WK'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NHR'
        DataType = ftFloat
      end
      item
        Name = 'OHR'
        DataType = ftFloat
      end
      item
        Name = 'TTL'
        DataType = ftFloat
      end
      item
        Name = 'WDAY'
        DataType = ftInteger
      end
      item
        Name = 'CU'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query4AfterOpen
    AfterPost = Query4AfterPost
    Left = 456
    Top = 48
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 488
    Top = 48
  end
end
