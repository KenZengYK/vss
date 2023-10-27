object frmsalesforecast_pdn: Tfrmsalesforecast_pdn
  Left = 0
  Top = 0
  Caption = 'Sales forecast information based on PDN'
  ClientHeight = 394
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Location: '
    end
    object ComboBox1: TComboBox
      Left = 80
      Top = 16
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 0
      Text = 'CN'
      Items.Strings = (
        'CN'
        'BD'
        'CN/BD')
    end
    object GroupBox1: TGroupBox
      Left = 200
      Top = 0
      Width = 393
      Height = 49
      Caption = 'Week range'
      TabOrder = 1
      object Label2: TLabel
        Left = 14
        Top = 19
        Width = 28
        Height = 13
        Caption = 'From:'
      end
      object Label3: TLabel
        Left = 216
        Top = 19
        Width = 18
        Height = 13
        Caption = 'To:'
      end
      object SpinEdit1: TSpinEdit
        Left = 48
        Top = 16
        Width = 73
        Height = 22
        MaxValue = 2030
        MinValue = 2019
        TabOrder = 0
        Value = 0
      end
      object SpinEdit2: TSpinEdit
        Left = 127
        Top = 16
        Width = 58
        Height = 22
        MaxValue = 53
        MinValue = 1
        TabOrder = 1
        Value = 0
      end
      object SpinEdit3: TSpinEdit
        Left = 240
        Top = 16
        Width = 73
        Height = 22
        MaxValue = 2030
        MinValue = 2019
        TabOrder = 2
        Value = 2019
      end
      object SpinEdit4: TSpinEdit
        Left = 319
        Top = 16
        Width = 58
        Height = 22
        MaxValue = 53
        MinValue = 1
        TabOrder = 3
        Value = 1
      end
    end
    object BitBtn1: TBitBtn
      Left = 624
      Top = 16
      Width = 65
      Height = 25
      Caption = 'OK'
      DoubleBuffered = True
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
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 57
    Width = 784
    Height = 296
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 47
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0'
          Kind = skSum
          Column = cxGrid1DBTableView1Column4
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Column5
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Week#'
        DataBinding.FieldName = 'EX_YW'
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Customer'#13#10'Code'
        DataBinding.FieldName = 'CUST'
        HeaderAlignmentHorz = taCenter
        Width = 53
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Customer Name'
        DataBinding.FieldName = 'C_NAME'
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Qty'#13#10'(PCS)'
        DataBinding.FieldName = 'SQTY'
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Sales Amount'#13#10'(HKD)'
        DataBinding.FieldName = 'TTL_PX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Location'
        DataBinding.FieldName = 'FTY'
        HeaderAlignmentHorz = taCenter
        Width = 53
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 353
    Width = 784
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 288
    ExplicitTop = 240
    ExplicitWidth = 185
    object BitBtn5: TBitBtn
      Left = 24
      Top = 6
      Width = 105
      Height = 25
      Caption = 'Export2XLS'
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
      TabOrder = 0
      OnClick = BitBtn5Click
    end
    object BitBtn2: TBitBtn
      Left = 128
      Top = 6
      Width = 81
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 416
    Top = 104
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select distinct ex_yw,cust,c_name,sum(sqty) as sqty,sum(ttl_px) ' +
      'as ttl_px,fty'#13#10'from tbl_pdn_salesforecast '#13#10'group by ex_yw,cust,' +
      'c_name,fty '#13#10'order by ex_yw,cust,fty'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 160
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 96
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 240
    Top = 96
  end
end
